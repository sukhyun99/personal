/**
 * 
 */
$(window).on('load', function () {
    load('#start', '4');
    $("#js-btn-wrap .button").on("click", function () {
        load('#start', '4', '#js-btn-wrap');
    })
});
 
function load(id, cnt, btn) {
    var girls_list = id;
    alert(girls_list);
    var girls_length = $(girls_list).length;
    alert(cnt);
    alert(girls_length);
    var girls_total_cnt;
    if (cnt > girls_length) {
        girls_total_cnt = cnt;
    } else {
        girls_total_cnt = girls_length;
        $('.button').hide()
    }
    alert(girls_total_cnt);
    $(girls_list).addClass("active");
}