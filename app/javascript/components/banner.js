var banner_headers = $('h1[id^="content-"]').hide(),
    i = 0;

(function cycle() {

    banner_headers.eq(i).fadeIn(500)
              .delay(1000)
              .fadeOut(400, cycle);

    i = ++i % banner_headers.length;

})();

export { cycle };


