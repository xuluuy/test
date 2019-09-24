

$.fn.UiSileder=function(width,flag){
var slider=$(this)
var ul=$(".imgs",slider);
var timer=null;
var next=$(this).siblings(".center").children(".right");
var prev=$(this).siblings(".center").children(".left");
var num=0;
var items=$("li",ul).length;


//上方的slider flag为true
if(flag==true){
 var focus=$(this).siblings(".buttom").children(".move").children("li");
 
}else{
	var focus=$(this).siblings(".top").children(".move").children("li");
    var current=$(this).siblings(".tianmao").children(".num").children(".current")[0].innerHTML;
	
}
//鼠标放置在图片上，清除定时器
slider.hover(function(){
    clearTimer(timer)
},function(){
    autoPlay()
})
//清除定时器
function clearTimer(t){
    clearInterval(t);
}

// 鼠标放在下方原点上触发事件
  focus.hover(function () {
                //清除ul所有动画队列
                ul.stop(true, true)
                //清除定时器
                clearTimer(timer);
                //添加背景色
                $(this).addClass('bg').siblings().removeClass('bg')
                //图片移到相对应
                num = $(this).index()
                ul.animate({
                    "right": width * num
                })
                var n=num+1;
                       current=n;
                       document.getElementById("current").innerHTML=current;
            }, function () {
                //开始轮播
                autoPlay()
                $(this).removeClass('bg')
                
                
            })
  //下一张
            next.on('click', function () {
                ul.stop(true, true)
                clearTimer(timer)
                num++;
                if (num >= items) {
                    num = 1;
                    ul.css({
                        "right": 0
                    });
                }

                ul.animate({
                    "right": width * num
                })

                color()
                autoPlay()
            })
            //上一张
            prev.on('click', function () {
                ul.stop(true, true)
                clearTimer(timer)
                num--;
                if (num <= -1) {
                    num = items-2;
                    ul.css({
                        "right": 2590
                    });
                }

                ul.animate({
                    "right": width * num
                })

                color()
                autoPlay()
            })
             // 下方原点背景色
            function color() {
                if (num === items-1) {
                    focus.eq(0).addClass('bg').siblings().removeClass('bg');
                     current=1;
                     document.getElementById("current").innerHTML=current;
                } else {
                    focus.eq(num).addClass('bg').siblings().removeClass('bg');
                    var n=num+1;
                       current=n;
                       document.getElementById("current").innerHTML=current;
                }
            }
            // 自动轮播
            function autoPlay() {
                timer = setInterval(function(){
                    num++
                    if (num >= items) {
                        num = 1;
                        ul.css({
                            "right": 0
                        });
                    }
                    ul.animate({
                        "right": width * num
                    })
                    if (num === items-1) {
                        focus.eq(0).addClass('bg').siblings().removeClass('bg');
                        current=1
                        document.getElementById("current").innerHTML=current;
                    } else {
                        focus.eq(num).addClass('bg').siblings().removeClass('bg');
                        var n=num+1;
                       current=n;
                       document.getElementById("current").innerHTML=current;
                    }

                }, 3000);
                
                }autoPlay();
}
//顶部导航条显示与隐藏
$.fn.NavShow=function(){
	var nav=$(this);
	nav.hover(function(){
		nav.addClass("navShow");
		nav.siblings(".area").css({
			"display":"block"
		});		
	});
	nav.siblings(".area").hover(function(){
			
		},function(){
			nav.removeClass("navShow");
			nav.siblings(".area").css({
				"display":"none"
				})
		})	
}

//当鼠标放到slider上时 左右页图标显示
$(".content-center-top .slider,.content .content-center-top .center").hover(function(){
	$(".content .content-center-top .center").css({
		"display":"block"
	});
},function(){
	$(".content .content-center-top .center").css({
		"display":"none"
	});
});
$(".content-center-bottem .slider,.content .content-center-bottem .center").hover(function(){
	$(".content .content-center-bottem .center").css({
		"display":"block"
	});
},function(){
	$(".content .content-center-bottem .center").css({
		"display":"none"
	});
})

$.fn.ChangeTxt=function(){
	var change=$(this);
	change.click(function(){
		var txt=this.innerHTML;
		/*$(".top-menu-hd .txt").text(txt);*/
		var content=$(this).parent("ul").parent(".area").siblings(".text").children(".txt");
		content.text(txt);
	})
	change.hover(function(){
		$(this).addClass("txtbg")
	},function(){
		$(this).removeClass("txtbg")
	})
}
$(".close").click(function(){
	$(".twodcode").css({
		"display":"none"
	})
})

$(function(){
	$('.content-center-top .slider').UiSileder(518,true);
	$('.content-center-bottem .slider').UiSileder(520);
	$('.top .country-area').NavShow();
	$('.top .taobao').NavShow();
	$(".top .area ul li").ChangeTxt();
	
})
