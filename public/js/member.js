// --------------------------------------------會員備份-----------------------------------------------------
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
app.get('/member-order')