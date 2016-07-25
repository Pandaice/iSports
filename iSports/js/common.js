$(document).ready(function () {
    //    setTimeout(close_allmask,5000);
    if (current_classid == "6515") {
        setTimeout(close_allmask, 10000);
    } else {
        setTimeout(close_allmask, 3000);
    }

    function close_allmask() {
        $(".xmsq").animate({ left: "0px" }, "fast");

        $(".xmdj").animate({ left: "-50px" }, "fast");

        $(".hdyy").animate({ left: "-80px" }, "fast");


        $(".xmsq").mouseenter(function () {
            $(this).animate({

                "left": "143px",
                "backgroundPosition": "0px 0px"

            }, "fast", "swing")



        })
        $(".xmsq").mouseleave(function () {
            $(this).animate({

                "left": "0",
                "backgroundPosition": "0px 0px"

            }, "fast", "swing")



        })
        //

        $(".xmdj").mouseenter(function () {
            $(this).animate({

                "left": "143px",
                "backgroundPosition": "0px -59px"

            }, "fast", "swing")



        })
        $(".xmdj").mouseleave(function () {
            $(this).animate({

                "left": "-50px",
                "backgroundPosition": "0px -59px"

            }, "fast", "swing")



        })

        //
        $(".hdyy").mouseenter(function () {
            $(this).animate({

                "left": "143px",
                "backgroundPosition": "0px -118px"

            }, "fast", "swing")



        })
        $(".hdyy").mouseleave(function () {
            $(this).animate({

                "left": "0",
                "backgroundPosition": "0px -118px"

            }, "fast", "swing")



        })

    }

    //    $(".ser_right_list").find("li").mouseenter(function(){
    //        $(this).find("dl").animate({
    //			
    //            "left":"0",
    //            "opacity":"1"			
    //        },200)
    //        $(this).find("span").css({
    //            "display":"none"		
    //        })
    //	
    //	
    //    })
    //		
    //    $(".ser_right_list").find("li").mouseleave(function(){
    //        $(".ser_select").find("dl").animate({
    //			
    //            "left":"-317px",
    //            "opacity":"0.5"			
    //        },200)
    //        $(".ser_select").find("span").css({
    //            "display":"block"
    //			
    //        })
    //	
    //    })

    $(".aboutright_bottom .sub_cate").children("li:first").addClass("leftmenu");
    $(".aboutright_bottom .sub_cate").children("li:last").addClass("rightmenu");

    if ($(".download_right_list .pager").html() == "") {
        $(".download_right_list .pager").css("border-top", "none");
    }


    $(".wa").mousemove(function () {
        $(".ewm").show();
    })
    $(".wa").mouseleave(function () {
        $(".ewm").hide();
    })

    $("#close_img").click(function () {
        $("#right_bottom,.bottom").hide();
    })

})
