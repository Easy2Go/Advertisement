
$(".hyfl2,.hyfl3").mouseover(function () {
    $(this).find("div").stop().animate({ bottom: "0px" });
}).mouseout(function () {
    $(this).find("div").stop().animate({ bottom: "-69" });
})