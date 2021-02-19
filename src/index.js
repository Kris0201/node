require('dotenv').config();

const express = require('express');
const session = require('express-session');
const MysqlStore = require('express-mysql-session')(session);
const cors = require('cors');
const axios = require('axios');
const nodemailer = require("nodemailer");

// const cheerio = require('cheerio');
const jwt = require('jsonwebtoken');
const moment = require('moment-timezone');
const multer = require('multer');
const upload = require(__dirname + '/modules/upload-imgs')
const db = require(__dirname + '/modules/db_connect2')
const sessionStore = new MysqlStore({}, db)
const app = express();
// app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(express.urlencoded({extended:false}));
app.use(express.json());
app.use(session({
    name:'login_mid',
    secret: 'sdkjghoif39097894508tyighdsgkgiso',
    saveUninitialized: false,
    resave: false,
    store: sessionStore,
    cookie: {
        maxAge: 1800000
    }
}));

const corsOptions = {
    credentials: true,
    origin: function(origin, cb){
        console.log('origin:', origin);
        cb(null, true);
    },
}
app.use(cors(corsOptions));

app.use((req, res, next)=>{
    res.locals.baseUrl = req.baseUrl;
    res.locals.url = req.url;
    res.locals.sess = req.session;
    next();
});
app.get('/', (req, res)=>{
    res.render('../views/dcake/plain')

})
app.use(function(req, res, next){
    req.session._garbage = Date();
    req.session.touch();
    next();
});
// --------------------------------------------會員-----------------------------------------------------
//寄 gmail 函式
async function main(email,password) {

    let testAccount = await nodemailer.createTestAccount();
    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: 'drunkencake.topic@gmail.com',
        pass:'drunkencake',
      },
    });
    let info = await transporter.sendMail({
        from: '"Drunken Cake" <Drunkencake.topic@google.com>', // sender address
        to: `${email}`, // list of receivers
        subject: "Drunken Cake 忘記密碼", // Subject line
        text: "forget password?", // plain text body
        html: `您的新密碼為 : ${password} , 請至官網修改密碼`, // html body
      });
  
    console.log("Message sent: %s", info.messageId);
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
  }
  
//產生亂數密碼
function generatepass(plength){
    const keylist="abcdefghijklmnopqrstuvwxyz123456789"
    let temp=''
    for (i=0;i<plength;i++)
    temp+=keylist.charAt(Math.floor(Math.random()*keylist.length))
    return temp
    }

app.post('/forget',upload.none(),async(req,res)=>{
    const password =generatepass(6)
    const [rows] = await db.query( "UPDATE `member` SET `password`=? WHERE email = ?",[password,req.body.email])
    if(rows.changedRows===1){
     main(req.body.email,password).catch(console.error);
     res.json({
        "password":password,
         body: req.body,
         update: true,
     })
     return
    }
    else{
     res.json({
         code:0,
         body: req.body,
         update: "電子郵件錯誤或未註冊",
     })
    }
})
app.post('/login', cors(corsOptions),async(req,res)=>{
    const [rows] = await db.query("SELECT * FROM member WHERE account=? AND password=?",[req.body.account, req.body.password])
    if(rows.length===1)
    {
        req.session.user = rows[0];
        mid = rows[0].mid
        const token = jwt.sign({mid}, process.env.JWT_KEY);
        res.json({
            success: true,
            body: rows[0],
            token,
        })
    }   else {
        const [account] = await db.query("SELECT * FROM member WHERE account=?" ,[req.body.account])
        if(account.length===0){
            res.json({
                code:0,
                error : "帳號錯誤或不存在",
                success: false,
                body: req.body
            })
        }
        const [password] = await db.query("SELECT * FROM member WHERE password=?" ,[req.body.password])
        if(password.length===0){
            res.json({
                code:1,
                error : "密碼錯誤",
                success: false,
                body: req.body
            })
        }

    }
})

