$(function(){
    var year = '';
    var month = '';
    var time = '';
    var tetle = ".calendar .tetle";
    var date = '';
    var form = ".calendar form";
    //默认显示日期 
    var stys = rili('', '', '');
    $(form).append(stys);
    //上一年
    $(".upyear").click(function() {
        var now = new Date(time);
        year = now.getFullYear(); //得到年份
        month = now.getMonth(); //得到月份
        date = now.getDate(); //得到日期 
        $(".day").remove();
        var stys = rili(year - 1, month, date);
        $(form).append(stys);
    })
    //下一年
    $(".downyear").click(function() {
        var now = new Date(time);
        year = now.getFullYear(); //得到年份
        month = now.getMonth(); //得到月份
        date = now.getDate(); //得到日期 
        $(".day").remove();
        if (Number(month) - 1 > 11) {
            month = 11;
        }
        var stys = rili(year + 1, month, date);
        $(form).append(stys);
    })
    //上一个月
    $(".upmonth").click(function() {
        var now = new Date(time);
        year = now.getFullYear(); //得到年份
        month = now.getMonth(); //得到月份
        date = now.getDate(); //得到日期 
        $(".day").remove();
        if (Number(month) - 1 < 0) {
            month = 12;
            year = Number(year) - 1
        }
        var stys = rili(year, month - 1, date);
        $(form).append(stys);
    })
    //下一个月
    $(".downmonth").click(function() {
        var now = new Date(time);
        year = now.getFullYear(); //得到年份
        month = now.getMonth(); //得到月份
        date = now.getDate(); //得到日期 
        $(".day").remove();
        var stys = rili(year, month + 1, date);
        $(form).append(stys);
    })
    //显示
    function rili(year, month, date) {
        if (year == "" || month == "" || date == "") {
            var now = new Date();
            if (year == "") year = now.getFullYear(); //得到年份
            if (month == "") month = now.getMonth(); //得到月份
            if (date == "") date = now.getDate(); //得到日期 
    
        }
        //得到月份
        if (Number(month) + 1 > 12) {
    
            month = 1;
            year = Number(year) + 1;
        } else {
    
            month = Number(month) + 1;
        }
        var stime = year-1 + "-" + month + "-" + "1"; //得到当月开始日期
        var utime = year + "-" + (month - 1) + "-" + "1"; //得到上月开始日期
        var d = new Date(year, month, 0);
        var length = d.getDate(); //得到当月天数
        console.log(length);
        var month_1 = new Date(year, (month - 1), 0);
        var ulength = month_1.getDate(); //得到上月天数
        time = year + "-" + (month) + "-" + date; //得到当前日期  
        $(tetle).html(time); //添加标题显示当前日期  
        var etime = year + "-" + month + "-" + length; //得到当月结束日期
        var elength = 7 - new Date(etime).getDay(); //得到当月结束日期后补充下月天数
        var w1 = new Date(stime).getDay(); //得到当月开始日期是星期X
        if (w1 < 1) {
            w1 = 7
        }
        // alert(w1)
        var sty = '';
        var ui = ulength - w1
        //补充开始周信息 2018-7-14
        for (var i = 0; i < w1; i++) {
            sty += "<label class='day ups' data-day='" + (ui + 1) + "'>"
            sty += "<input class='appointment' date-day='" + (ui + 1) + "' placeholder='准备做些什么' required='true' type='text'>";
            sty += "<span>" + (ui + 1) + "</span>";
            sty += " <em></em> </label>";
            ui++
        }
        //展示本月信息
        for (var i = 0; i < length; i++) {
            sty += "<label class='day' data-day='" + (i + 1) + "'>"
            sty += "<input class='appointment' date-day='" + (i + 1) + "' placeholder='准备做些什么' required='true' type='text'>";
            sty += `<span class=${(i+1)==date?'active':''}>${(i + 1)}</span>`;
            sty += " <em></em> </label>";
        }
        //补充结束周信息
        for (var i = 0; i < elength; i++) {
            sty += "<label class='day downs' data-day='" + (i + 1) + "'>"
            sty += "<input class='appointment' date-day='" + (i + 1) + "' placeholder='准备做些什么' required='true' type='text'>";
            sty += "<span>" + (i + 1) + "</span>";
            sty += " <em></em> </label>";
        }
        return sty;
    }
    var isT=true;
    $(".dateText img").click(function(){
        if(isT){
            $(".cal").css("transform","translateX(0rem)");
            isT=false;
        }else{
            $(".cal").css("transform","translateX(22rem)");
            isT=true;
        }
        

    })
    })