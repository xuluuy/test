// 一进入页面 canvas的内容就加载出来了


//填充
//输入验证码   点击提交--->进行判断  正确/错误

//随机生成字符串 从a-Z及数字选取6个组成需要输入的验证码
//65~90 97~122 英文大小写
var arr=[0,1,2,3,4,5,6,7,8,9];
for(var i=65;i<122;i++){
    if(i>90 && i<97){
        continue;
    }
    arr.push(String.fromCharCode(i));
}
var value;
function createCanvas(){
    //选取要显示的字符
    var canvasStr='';
    value='';
    for(var i=0;i<6;i++){
        //Math.floor(Math.random()*arr.length 随机取出数组的下标
        var a=arr[Math.floor(Math.random()*arr.length)];
        canvasStr+= a + ' ';
        value+=a;
    }
    //生成验证码区域
    var mycanvas = document.getElementById('myCanvas');
    var ctx = mycanvas.getContext('2d');
    var oImg=new Image();
    oImg.src='./images/bg.jpg';
    oImg.onload=function(){
        var pattern=ctx.createPattern(oImg,'repeat');
        ctx.fillStyle=pattern;
        ctx.fillRect(0,0,mycanvas.width,mycanvas.height);
        ctx.textAlign='center';
        ctx.fillStyle='#ccc';
        ctx.font='46px Roboto Slab';
        ctx.setTransform(1,-0.12,0.3,1,0,12);
        ctx.fillText(canvasStr,mycanvas.width/2,60);
    }
}



//创建当前canvas区域
createCanvas();
$('.submit').on('click',function(){
    showResult();
});
$('.refresh').on('click',function(){
    createCanvas();
});

function showResult(){
    var inputValue=$('.inputBox input').val();
    if(value==inputValue){
        $('.inputBox span').css({
            background: 'url(./images/true.png)',
            backgroundSize: '100%',
            display:'inline-block'
        });
        $('.error').css('display','none');
        createCanvas();
    }else{
        $('.inputBox span').css({
            background: 'url(./images/false.png)',
            backgroundSize: '100%',
            display:'inline-block'
        });
        $('.error').css('display','block').html('验证码输入错误，请重新输入');
        createCanvas();
    }
}