/*ui-search定义*/
$.fn.UiSearch=function(){
	var ui=$(this);
	$('.ui-search-seleted',ui).on('click',function(){
		$('.ui-search-select-list').show();
		return false;
	});
	$('.ui-search-select-list a',ui).on('click',function(){
		$('.ui-search-seleted').text( $(this).text() );
		$('.ui-search-select-list').hide();
		return false;
	});
	$('body').on('click',function(){
		$('.ui-search-select-list').hide();
	});
};
//ui-tab 处理
/*@param {String}header tab组件的所有选项卡item 
/*@param {String}content tab组件的所有选项卡item
 * @param {Stirng}focus_prefix 选项卡高亮样式前缀，可选
 */
 
$.fn.UiTab=function(header,content,focus_prefix){
	var ui=$(this);
	var tabs=$(header,ui);
	var cons=$(content,ui);
	var focus_prefix=focus_prefix || '';
	tabs.on('click',function(){
		var index=$(this).index();
		tabs.removeClass(focus_prefix+'item_focus').eq(index).addClass(focus_prefix+'item_focus');
	    cons.hide().eq(index).show();
	    return false;
	});
}
//ui-backTop
$.fn.UiBackTop=function(){
	var ui=$(this);
	var el=$('<a href="#0" class="ui-backTop"></a>');
	ui.append(el);
	var windowHeight=$(window).height();
	$(window).on('scroll',function(){
		var top = $(this).scrollTop();
		if(top > windowHeight){
			el.show();
		}else{
			el.hide();
		}
	});
	el.on('click',function(){
		$(window).scrollTop(0);
		
	});
	
}
//ui-slider
//1.左右箭头控制翻页
//2.翻页的时候，进度点要联动focus
//3.翻到第三页时，下一页需回到第一页，第一页同理
//4.进度点在点击的时候，需要切换到对应的页面
//5.没有点击翻页时需要自动滚动，
//6.滚动过程中，屏蔽其他操作（自动滚动，左右翻页，进度点点击）
$.fn.UiSlider=function(){
	var ui=$(this);
	var wrap=$('.ui-slider-wrap',ui);
	var items=$('.item',wrap);
	var btn_prev=$('.ui-slider-arrow .left',ui);
	var btn_next=$('.ui-slider-arrow .right',ui);
	var tips=$('.ui-slider-process .item',ui);
	//预定义
	var current=0;
	var size=items.size();
	var width=items.eq(0).width();
	var enableAuto =true;
	//设置自动滚动感应(如果鼠标在wrap中，不要自动滚动)
	ui.on('mouseover',function(){
		enableAuto=false;
	})
	.on('mouseout',function(){
		enableAuto=true;
	});
	//具体操作
	wrap.on('move_prev',function(){
		if(current<=0){
			current=size;
		}
		current=current-1;
		wrap.triggerHandler('move_to',current);
	});
	wrap.on('move_next',function(){
		if(current>=size-1){
			current=-1;
			//debugger;
			
		}
		
		current=current+1;
		wrap.triggerHandler('move_to',current);
	});
	wrap.on('move_to',function(evt,index){
		wrap.css('left',index*width*-1);
		tips.removeClass('item_focus').eq(index).addClass('item_focus');
	});
	wrap.on('auto_move',function(){
		setInterval(function(){
			enableAuto && wrap.triggerHandler('move_next');
		},3000);
	})
	.triggerHandler('auto_move');
	
	//事件
	btn_prev.on('click',function(){
		wrap.triggerHandler('move_prev');
	});
	btn_next.on('click',function(){
		wrap.triggerHandler('move_next');
	});
	tips.on('click',function(){
		var index=$(this).index();
		wrap.triggerHandler('move_to',index);
	});
}
/*页面的脚本逻辑*/
 $(function(){
 	$('.ui-search').UiSearch();
 	$('.content-tab').UiTab('.caption > .item','.block > .item');
    $('.content-tab .block .item').UiTab('.block-caption > a','.block-content > .block-wrap','bc-');
    $('body').UiBackTop();
    $('.ui-slider').UiSlider();
 });
