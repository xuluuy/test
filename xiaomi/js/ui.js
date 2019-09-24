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