app.get('/loginverify', async (req, res)=>{
    if(req.session.user.account===undefined)
    {
        res.json({
            login: false,
        })
    }
    const [rows] = await db.query("SELECT * FROM member WHERE account=? AND password=?",[req.session.user.account, req.session.user.password])
    if(rows.length===1)
    {
        res.json({
            login: true,
            body: rows[0],
        })
    }
    
})
app.post('/register', upload.none(), async (req, res) => {
    const [result] = await db.query(
      'SELECT `account` FROM `member` WHERE account=?',
      req.body.account
    )
  
    if (result.length === 1) {
      res.json({
        code: 1,
        error: '帳號重複',
        register: false,
        body: req.body,
      })
    } else {
        if(req.body.password.length < 6){
            res.json({
                code: 3,
                error: '密碼不足六位數',
                register: false,
                body: req.body,
              })
        }
    
      const [rows2] = await db.query(
        'SELECT `email` FROM `member` WHERE email=?',
        req.body.email
      )
      if (rows2.length === 1) {
        res.json({
          code: 2,
          error: '電子郵件重複',
          register: false,
          body: req.body,
        })
      } else {
        let { username, account, password, email } = req.body
        let data = { username, account, password, email }
        const [rows] = await db.query('INSERT INTO `member`set ?', [data])
        if (rows.affectedRows === 1) {
          res.json({
            register: '註冊成功',
          })
        } else {
          res.json({
            register: false,
            body: req.body,
          })
        }
      }
    }
    // res.json({data})
  })
  
app.put('/edit', upload.none() , async(req,res) => {
    const {username, tel, email, address, birthday} = req.body;
    const data = {username, tel, email, address, birthday};
    const token = jwt.verify(req.body.token, process.env.JWT_KEY);
    console.log(token.mid)
    const [rows] = await db.query( "UPDATE `member` SET ? WHERE mid = ?",[data,token.mid])
    // res.json({
    //     success: rows.changedRows===1
    // });
    if(rows.changedRows===1){
        res.json({
            body: req.body,
            success: true,
        })
    } else {
        res.json({
             error : "更新失敗",
             success: false,
             body: req.body
         })
    }
});
app.put('/editpassword', async(req,res) => {
    const token = jwt.verify(req.body.token, process.env.JWT_KEY);

   const [result] = await db.query("SELECT `password` FROM `member` WHERE mid=?",[token.mid])
    if(result[0].password===req.body.password){
        const [rows] = await db.query( "UPDATE `member` SET `password`=? WHERE mid = ?",[req.body.newpassword,token.mid])
       if(rows.changedRows===1){
        res.json({
            body: req.body,
            update: true,
        })
       }
       else{
        res.json({
            body: req.body,
            update: "error",
        })
       }
    } else {
        res.json({
             error : "密碼錯誤",
             update: false,
             body: req.body
         })
    }
});
app.post('/logout', (req, res)=>{
    // req.session.destroy();
    delete req.session.user;
  res.json({
        logout : true,
    });
})
app.post('/addfavproduct',async(req,res)=>{
    const [rows] = await db.query("SELECT * FROM `product_list` WHERE p_sid = ?",[req.body.p_sid])
    if(rows.length===1){
        const [result] = await db.query('INSERT INTO `fav-product` set ?',[{...rows[0]}])
        if (result.affectedRows === 1) {
            res.json({
              register: '收藏成功',
              body: req.body,
            })
          } else {
            res.json({
              register: false,
              body: req.body,
            })
          }
    }
    else{
        res.json({fav:false})
    }
})
app.delete('/deletefavproduct',async(req,res)=>{
    const [rows] = await db.query("DELETE FROM `fav-product` WHERE p_sid = ?",[req.body.p_sid])
 
    if (rows.affectedRows === 1) {
        res.json({
          delete: '刪除成功',
          body: req.body,
        })
      } else {
        res.json({
            delete: false,
          body: req.body,
        })
      }
})
// ------------------------------------------------購物車--------------------------------------------------------
app.post('/AddToCart1', async(req, res)=>{
    // const [rows] = await db.query("SELECT * FROM `products` WHERE sid=?", [ req.body.productId]);
    // res.json(rows[0] || 'no')

    let {p_sid, quantity} = req.body;
    let data = {p_sid, quantity}
    let [check] = await db.query("SELECT * FROM `cart1_items` WHERE p_sid=?", [p_sid])
    const index = check.findIndex((value) => value.p_sid===data.p_sid)
    if (index !== -1) {
        data.quantity += check[0].quantity
        const [result] = await db.query("UPDATE `cart1_items` SET ? WHERE p_sid=?", [data, p_sid]);
        res.json(result || 'no')
    } else{
        const [result] = await db.query("INSERT INTO `cart1_items` SET ?", [data]);
        res.json(result || 'no')
    }  
})

app.get('/cart1items', async(req, res)=>{
    console.log(req.session.user.mid)
    const [rows] = await db.query("SELECT * FROM `cart1_items` JOIN `products` ON `products`.`p_sid` = `cart1_items`.`p_sid` WHERE `cart1_items`.`mid` = ?", [req.session.user.mid]);
    res.json(rows || 'no')
})

