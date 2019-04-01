const express=require('express');
const pool=require('../pool.js');
const bodayParser=require('body-parser');
var router=express.Router();
router.post('/qz_schuan',(req,res)=>{
    //获取参数
	var $sltext=req.body.name;
    var $srtext=req.body.Title;
    var $ftext=req.body.content;
    var $cimg=req.body.imagef;
	var sql="INSERT INTO qz_text VALUES(null,?,?,?,now(),?)";
	pool.query(sql,[$sltext,$srtext,$ftext,$cimg],(err,result)=>{
        if(err) throw err;
		if(result.affectedRows>0){
           res.send({code:200,msg:"上传成功"});
        }
	});
});

router.get('/qz_text_select',(req,res)=>{
    //获取参数
    var $tid=req.query.tid;
	var sql="SELECT sltext,srtext FROM qz_text_fpage WHERE tid=?";
	pool.query(sql,[$tid],(err,result)=>{
        if(err) throw err;
		if(result.length>0){
           res.send({code:200,msg:"上传成功",data:result});
        }
	});
});

// 修改
router.post('/qz_text_update',(req,res)=>{
    //获取参数
	var $sltext=req.body.sltext;
    var $srtext=req.body.srtext;
    var $tid=req.body.tid;
	var sql="UPDATE qz_text_fpage SET sltext=? , srtext=? WHERE tid=?";
	pool.query(sql,[$sltext,$srtext,$tid],(err,result)=>{
        if(err) throw err;
		if(result.affectedRows>0){
           res.send({code:200,msg:"上传成功"});
        }
	});
});

// 插入
router.post('/qz_text_ins',(req,res)=>{
    //获取参数
	var $sltext=req.body.sltext;
    var $srtext=req.body.srtext;
    var $tid=req.body.tid;
    // console.log($sltext+":"+$srtext+":"+$tid);
	var sql="INSERT INTO qz_text_fpage VALUES(tid=?,?,?) ";
	pool.query(sql,[$tid,$sltext,$srtext],(err,result)=>{
        if(err) throw err;
		if(result.affectedRows>0){
           res.send({code:200,msg:"上传成功"});
        }
	});
});
module.exports=router;