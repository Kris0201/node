require('dotenv').config();

const express = require('express');
const session = require('express-session');
const MysqlStore = require('express-mysql-session')(session);
const cors = require('cors');
// const axios = require('axios');
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
    if(rows.length===1){
        req.session.user = rows[0];
        res.json({
            success: true,
            body: rows[0],
            
        })
    } else {
        res.json({
            success: false,
            body: req.body
        })
    }
})

app.post('/login-jwt', async (req, res)=>{
    const [rows] = await db.query("SELECT * FROM member WHERE account=? AND password=?",[req.body.account, req.body.password])
const mid=rows[0].mid
    if(rows.length===1){
        const token = jwt.sign({mid}, process.env.JWT_KEY);
        
        res.json({
            success: true,
            body:rows[0],
            token,
        })
    } else {
        res.json({
            success: false,
            body: req.body
        })
    }
})
// app.get('/logout', (req, res)=>{
//     delete req.session.admin;
//     res.redirect('/');
// })

app.use((req, res)=>{
    res.type('text/plain');
    res.status(404).send('找不到頁面')
})

const port = process.env.PORT || 4000;
app.listen(port, ()=>{
    console.log(`port: ${port}`, new Date());
})