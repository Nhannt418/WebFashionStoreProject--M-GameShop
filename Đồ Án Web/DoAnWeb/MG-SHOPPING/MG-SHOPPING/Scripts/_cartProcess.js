$(document).ready(function () {
    getList();
});
function deletebtn(id) {
    var b = confirm("Bạn có muốn xóa?");
    if (b) {
        $.ajax({
            url: '/Cart/deleteProduct',
            type: "GET",
            data: { "id": id },
            async: true,
            success: function (status) {
                getList();
            },
            error: function () {
                alert("Loi Delete");
            }
        });

    }
}
function getList() {
    $.ajax({
        url: '/Cart/Load',
        type: 'GET',
        contentType: "application/json;charset=utf-8",
        dataType: 'json',
        success: function (responses) {
            var res = '';
            var detail = '';
            var total = 0;
            $.each(responses, function (key, item) {
                total += item.quarity * item.price;
                res += '<tr><td class="cart_product">';
                res += '<a href="/Detail/Index?id=' + item.id + '"><img src="' + item.image + ' "alt=""></a>';
                res += '</td><td class="cart_description">';
                res += '<h4><a href="/Detail/Index?id=' + item.id + '">' + item.name + '</a></h4><p>Code:' + item.code + '</p></td><td class="cart_price">';
                res += '<p><span>' + item.price + '&#8363;</span></p></td><td class="cart_quantity">';
                res += '<div class="cart_quantity_button"><a class="cart_quantity_up" href="javascript:void()" onclick="btnUp()"> + </a>';
                res += ' <input class="cart_quantity_input" type="text" id="quantity" value=' + item.quarity + ' autocomplete="off" size="2">';
                res += '<a class="cart_quantity_down" href="javascript:void()" onclick="btnDown()"> - </a>'
                res += '</div> </td><td class="cart_total"><p class="cart_total_price"><span>' + item.quarity * item.price + '&#8363;</span></p>';
                res += '</td><td class="cart_delete"><a class="cart_quantity_delete" href="javascript:void()" onclick="deletebtn(' + item.id + ')"><i class="fa fa-times"></i></a> </td></tr>';
                detail += '<li><strong>'+item.name+'</strong>:số lượng:'+item.quarity+'<span>'+item.price+'&#8363;</span></li>';
            });
            $("#bodyblock").html(res);
            $("#detaildata").html(detail);
            $("#detaildata").append('<li>Tổng cộng:<span>' + total + ' &#8363;</span></li>');
        }
    });
}
$("#updatePage").on("click", function () {
    location.reload(true);
});
function noEmpty(){
    var name = $("name").val();
    var age = $("age").val();
    var adress = $("adress").val();
    var _temp=document.getElementsByName("sex");
    var sex = _temp.options[_temp.selectIndex].value;
    var PhoneNum = $("PhoneNum").val();
    var email = $("email").val();
    if (name == "" || name == null || age == "" || age == null || adress == "" || adress == null || sex == "" || sex == null || PhoneNum == "" || PhoneNum == null || email == "" || email == null)return false;
}
$("#updata").on("click", function () {
    var _name = $("name").val();
    var _age = $("age").val();
    var _adress = $("adress").val();
    var _temp = document.getElementsByName("sex");
    var _sex = _temp.options[_temp.selectIndex].value;
    var _PhoneNum = $("PhoneNum").val();
    var _email = $("email").val();
    var _data={nameCustomer:_name,age:_age,adress:_adress,sex:_sex,PhoneNum:_PhoneNum,email:_email};
    $.ajax({
        url: this.url,
        type: "POST",
        data: JSON.stringify(_data),
        dataType: 'json',
        contentType: "application/json;charset=utf-8",
        success: function (msg) {
            alert("Cảm ơn bạn" + _name + " đã ủng hộ chúng tôi");
        }
    });

});