app.delete('/cart1items', async(req, res)=>{
    const [result] = await db.query("DELETE FROM `cart1_items` WHERE p_sid=?", [ req.body.p_sid ]);
    res.json({
        success: result.affectedRows===1
    });
})

app.post('/Cart1Content1IncreaseQty', async(req, res)=>{
    let {p_sid, quantity} = req.body;
    let data = {p_sid, quantity}
    let [check] = await db.query("SELECT * FROM `cart1_items` WHERE p_sid=?", [p_sid])
    const index = check.findIndex((value) => value.p_sid===p_sid)
    if (index !== -1) {
        data.quantity += check[0].quantity
        const [result] = await db.query("UPDATE `cart1_items` SET ? WHERE p_sid=?", [data, p_sid]);
        res.json(result || 'no')
    }
})

app.post('/Cart1Content1DecreaseQty', async(req, res)=>{
    let {p_sid, quantity} = req.body;
    let data = {p_sid, quantity}
    let [check] = await db.query("SELECT * FROM `cart1_items` WHERE p_sid=?", [p_sid])
    const index = check.findIndex((value) => value.p_sid===p_sid)
    if (index !== -1) {
        data.quantity -= check[0].quantity
        const [result] = await db.query("UPDATE `cart1_items` SET ? WHERE p_sid=?", [data, p_sid]);
        res.json(result || 'no')
    }
})


app.post('/Cart1Content2', upload.none(), async (req, res)=>{
    const {name, email, mobile, birthday, address} = req.body;
    const data = {name, email, mobile, birthday, address};

    const [result] = await db.query("UPDATE `address_book` SET ? WHERE sid=?", [data, req.params.sid]);
    // affectedRows, changedRows
    // 有沒有修改成功要看changedRows， 可以再network preview看到
    res.json({
        success: result.changedRows===1
    });
})




//---------Kris 商品區--------------------
app.get('/mainproduct', async(req, res)=>{
    const [rows]=await db.query("SELECT * FROM `product_list`");
    res.json(rows);
})

//---------↑  Kris  商品區--------------------


//所有路由請放在404之前
    app.use('/studioIntro1', async(req, res)=>{
        const [rows] = await db.query("SELECT * FROM `studioorder`");
        res.json(rows)})
    
app.post('/Cart1Content2',  async (req, res)=>{
    const {form1} = req.body;
    const data = {form1};
    console.log(req.body)

    // const [result] = await db.query("UPDATE `address_book` SET ? WHERE sid=?", [data, req.params.sid]);
    // // affectedRows, changedRows
    // // 有沒有修改成功要看changedRows， 可以再network preview看到
    // res.json({
    //     success: result.changedRows===1
    // });
})

//---------教室租借--------------------


app.use('/studioIntro1', async(req, res)=>{
    const [rows] = await db.query("SELECT * FROM `studioorder`");
      res.json(rows)})


//所有路由請放在404之前
app.use((req, res)=>{
    res.type('text/plain');
    res.status(404).send('找不到頁面')
})

const port = process.env.PORT || 4000;
app.listen(port, ()=>{
    console.log(`port: ${port}`, new Date());
})



// const listHandler = async (req) => {
//     const perPage = 9; 
//     const [t_rows] = await db.query("SELECT COUNT(1) num FROM `product_list`");

//     const totalRows = t_rows[0].num;
//     const totalPages = Math.ceil(totalRows / perPage);

//     let page = parseInt(req.query.page) || 1; //沒有的時候就得到1

//     //限定page的合理範圍
//     let rows = [];
//     if (totalRows > 0) {
//         if (page < 1)
//             return res.redirect('/product_list/list');
//         //若走到此行，則不會再進行此行以下的指令

//         if (page > totalPages)
//             return res.redirect(`/product_list/list?page=${totalPages}`);


//         [rows] = await db.query("SELECT * FROM `product_list` LIMIT ?, ?", [(page - 1) * perPage, perPage]); //LIMIT ? ?：資料的索引值/上限值

//         // rows.forEach(item => {
//         //     item.birthday = moment(item.birthday).format('YYYY-MM-DD'); 
//         //     //將list.ejs中的生日格式做轉換
//         // })
//     }
//     return {
//         perPage,
//         totalRows,
//         totalPages,
//         page,
//         rows,
//     }
// }


// ------------------------------------------------教室租借--------------------------------------------------------
app.use('/studioIntro1', async(req, res)=>{
    const [rows] = await db.query("SELECT * FROM `studioorder`");
    res.json(rows)
})
