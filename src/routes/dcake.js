const express = require('express');
const upload = require(__dirname + '/../modules/upload-imgs')

const router = express.Router();
const db = require(__dirname+'/../modules/db_connect2.js')


router.use((req, res, next)=>{
    // if(!req.session.user){
    //     return res.redirect('/');
    // }
    res.locals.baseUrl = req.baseUrl;
    res.locals.url = req.url;
    next();
});

router.get('/login',async(req,res)=>{
    res.render('dcake/login');
})
router.post('/login',upload.none(),async(req,res)=>{
 
    const [rows] = await db.query("SELECT * FROM member WHERE account=? AND password=?",[req.body.account, req.body.password])
    if(rows.length===1){
        req.session.user = rows[0];
        // res.redirect('/dcake')
        res.json({
            success: true,
            body: rows[0],
            // baseUrl:res.locals.baseUrl 
        })
    } else {
        res.json({
            success: false,
            body: req.body
        })
    }
})
router.get('/',async(req,res)=>{
    res.render('dcake/plain')
})

router.get('/logout', (req, res)=>{
    delete req.session.user;
    res.redirect('/');
})
module.exports = router;
