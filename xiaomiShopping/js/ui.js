var tabs=document.getElementById("tabs").getElementsByTagName("li");
var lists=document.getElementById("lists").getElementsByTagName("ul");
var seckillNav=document.getElementById("seckill-nav");
//切换商品列表
for(var i=0;i<tabs.length;i++){
    tabs[i].onclick= showList;
}
//显示商品列表 
function showList(){
    for(var i=0;i<tabs.length;i++){
        if(tabs[i]===this){
            tabs[i].className="active";
            lists[i].className="clearfix active";
        }else{
            tabs[i].className="";
            lists[i].className="clearfix";
        }        
    }
}
//监听浏览器
window.onscroll=function(){
    var scrollTop=document.documentElement.scrollTop || document.body.scrollTop || window.pageYOffset;
    if(scrollTop>=260){
       //seckill-navfixed
       seckillNav.className="seckill-nav seckill-navfixed";
    }else{
        seckillNav.className="seckill-nav";
    }
}
/*
时间倒计时
*/
function TimeDown(id, endDateStr) {
    //结束时间
    var endDate = new Date(endDateStr);
    //当前时间
    var nowDate = new Date();
    //相差的总秒数
    var totalSeconds = parseInt((endDate - nowDate) / 1000);
    //天数
    // var days = Math.floor(totalSeconds / (60 * 60 * 24));
    //取模（余数）
    var modulo = totalSeconds % (60 * 60 * 24);
    //小时数
    var hours = Math.floor(modulo / (60 * 60));
    hours=hours>9?hours:"0"+hours;
    modulo = modulo % (60 * 60);
    //分钟
    var minutes = Math.floor(modulo / 60);
    minutes=minutes>9?minutes:"0"+minutes;
    //秒
    var seconds = modulo % 60;
    seconds=seconds>9?seconds:"0"+seconds;
    //输出到页面
    var deadtime=document.getElementById(id).innerHTML =  hours + ":" + minutes + ":" + seconds ;
    //延迟一秒执行自己
    var timer=setTimeout(function () {
        TimeDown(id, endDateStr);
    }, 1000)
    //倒计时结束切换
if(deadtime=="00:00:00"){
    clearTimeout(timer);
    tabs[0].className="";
}
}
//倒计时
TimeDown("time", "2019-09-24 14:42:00");
