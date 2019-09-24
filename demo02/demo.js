// width +=1;
var timer;
var per=0;

timer=setInterval(() => {
    $('.bar').css('width',per+'%');
    per+=1;
    if(per>100){
            $('.pageLoading').addClass('complete');     
        setTimeout(function(){
           $('.monsterText').html('<h2>We are monster</h2>');
        },3000);
        clearInterval(timer);
    }
}, 30);