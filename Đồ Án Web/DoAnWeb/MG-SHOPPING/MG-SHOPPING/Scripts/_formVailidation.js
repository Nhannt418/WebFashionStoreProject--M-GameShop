function _login(){
    var pass = document.forms["loginForm"]["pass"].value;
    var user = document.forms["loginForm"]["user"].value;
    if (user.search(" ")!=-1)
    {
        document.getElementById("login_alert").innerHTML = "Tên Đăng nhập ko được chứa 'space'";
        return false;
    }
    if (pass.length < 6)
    {
        document.getElementById("login_alert").innerHTML = "Mật khẩu phải chứa 6 kí tự trở lên.!!";
        return false;
    }
}
function _register() {
    var user = document.forms["registerForm"]["user"].value;
    var realname = document.forms["registerForm"]["realname"].value;
    var pass = document.forms["registerForm"]["pass"].value;
    var age = document.forms["registerForm"]["age"].value;
    var re_pass = document.forms["registerForm"]["re_pass"].value;
    if (user.search(" ") != -1) {
        document.getElementById("resgister_alert").innerHTML = "Tên Đăng nhập ko được chứa 'space'";
        return false;
    }
    if (age < 15)
    {
        document.getElementById("resgister_alert").innerHTML = "Đối tượng là trẻ em trên 15 tuổi";
        return false;
    }
    if (realname.search(" ") == -1)
    {
        document.getElementById("resgister_alert").innerHTML = "Chúng tôi cần Full name";
        return false;
    }
    if (pass != re_pass)
    {
        document.getElementById("resgister_alert").innerHTML = "Chưa khớp mật khẩu";
        return false;
    }
}