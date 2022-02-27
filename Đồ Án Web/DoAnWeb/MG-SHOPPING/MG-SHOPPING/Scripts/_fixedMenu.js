$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 168) {
            $("#header_nav").css({ "position": "fixed", "background-color": "rgba(0,0,0,0.4)", "top": "0px", "z-index": "2", "width": "90%" })
        }
        else {
            $("#header_nav").css({ "position": "relative", "z-index": "1", "background-color": "#A13091", "width": "100%" })
        }
    })

})