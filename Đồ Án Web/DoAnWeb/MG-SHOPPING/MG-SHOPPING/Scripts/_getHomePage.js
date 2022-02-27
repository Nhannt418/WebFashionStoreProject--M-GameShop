function getpage(_currentPage) {
    $.ajax({
        url: '/Home/Paging',
        type: "POST",
        data: { "_currentPage": _currentPage},
        success: function (data) {
            $("#paging").html(data);
            $('html, body').animate({
                scrollTop: $("#_top").offset().top
            }, 1000);
        }
    });
}
function getpage2(_currentPage) {
    $.ajax({
        url: '/Shopping/Paging2',
        type: "POST",
        data: { "_currentPage": _currentPage },
        success: function (data) {
            $("#paging").html(data);
            $('html, body').animate({
                scrollTop: $("#_top").offset().top
            }, 1000);
        }
    });
}
