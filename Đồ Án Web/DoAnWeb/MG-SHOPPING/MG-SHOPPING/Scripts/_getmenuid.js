function sendIndex(id) {
    var _locate = window.location.pathname;
    if (_locate == "/" ) {
        $.ajax({
            url: '/',
            type: 'GET',
            data: { _id: id}
        });
        getpage(1);
    }
    else
        window.location.replace("/?id="+id);

}