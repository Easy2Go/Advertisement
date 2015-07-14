
$(function () {

    $("#kinMaxShow").kinMaxShow({
        height: 533,
        intervalTime: 2,
        hoverPause: false,
        button: {
            showIndex: false,
            normal: { width: '14px', height: '14px', left: '950px', top: '485px', background: "url(/Content/themes/base/images/banner_sort.png) no-repeat", marginRight: '5px', border: "0px" },
            focus: { background: "url(/Content/themes/base/images/banner_sort_active.png) no-repeat", border: "none" }
        }
    });



    $("#kinMaxShow2").kinMaxShow({
        height: 294,
        intervalTime: 3,
        button: {
            showIndex: false,
            normal: { width: '14px', height: '14px', left: '1180px', top: '246px', background: "url(/Content/themes/base/images/banner_sort.png) no-repeat", marginRight: '5px', border: "0px" },
            focus: { background: "url(/Content/themes/base/images/banner_sort_active.png) no-repeat", border: "none" }
        }
    });


});


