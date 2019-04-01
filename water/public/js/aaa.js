var index=1,timer;
function init(){
    eventBind();
    autoPlay();
}
init();
function autoPlay(){
    timer =setInterval(function () {
        animation(-1522);
        dotIndex(true);
    },1800)
}
function stopAutoPlay() {
    clearInterval(timer);
}
function dotIndex(add){
    if(add){
        index++;
    }
    else{
        index--;
    }
    if(index>5){
        index = 1;
    }
    if(index<1){
        index = 5;
    }
    dotActive();
}
function dotActive() {
    var dots = document.getElementsByClassName("dot");
    var len = dots.length;
    for(var i=0 ;i<len ;i++){
        dots[i].className = "dot";
    }
    for(var i=0;i<len;i++){
        /*此处可以不用parseInt，当不用全等时*/
        if(index === parseInt(dots[i].getAttribute("index"))){
            dots[i].className = "dot active";
        }
    }
}
function eventBind() {
    /*点的点击事件*/
    var dots = document.getElementsByClassName("dot");
    var len = dots.length;
    for (var i = 0; i < len; i++) {
        (function (j) {
            dots[j].onclick = function (e) {
                var ind = parseInt(dots[j].getAttribute("index"));
                animation((index - ind) * (-1522));
                /*显示点击的图片*/
                index = ind;
                dotActive();
            }
        })(i)
    }
    /*容器的hover事件*/
    var con = document.getElementsByClassName("container")[0];
    /*鼠标移动到容器上时，停止制动滑动，离开时继续滚动*/
    con.onmousemove = function (e) {
        stopAutoPlay();
    };
    con.onmouseout = function (e) {
        autoPlay();
    };
    var pre = document.getElementsByClassName("pre")[0];
    var next = document.getElementsByClassName("next")[0];
    pre.onclick = function (e) {
        dotIndex(false);
        animation(-1522);
    };
    next.onclick = function (e) {
        dotIndex(true);
        animation(-1522);
    }
}
function animation(offset) {
    var lists = document.getElementsByClassName("list")[0];
    var left = parseInt(lists.style.left.slice(0, lists.style.left.indexOf("p"))) + offset;
    if (left < -4566) {
        lists.style.left = "0";
    }
    else if (left > -474) {
        lists.style.left = "-4566px";
    }
    else {
        lists.style.left = left + "px";
    }
}

	var rhz=document.getElementsByClassName('rhz');
	var rhzl=document.getElementsByClassName('rhzl');
	/*rhz[0].onmousemove=function(){
		rhz[0].style.width=150+'px';
		rhz[0].style.top=-280+'px';
		rhzl[0].style.opacity=1;
		rhz[0].onmouseout=function(){
			rhz[0].style.top=null;
			rhz[0].style.width=null;
			rhzl[0].style.opacity=null;
		}
	}*/
	var down=document.getElementsByClassName('down');
	/*down[0].onmousemove=function(){
		down[0].style.width=200+"px";
		down[0].style.height=200+"px";
	}*/