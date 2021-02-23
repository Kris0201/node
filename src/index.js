require("dotenv").config();

const express = require("express");
const session = require("express-session");
const MysqlStore = require("express-mysql-session")(session);
const cors = require("cors");
const axios = require("axios");
const nodemailer = require("nodemailer");

// const cheerio = require('cheerio');
const jwt = require("jsonwebtoken");
const moment = require("moment-timezone");
const multer = require("multer");
const upload = require(__dirname + "/modules/upload-imgs");
const db = require(__dirname + "/modules/db_connect2");
const sessionStore = new MysqlStore({}, db);
const app = express();
// app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(session({
    name: 'login_mid',
    secret: 'sdkjghoif39097894508tyighdsgkgiso',
    saveUninitialized: false,
    resave: false,
    store: sessionStore,
    cookie: {
        maxAge: 180000000
    }
}));

const corsOptions = {
    credentials: true,
    origin: function (origin, cb) {
        console.log('origin:', origin);
        cb(null, true);
    },
}
app.use(cors(corsOptions));

app.use((req, res, next) => {
    res.locals.baseUrl = req.baseUrl;
    res.locals.url = req.url;
    res.locals.sess = req.session;
    next();
});
app.get('/', (req, res) => {
    res.render('../views/dcake/plain')

})
app.use(function (req, res, next) {
    req.session._garbage = Date();
    req.session.touch();
    next();
});
// --------------------------------------------會員備份-----------------------------------------------------
//寄 gmail 函式
async function main(email,password) {

  let testAccount = await nodemailer.createTestAccount();
  let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 587,
    secure: false, // true for 465, false for other ports
    auth: {
      user: 'dcaketopic@gmail.com',
      pass:'x04yjo4204el',
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
      // app.locals.account = rows[0].account
      // app.locals.password = rows[0].password
      mid = rows[0].mid
      const token = jwt.sign({mid}, process.env.JWT_KEY);
      res.json({
          success: true,
          body: rows[0],
          token,
         account :res.locals.account,
          password :res.locals.password,
      })
  }   
  else {
      const [account] = await db.query("SELECT * FROM member WHERE account=?" ,[req.body.account])
      if(account.length===0){
          res.json({
              code:0,
              error : "帳號錯誤或不存在",
              success: false,
              body: req.body
          })
          return
      }
    
      else{
          res.json({
              code:1,
              error : "密碼錯誤",
              success: false,
              body: req.body
          })
          return
      }

  }
})

app.post('/loginverify', async (req, res)=>{

  if(!req.session.user)
  {
      console.log('loginverify false');
      res.json({ 
          login: false,
      })
  }
  console.log('loginverify not end');
  const token = jwt.verify(req.body.mid, process.env.JWT_KEY);

  const [rows] = await db.query("SELECT * FROM member WHERE mid=?",[token.mid])
  if(rows.length===1)
  {
      console.log('loginverify success');
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
    return
  } 
  else {
      if(req.body.password.length < 6){
          res.json({
              code: 3,
              error: '密碼不足六位數',
              register: false,
              body: req.body,
            })
            return
      }else{
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
              return  
             } 
            else {
              let { username, account, password, email } = req.body
              let data = { username, account, password, email }
              const [rows] = await db.query('INSERT INTO `member`set ?', [data])
              if (rows.affectedRows === 1) {
                res.json({
                  register: true,
                })
              } else {
                res.json({
                  register: false,
                  body: req.body,
                })
              }
            }
      }
  
  
  }
  // res.json({data})
})

