	var h7=document.getElementsByClassName("brand_h7");
	var h6=document.getElementsByClassName("brand_h6");
	var h5=document.getElementsByClassName("brand_h5");
	var h4=document.getElementsByClassName("brand_h4");
	var h3=document.getElementsByClassName("brand_h3");
	var h2=document.getElementsByClassName("brand_h2");
	var h1=document.getElementsByClassName("brand_h1");
	/*var bi=document.getElementsByClassName("bi");
	var qq=document.getElementsByClassName("qq");*/
	var jianshi=document.getElementsByClassName("jianshi");
	var cike=document.getElementsByClassName("cike");
	var gongjian=document.getElementsByClassName("gongjian");
	var nvwu=document.getElementsByClassName("nvwu");
	var gj=document.getElementsByClassName("gj");
	var guang=document.getElementsByClassName("guang");
	var xiaopao=document.getElementsByClassName("xiaopao");
	var rightc=document.getElementsByClassName("rightc");
	var	v=document.getElementById("video");
	h7[0].onmousemove=function(){
	
		xiaopao[0].style.opacity=1;
		v.style.opacity=0;
		h7[0].onmouseout=function(){
		xiaopao[0].style.opacity=0;
		v.style.opacity=1;
		}
	}
	h6[0].onmousemove=function(){
	
		guang[0].style.opacity=1;
		v.style.opacity=0;
		h6[0].onmouseout=function(){
		guang[0].style.opacity=0;
		v.style.opacity=1;
		}
	}
	h5[0].onmousemove=function(){
	
		gj[0].style.opacity=1;
		v.style.opacity=0;
		h5[0].onmouseout=function(){
		gj[0].style.opacity=0;
		v.style.opacity=1;
		}
	}
	h4[0].onmousemove=function(){
	
		jianshi[0].style.opacity=1;
		v.style.opacity=0;
		h4[0].onmouseout=function(){
		jianshi[0].style.opacity=0;
		v.style.opacity=1;
		}
	}
		h3[0].onmousemove=function(){
		cike[0].style.opacity=1;
		v.style.opacity=0;
		h3[0].onmouseout=function(){
		cike[0].style.opacity=0;
		v.style.opacity=1;
		}
	}
		h2[0].onmousemove=function(){
		nvwu[0].style.opacity=1;
		v.style.opacity=0;
		h2[0].onmouseout=function(){
		nvwu[0].style.opacity=0;
		v.style.opacity=1;
		}
	}
		h1[0].onmousemove=function(){
		gongjian[0].style.opacity=.8;
		v.style.opacity=0;
		h1[0].onmouseout=function(){
		gongjian[0].style.opacity=0;
		v.style.opacity=1;
		}
	}

	rightc[0].onmousemove=function(){
		rightc[0].style.opacity=1;
		rightc[0].onmouseout=function(){
			rightc[0].style.opacity=1;
		}	
	}
	v.onclick=function(){
		v.play();
		
	}
