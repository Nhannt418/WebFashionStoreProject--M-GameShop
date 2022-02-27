function _pageUserla(_currentPage) {
    $.ajax({
        url: '/admin/adminUser/_pagingUser',
        type: "GET",
        data: { "_currentPage": _currentPage },
        success: function (data) {
            $("#_pagingUserla").html(data)
        }
    });
}
function _filldataUser(id)
{
    $.ajax({
        url: '/admin/adminUser/_getUser',
        dataType: 'json',
        contentType: 'application/json;charset=utf-8',
        data:{_id:id},
        success: function (data)
        {
            $.each(data, function (key, value) {
                $('[name=' + key+']').val(value);
            });
        }
    });
}
function _deleteUser(id) {
    var b = confirm("Bạn có chắc chắn muốn xóa!");
    if (b) {
        $.ajax({
            url: '/admin/adminUser/DeleteUser',
            data: { 'id': id },
            success: function (data) {
                $("#" + id).remove();
                console.log(data);
            }
        });
    }

}