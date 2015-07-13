//横向菜单定位
var $pushBook = $('.top1a'), nMarginTop = $pushBook.offset().top + 0;

function backToTopFun() {
    //横向菜单定位
    var st = $(document).scrollTop(), winh = $(window).height();
    st > nMarginTop ? $pushBook.addClass("menu-flooo") : $pushBook.removeClass("menu-flooo");
    //IE6下的定位
    if (!window.XMLHttpRequest) {
        $pushBook.css("top", st + "px");
    }
};
$(window).bind("scroll", backToTopFun);

function showGoTop() {
    var top = $(document).scrollTop();
    if (top > 0) {
        $('#gotop').show();
    } else {
        $('#gotop').hide();
    }
}
$(document).ready(function (e) {
    showGoTop();
    $('#gotop').click(function() {
        $(document).scrollTop(0);
    });
    //$('#code').hover(function() {
    //    $(this).attr('id', 'code_hover');
    //    $('#code_img').show();
    //}, function() {
    //    $(this).attr('id', 'code');
    //    $('#code_img').hide();
    //});

});

$(window).scroll(function(e) {
    showGoTop();
});
function ddd(obj, sType) {
    var oDiv = document.getElementById(obj);
    if (sType == 'show') { oDiv.style.display = 'block'; }
    if (sType == 'hide') { oDiv.style.display = 'none'; }
}
