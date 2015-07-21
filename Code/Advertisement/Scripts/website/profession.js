var PRODUCT_ANIMATE_PARAM = { duration: 300, easing: "easeOutQuad", queue: false };
$(".kits, .zhongbiaoli dt").bind({
    mouseenter: function () {
        if ($(this).hasClass("bg-service")) return;
        $(".zhongbiaoli dt", $(this)).animate({
            opacity: 0
        }, PRODUCT_ANIMATE_PARAM);
        $(".mask", $(this)).animate({
            opacity: 1
        }, PRODUCT_ANIMATE_PARAM);
    },
    mouseleave: function () {
        if ($(this).hasClass("bg-service")) return;
        $(".zhongbiaoli dt", $(this)).animate({
            opacity: 1
        }, PRODUCT_ANIMATE_PARAM);
        $(".mask", $(this)).animate({
            opacity: 0
        }, PRODUCT_ANIMATE_PARAM);
    }
});