function _getSearch() {
    var _key = document.getElementById("searcher").value;
    if (_key != "")
    $.ajax({
        url: '/Home/_loadAutocomplete',
        data: { '_key': _key },
        dataType: 'json',
        contentType: 'application/json;charset=utf-8',
        success: function (data) {
            var i=0;
            $.each(data, function (key, value) {
                $('#load_from_ajax').append('<option value="' + value.name + '">');
                if (key == 5) return true;
            });
        }
    });
}
function _sendToServer() {
    var _locate = window.location.pathname;
    var _key = document.getElementById("searcher").value;
    if (_locate == "/") {
        if (_key != "")// gio min se chi dung cai nay cho no nhanh
        {$.get('/Home/_bindingData', { _key: _key }, function () { });
            getpage(1);}
        else window.location.replace("/");

    }
    else window.location.replace("/?_key="+_key);
}

