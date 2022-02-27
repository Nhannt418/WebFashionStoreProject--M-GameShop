function _pagela(_currentPage) {
    $.ajax({
        url: '/admin/adminProducts/_paging',
        type: "GET",
        data: { "_currentPage": _currentPage },
        success: function (data) {
            $("#_pagingla").html(data)
        }
    });
}
function _deleteProduct(id) {
    var b = confirm("Bạn có chắc chắn muốn xóa!");
    if (b) {
        $.ajax({
            url: '/admin/adminProducts/deleteProduct',
            data: { 'id': id },
            success: function (data) {
                $("#"+id).remove();
                console.log(data);
            }
        });
    }
}

    function _getDetail(id) {
            $.ajax({
                url: '/admin/adminProducts/_SendDetail',
                dataType: 'json',
                contentType:'application/json;charset=utf-8',
                data: { "id": id },
                success: function (_data) {
                    console.log(_data);
                    $.each(_data, function (key, value) {
                        $('#_' + key).val(value);
                    });
                }
            });
    }
function _filldata(id)
{
    $.ajax({
        url: '/admin/adminProducts/_SendDetail',
        data: { "id": id },
        dataType: 'json',
        contentType: 'application/json;charset=utf-8',
        success: function (_data) {
            console.log(JSON.stringify(_data));
            $.each(_data, function (key, value) {
                
                if (key != '_small' && key != '_larger' && key != '_normal') {
                    if (key == "import") {
                        var date = value.substr(0, 10);
                        $('[name=import]').val(date);
                    }
                    else if (key == "IDC") {
                        $('[name=' + key + ']').append('<option value="' + value + '" selected>' + value + '</option>')
                    }
                    else {
                        $('[name=' + key + ']').val(value);
                    }

                }
                else {
                    $('[name=' + key + ']').append('src="' + value + '"');
                }
                
            });
        }
    });
}
