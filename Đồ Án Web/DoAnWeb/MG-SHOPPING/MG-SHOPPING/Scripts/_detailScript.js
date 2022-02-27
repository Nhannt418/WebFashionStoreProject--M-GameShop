function addProduct(id,name,meta,code,image,price) {
    var _id = id;
    var _name = name;
    var _code = code;
    var _image = image;
    var _price = price;
    var _quarity =document.getElementById("quarity").value;
    if (Number(_quarity) > 0) {
        var _temp = { id: _id, name: _name, code: _code, image: _image, price: _price, quarity: _quarity };
        console.log(JSON.stringify(_temp));
        $.ajax({
            url: '/Detail/getData',
            type: 'POST',
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            data: JSON.stringify(_temp),
            success: function (status) {
                $("h5.status_sended").html(status.status);
            }
        });
        //gio la sua trong cong tac hien thi gio hang
        var ccount = document.getElementById("cart_count").getElementsByTagName("span");
        $("#cart_menu").append('<li><a class="remixed" href="/chi-tiet/' + meta + '">' + name + ':SL' + _quarity + '</a></li>');
        document.getElementById("cart_count").getElementsByTagName("span").innerHTML = ccount + 1;
    }
   
    else { $("h5.status_sended").html("Số lượng sản phẩm không hợp lệ.") }

}