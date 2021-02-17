require('dotenv').config();

const express = require('express');
const session = require('express-session');
const MysqlStore = require('express-mysql-session')(session);
const cors = require('cors');
const axios = require('axios');
// const cheerio = require('cheerio');
const jwt = require('jsonwebtoken');

const moment = require('moment-timezone');
const multer = require('multer');
const upload = require(__dirname + '/modules/upload-imgs')
const db = require(__dirname + '/modules/db_connect2')
const sessionStore = new MysqlStore({}, db)

const app = express();

app.set('view engine', 'ejs');


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
    }
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
// app.use('/dcake', cors(corsOptions),require(__dirname + '/routes/dcake'))
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
                error : "帳號錯誤或不存在",
                success: false,
                body: req.body
            })
        }
        const [password] = await db.query("SELECT * FROM member WHERE password=?" ,[req.body.password])
        if(password.length===0){
            res.json({
                error : "密碼錯誤",
                success: false,
                body: req.body
            })
        }

    }
})

app.post('/loginverify', async (req, res)=>{
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


app.put('/edit', upload.none() , async(req,res) => {
    const {username, tel, email, address, birthday} = req.body;
    const data = {username, tel, email, address, birthday};

    const [rows] = await db.query( "UPDATE `member` SET ? WHERE 1",[data])
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



app.post('/logout', (req, res)=>{
    // req.session.destroy();
    delete req.session.user;
  res.json({
        logout : true,
    });
})

app.use((req, res)=>{
    res.type('text/plain');
    res.status(404).send('找不到頁面')
})

const port = process.env.PORT || 4000;
app.listen(port, ()=>{
    console.log(`port: ${port}`, new Date());
})