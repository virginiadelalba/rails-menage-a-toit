var banner_headers = $('h1[id^="content-"]').hide(),
    i = 0;

(function cycle() {

    banner_headers.eq(i).fadeIn(500)
              .delay(1000)

    i = ++i % banner-headers.length;

})();


