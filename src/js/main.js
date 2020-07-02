const App = {
    SetBackground: () => {
        $('[setBackground]').each(function() {
            var background = $(this).attr('setBackground')
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-size": "cover",
                "background-position": "center center"
            })
        })
        $('[setBackgroundRepeat]').each(function() {
            var background = $(this).attr('setBackgroundRepeat')
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-repeat": "repeat"
            })
        })
    },
    EqualHeightElement: el => {
        let height = 0;
        let thisHeight = 0;
        $(el).each(function() {
            thisHeight = $(this).height();
            if (thisHeight > height) {
                height = thisHeight;
            }
        });
        $(el).height(height)
    },
    // InitLazyLoad: () => {
    //     return new LazyLoad({
    //         elements_selector: ".lazy"
    //     });
    // },
    ScrollTo: y => {
        $('html, body').animate({
            scrollTop: y
        }, 1000)
    },
    Init: () => {
        App.SetBackground()
        // App.InitLazyLoad()
        
    }
}

function InitSlider() {

}
$(document).ready(function() {
    App.Init()
    height()
    togglenav()
    mappingInit()
    swiperInit()
    swiperHomeSlideInit()
    swiperHome()
    gallery()
    toggleViews()
    viewdetail()
    giaiphap()
})
//height menu
function height(){
    let e = $('header').outerHeight()
    $('header .nav-mobile').css({
        'height': 'calc(100vh - '+(e+30.5)+'px )'
    })
    $('header .back-drop').css({
        'height': 'calc(100vh - '+(e+30.5)+'px )'
    })
}
//nav
function togglenav(){
    $('.button-toggle').on('click',function(){
        $(this).toggleClass('active')
        $('.nav-mobile').toggleClass('active')
        $('.back-drop').toggleClass('active')
    });
    $('.back-drop').on('click',function(){
        $(this).removeClass('active')
        $('.nav-mobile').removeClass('active')
        $('.button-toggle').removeClass('active')
    })
}
function togglenavSearch(){
    $('.box-title').on('click',function(){
        $(this).toggleClass('active')
        $('.select-wrap').toggleClass('active')
    });
    
}
function mappingInit(){
    var searchbox = new MappingListener({
		selector: "header .search-box",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .nav-top .language",
		desktopMethod: "insertBefore",
		breakpoint: 1200,
    }).watch()
    var navtop = new MappingListener({
		selector: "header .nav",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .nav-top",
		desktopMethod: "prependTo",
		breakpoint: 1200,
    }).watch()
    var hotline = new MappingListener({
		selector: "header .hotline",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .nav-top .search-box",
		desktopMethod: "insertBefore",
		breakpoint: 1200,
    }).watch()
    var navbottom = new MappingListener({
		selector: "header .header-bottom",
		mobileWrapper: ".nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .header-top",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
    }).watch()
    
}
//swiper
function swiperInit(){
    let HomeBanner = new Swiper('.home-banner .swiper-container', {
        speed: 1500,
        slidesPerView: 1,
        loop: true,
        autoplay: true,
        navigation: {
            clickable: true,
            nextEl: '.home-banner .swiper-next',
            prevEl: '.home-banner .swiper-prev'
        },
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true
        },
	})
}
function swiperHomeSlideInit(){
    let HomeBanner = new Swiper('.product-service .swiper-container', {
        speed: 1000,
        slidesPerView: 4,
        spaceBetween: 40,
        loop: true,
        // autoplay: true,
        navigation: {
            nextEl: '.product-service .swiper-next',
            prevEl: '.product-service .swiper-prev'
        },
        pagination: {
            el: '.product-service .swiper-pagination',
            clickable: true
        },

        breakpoints: {
            1200: {
                slidesPerView: 3,
                spaceBetween: 10
            },
            576: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            375: {
                slidesPerView: 1,
            },
		}
	})

}
function swiperHome(){
    let HomeBanner = new Swiper('.doitac .swiper-container', {
        speed: 1000,
        slidesPerView: 6,
        spaceBetween: 20,
        loop: true,
        autoplay: true,
        navigation: {
            nextEl: '.doitac .swiper-next',
            prevEl: '.doitac .swiper-prev'
        },
        pagination: {
            el: '.doitac .swiper-pagination',
            clickable: true
        },

        breakpoints: {
			1025: {
                slidesPerView: 4,
                spaceBetween: 10
			},
			576: {
                slidesPerView: 3,
                spaceBetween: 10
			},
		}
	})

}
function giaiphap(){
    let productplus = new Swiper('.giaiphap-plus .swiper-container', {
        speed: 1000,
        slidesPerView: 3,
        spaceBetween: 20,
        autoplay: true,
        loop: true,
        navigation: {
            nextEl: '.giaiphap-plus .swiper-next',
            prevEl: '.giaiphap-plus .swiper-prev'
        },
        pagination: {
            el: '.giaiphap-plus .swiper-pagination',
            clickable: true
        },

        breakpoints: {
			1025: {
                slidesPerView: 2,
                spaceBetween: 10
			},
			576: {
                slidesPerView: 1,
                spaceBetween: 10
			},
		}
	})
}
function gallery(){
    var galleryThumbs = new Swiper('.product-detail .gallery-thumbs', {
        spaceBetween: 10,
        slidesPerView: 5,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
			768: {
                slidesPerView: 4,
                spaceBetween: 10
			},
			576: {
                slidesPerView: 3,
                spaceBetween: 10
			},
			375: {
                slidesPerView: 2,
                spaceBetween: 10
			},
		},
        });
    var galleryTop = new Swiper('.product-detail .gallery-top', {
    spaceBetween: 10,
    autoplay: true,
    speed: 1000,
    navigation: {
        nextEl: '.product-detail .swiper-next',
        prevEl: '.product-detail .swiper-prev',
    },
    thumbs: {
        swiper: galleryThumbs
    }
    });
    let productplus = new Swiper('.product-plus .swiper-container', {
        speed: 1000,
        slidesPerView: 3,
        spaceBetween: 20,
        loop: true,
        autoplay: true,
        navigation: {
            nextEl: '.product-plus .swiper-next',
            prevEl: '.product-plus .swiper-prev'
        },
        pagination: {
            el: '.product-plus .swiper-pagination',
            clickable: true
        },

        breakpoints: {
			1025: {
                slidesPerView: 2,
                spaceBetween: 10
			},
			576: {
                slidesPerView: 1,
                spaceBetween: 10
			},
		}
	})
}


function toggleViews(){
    $('.product-detail .detail-wrapper .button-bottom .button').on('click', function(){
        $('.product-detail .detail-wrapper .content').toggleClass('active')
        $('.product-detail .detail-wrapper .button-bottom .button').toggleClass('active')
        $('.product-detail .detail-wrapper .button-bottom .button-2').toggleClass('active')
    })
    $('.product-detail .detail-wrapper .button-bottom .button-2').on('click', function(){
        $('.product-detail .detail-wrapper .content').toggleClass('active')
        $('.product-detail .detail-wrapper .button-bottom .button').toggleClass('active')
        $('.product-detail .detail-wrapper .button-bottom .button-2').toggleClass('active')
    })
}
function viewdetail(){
    var e =  $('.product-detail .detail-wrapper .content').outerHeight()
        console.log(e);
    if(e >= 114){
       $('.product-detail .detail-wrapper .button-bottom .button').css({
        "display": "block"
    })  
    }
    
}