app.put('/edit', upload.none() , async(req,res) => {
  console.log(req.body.birthday)
  console.log(moment.utc(req.body.birthday).local().format('YYYY-MM-DD'))

  const {username, tel, email, address, birthday} = req.body;
  const data = {username, tel, email, address, birthday:moment.utc(req.body.birthday).local().format('YYYY-MM-DD')};
  const token = jwt.verify(req.body.token, process.env.JWT_KEY);
  console.log(token.mid)
  const [rows] = await db.query( "UPDATE `member` SET ? WHERE mid = ?",[data,token.mid])

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
      // res.locals.password=req.body.newpassword
      // delete req.session.user;
      const [rows2] = await db.query("SELECT * FROM member WHERE mid=?",[token.mid])
      req.session.user=rows2[0]
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
app.post('/getorderproduct',async(req,res)=>{
  const token = jwt.verify(req.body.mid, process.env.JWT_KEY);

  const [rows] = await db.query("SELECT * FROM `orders1` WHERE mid =?",[token.mid])
  if(rows.length){ 
      res.json(
      rows,
    )
  }
    else{ 
      res.json({
      fav: "none",
      body: rows,
    })
  }
})
app.get('/getfavproduct',async(req,res)=>{
  const [rows] = await db.query("SELECT * FROM `fav-product` ")
  if(rows.length){ 
      res.json(
      rows,
    )
  }
    else{ 
      res.json({
      fav: "none",
      body: rows,
    })
  }
})
app.post('/addfavproduct',async(req,res)=>{
  const [rows] = await db.query("SELECT * FROM `product_list` WHERE p_sid = ?",[req.body.p_sid])
  if(rows.length===1){
      const [result] = await db.query('INSERT INTO `fav-product` set ?',[{...rows[0]}])
      if (result.affectedRows === 1) {
          res.json({
            fav: '收藏成功',
            body: req.body,
          })
        } else {
          res.json({
            fav: false,
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
console.log(req.body.p_sid)
console.log(req.body)
  if (rows.affectedRows === 1) {
      res.json({
          code:1,
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
app.get('/getfavactive',async(req,res)=>{
  const [rows] = await db.query("SELECT * FROM `fav-product` ")
  if(rows.length){ 
      res.json(
      rows,
    )
  }
    else{ 
      res.json({
      fav: "none",
      body: rows,
    })
  }
})
app.post('/addfavactive',async(req,res)=>{
  const [rows] = await db.query("SELECT * FROM `product_list` WHERE p_sid = ?",[req.body.p_sid])
  if(rows.length===1){
      const [result] = await db.query('INSERT INTO `fav-product` set ?',[{...rows[0]}])
      if (result.affectedRows === 1) {
          res.json({
            fav: '收藏成功',
            body: req.body,
          })
        } else {
          res.json({
            fav: false,
            body: req.body,
          })
        }
  }
  else{
      res.json({fav:false})
  }
})
app.delete('/deletefavactive',async(req,res)=>{
  const [rows] = await db.query("DELETE FROM `fav-product` WHERE p_sid = ?",[req.body.p_sid])
console.log(req.body.p_sid)
console.log(req.body)
  if (rows.affectedRows === 1) {
      res.json({
          code:1,
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
app.post('/member-order',async(req,res)=>{
  // const token = jwt.verify(req.body.token, process.env.JWT_KEY);
console.log("sid : "+req.body.sid)
const [rows] = await db.query("SELECT * FROM `order_items1` JOIN `orders1` ON `orders1`.`sid` =? JOIN `product_list` ON `product_list`.`p_sid` = `order_items1`.`p_sid` WHERE `order_items1`.`order_sid` = ?", [req.body.sid,req.body.sid]);
  if(rows.length){ 
    res.json(
    rows
  )
}
  else{ 
    res.json({
    orders: "none",
    body: rows,
  })
}
})
app.get('/member-order2',async(req,res)=>{
  // const token = jwt.verify(req.body.token, process.env.JWT_KEY);
console.log("sid : "+req.body.sid)
const [rows2] = await db.query("SELECT * FROM `orders1` WHERE `sid` =? ", [req.body.sid]);
  if(rows2.length){ 
    res.json(
    rows2
  )
}
  else{ 
    res.json({
    orders: "none",
    body: rows,
  })
}
})
// ------------------------------------------------購物車--------------------------------------------------------
app.post('/AddToCart1', async(req, res)=>{
    // const [rows] = await db.query("SELECT * FROM `products` WHERE sid=?", [ req.body.productId]);
    // res.json(rows[0] || 'no')
    const token = jwt.verify(req.body.token, process.env.JWT_KEY);

    let {p_sid, quantity} = req.body;
    let data = {p_sid, quantity};
    data.mid = token.mid;
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

    if(req.session.user.mid){
        const [rows] = await db.query("SELECT * FROM `cart1_items` JOIN `product_list` ON `product_list`.`p_sid` = `cart1_items`.`p_sid` WHERE `cart1_items`.`mid` = ?", [req.session.user.mid]);
    res.json(rows)}
    
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

// 直接在後端做加總處理，不要在前端做
// 1.清空cartItems
// 2.移到order_items1
// 3.建立orders1
app.post('/Cart1Content2', upload.none(), async (req, res)=>{
    const inputsAlot = {...req.body};
    console.log('收到' , inputsAlot);
    const [cart] = await db.query("SELECT * FROM `cart1_items` JOIN `product_list` ON `product_list`.`p_sid` = `cart1_items`.`p_sid` WHERE `cart1_items`.`mid` = ?", [req.session.user.mid])
    let CartTotal = 0
    cart.forEach((item) => {
        CartTotal += item.p_price*item.quantity
    });
    
    inputsAlot.mid = req.session.user.mid;
    inputsAlot.order_date = new Date();
    inputsAlot.amount = CartTotal;
    const [result1] = await db.query("INSERT INTO `orders1` SET ?", [inputsAlot]); 
    console.log('前端來的 ' + inputsAlot)
    console.log('這筆交易單號 ' + result1.insertId)
    req.session.lastInsertId = result1.insertId
    console.log('把交易單號傳給session ' + req.session.lastInsertId)


    
    
    cart.forEach((item,index) => {
        let order_items1 = {}
        order_items1.order_sid = result1.insertId
        order_items1.p_sid = item.p_sid
        order_items1.quantity = item.quantity
        db.query("INSERT INTO `order_items1` SET ?", [order_items1])

        
        // order_items1.order_sid = result1.insertId
        // order_items1.items += {p_sid:item.p_sid, quantity:item.quantity } 
        
        
    });
    res.json(result1.insertId)
    
    // const[result2] = await db.query("INSERT INTO `order_items1`"); 
    

})

app.get('/cart1Thanks',async(req,res)=>{
    // console.log('this is from cart1Thanks ' + req.session.lastInsertId)
    // console.log('this is mid ' + req.session.user.mid)
    const fm = 'YYYY-MM-DD';
    const [orders1] = await db.query("SELECT * FROM `orders1` JOIN `order_items1` ON `orders`.`sid` = `order_items1`.`order_sid` WHERE `orders1`.`mid` = ? AND `sid` = ?", [req.session.user.mid, req.session.lastInsertId])

    const orders2 = {...orders1[0]}
    orders2.designated_date = moment(orders2.designated_date).tz('Asia/Taipei').format(fm)
    console.log(orders2)
    // orders2.designated_date = orders2.designated_date.format(fm)
    res.json(orders2)

    // res.json(orders2)
}) 




//---------Kris 商品區--------------------
//step1：商品列表：一進來的畫面(已和下面程式整合)
// app.get('/mainproduct', async(req, res)=>{
//     const [rows]=await db.query("SELECT * FROM `product_list`");
//     res.json(rows);
// })

//step2：單純處理分類
app.post('/mainproductcate', async (req, res) => {
    console.log("測試", req.body)
    if (req.body.productCate == 1) {
        const [rows] = await db.query("SELECT * FROM `product_list`");
        res.json(rows)
    } else {
        const [rows] = await db.query("SELECT * FROM `product_list` WHERE `p_cate` =?", [req.body.productCate]);
        res.json(rows);
    }

})


//step3：分類+分頁
app.get('/mainproductcate2', async (req, res) => {
    const perPage = 9;
    let productCate = parseInt(req.query.productCate) || 1;
    let sql = (productCate == 1) ? `SELECT COUNT(1) num FROM product_list` : `SELECT COUNT(1) num FROM product_list WHERE p_cate =${productCate}`

    const [t_rows] = await db.query(sql)

    const totalRows = t_rows[0].num; //totalRows=50
    console.log('hi', totalRows);
    const totalPages = Math.ceil(totalRows / perPage); //50/9=5, 5+1=6 未分類前總共有6頁

    let page = parseInt(req.query.page) || 1; //現在第幾頁，沒有的時候就得到1
    
    
    let sql2 = (productCate == 1) ? `SELECT * FROM product_list LIMIT ${(page - 1) * perPage}, ${perPage}` : `SELECT * FROM product_list WHERE p_cate =${productCate} LIMIT ${(page - 1) * perPage}, ${perPage}`

    const [rows] = await db.query(sql2);
    // if (productCate == 1) {
    //     //查詢詳細頁資料
    //     const [rows_tmp] = await db.query("SELECT * FROM `product_list` LIMIT ?, ?", [(page - 1) * perPage, perPage]);
    //     rows = rows_tmp;
    //     // newRows=[rows]
    //     //rows：每頁所呈現的9筆資料
    //     //LIMIT ? ?：LIMIT(索引值, 拿幾筆)
    // } else {
    //      const [rows_tmp] = await db.query("SELECT * FROM `product_list` WHERE `p_cate` =? LIMIT ?, ?", [productCate, (page - 1) * perPage, perPage]);
    //      rows = rows_tmp;
    // }


    if (totalRows > 0) {
        if (page < 1)
            return res.redirect('/product_list/list');
        //若走到此行，則不會再進行此行以下的指令

        if (page > totalPages)
            return res.redirect(`/product_list/list?page=${totalPages}`);

    }
    const result = {
        perPage,
        totalRows,
        totalPages,
        page,
        rows,
    }

    res.json(result)

})

app.post("/mainproductcate", async (req, res) => {
  console.log("測試", req.body);
  if (req.body.productCate == 1) {
    const [rows] = await db.query("SELECT * FROM `product_list`");
    res.json(rows);
  } else {
    const [
      rows,
    ] = await db.query("SELECT * FROM `product_list` WHERE `p_cate` =?", [
      req.body.productCate,
    ]);
    res.json(rows);
  }
});


//step3：分類+分頁
// app.post('/mainproductcate', async(req, res)=>{
//     // const perPage = 9; 
//     // const [t_rows] = await db.query("SELECT COUNT(1) num FROM `product_list` "); //此行在MySQL中執行會得到50(筆)結果
//     // const perPage = 9;
//     // const [t_rows] = await db.query("SELECT COUNT(1) num FROM `product_list` ");

//     // const totalRows = t_rows[0].num;
//     // console.log('hi',totalRows);
//     // const totalPages = Math.ceil(totalRows / perPage);

//     // let page = parseInt(req.query.page) || 1; //沒有的時候就得到1

//     // //限定page的合理範圍
//     // let rows = [];
//     // if (totalRows > 0) {
//     //     if (page < 1)
//     //         return res.redirect('/product_list/list');
//     //     //若走到此行，則不會再進行此行以下的指令

//     //     if (page > totalPages)
//     //         return res.redirect(`/product_list/list?page=${totalPages}`);

//     //     [rows] = await db.query("SELECT * FROM `product_list` LIMIT ?, ?", [(page - 1) * perPage, perPage]); //LIMIT ? ?：資料的索引值/上限值


//     // return {
//     //     perPage,
//     //     totalRows,
//     //     totalPages,
//     //     page,
//     //     rows,
//     // }

//     // }
//     console.log("測試",req.body)
//     if(req.body.productCate==1) {


// //per page 9

// //totalrows 50

// //total page = 5

// //limit from ? to ?

//         const [rows]=await db.query("SELECT * FROM `product_list` LIMIT ?, ?",[ req.body.page - 1, 9]);
//         res.json(rows);
//     }else{

//         //(page-1) *9 起始值

//         const [rows]=await db.query("SELECT * FROM `product_list` WHERE `p_cate` =? LIMIT ?, ?",[req.body.productCate, req.body.page - 1, 9]);
//         res.json(rows);
//     }
// })

//商品詳細頁
app.post('/mainproductdetail', upload.none(), async (req, res) => {
    console.log("測試", req.body)
    const [rows] = await db.query("SELECT * FROM `product_list` WHERE p_sid=?", [req.body.productSid]);
    res.json(rows);
})
app.post("/mainproductdetail", upload.none(), async (req, res) => {
  console.log("測試", req.body);
  const [rows] = await db.query("SELECT * FROM `product_list` WHERE p_sid=?", [
    req.body.productSid,
  ]);
  res.json(rows);
});

//分頁

//---------↑  Kris  商品區--------------------

//---------Finn Campaign--------------------
app.post("/campaignProductInfo", upload.none(), async (req, res) => {
  console.log("商品詳細資料", req.body);
  const [rows] = await db.query(
    "SELECT * FROM `campaign_prodduct` WHERE sid=?",
    [req.body.campaignProductSid]
  );
  res.json(rows);
});

//---------------------------------------------------------------教室租借--------------------

app.use('/studioIntro1', async (req, res) => {
    const [rows] = await db.query("SELECT * FROM `studioorder`");
    res.json(rows)
})

app.post('/studiorent', async (req, res) => {
    const classroom = req.body.textInput;
    console.log('classroom', classroom);
    const [rows] = await db.query("SELECT * FROM `orders3` WHERE `designated_date`=?", [classroom]);
    console.log('rows', [rows]);
    res.json(rows);
})
app.post("/search", upload.none(), async (req, res) => {
  console.log("傳進來的搜尋資料", req.body);
  const [
    rows,
  ] = await db.query("SELECT * FROM `campaign_prodduct` WHERE title LIKE ?  ", [
    "%" + req.body.searchCampaign + "%",
  ]);
  res.json(rows);
});

app.use("/campaignlist", async (req, res) => {
  const [rows] = await db.query(
    "SELECT * FROM `campaign_prodduct` WHERE hot=1"
  );
  res.json(rows);
});

//---------------------------------------------------------------教室租借--------------------

app.use("/studioIntro1", async (req, res) => {
  const [rows] = await db.query("SELECT * FROM `studioorder`");
  res.json(rows);
});

app.post("/studiorent", async (req, res) => {
  const classroom = req.body.textInput;
  console.log("classroom", classroom);
  const [
    rows,
  ] = await db.query("SELECT * FROM `orders3` WHERE `designated_date`=?", [
    classroom,
  ]);
  console.log("rows", [rows]);
  res.json(rows);
});

//所有路由請放在404之前

// const [result] = await db.query("UPDATE `address_book` SET ? WHERE sid=?", [data, req.params.sid]);
// // affectedRows, changedRows
// // 有沒有修改成功要看changedRows， 可以再network preview看到
// res.json({
//     success: result.changedRows===1
// });







//所有路由請放在404之前
app.use((req, res) => {
    res.type('text/plain');
    res.status(404).send('找不到頁面')
})

const port = process.env.PORT || 4000;
app.listen(port, () => {
    console.log(`port: ${port}`, new Date());
})





//所有路由請放在404之前
// app.use((req, res) => {
//   res.type("text/plain");
//   res.status(404).send("找不到頁面");
// });

// const port = process.env.PORT || 4000;
// app.listen(port, () => {
//   console.log(`port: ${port}`, new Date());
// });

//分頁
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


//     return {
//         perPage,
//         totalRows,
//         totalPages,
//         page,
//         rows,
//     }
// }
