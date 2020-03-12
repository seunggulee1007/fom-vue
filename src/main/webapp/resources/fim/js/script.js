$(document).ready(function() { 
    var $header = $('#header');
    var $gnb = $('#gnb');
    var $container = $('#container');    
    var $tabList = $('.tab-area .lst-tab');

    /* header */   
    
    //util menu
    $header.find('.header__util .header__util-item .header__util-menu').on('click', function() {
        $(this).parent().toggleClass('header__util-item--active');
        $('.popup__dimmed').show();
        
        if ($(this).hasClass('header__util-bookmark')) {
            $('.popup__dimmed').hide();
            $('.popup-dialog--bookmark').toggleClass('popup-wrap--active');
        } else if ($(this).hasClass('header__util-allmenu')) {
            $('.popup__dimmed').show();
            $('.popup-layer--allmenu').toggleClass('popup-wrap--active');
            if ($('.popup-dialog--bookmark').hasClass('popup-wrap--active')){
                $('.popup-dialog--bookmark').removeClass('popup-wrap--active');
                $header.find('.header__util-item').removeClass('header__util-item--active');
            }
        }
    });
    
    //gnb-bg_main
    $gnb.children('.lst-gnb').on('mouseenter', function() {
        $header.addClass('gnb--open');        
    });
    $gnb.on('mouseleave', function() {
        $header.removeClass('gnb--open');
    });
    $gnb.on('focusin', function() {
        $header.addClass('gnb--open');
    });
    $gnb.find('.lst-gnb .gnb_depth1:last .lst-gnb-sub .gnb_depth2:last a').on('focusout', function() {
        $header.removeClass('gnb--open');
    });
    $header.find('.header__util .header__util-item:last a').on('focusin', function() {
        $header.removeClass('gnb--open');
    });  
    
    /* popup close */
    $('.popup__btn-close').on('click', function() {
        event.preventDefault();
        $(this).parents('.popup-wrap').removeClass('popup-wrap--active');
        $('.popup__dimmed').hide();

        if ($(this).parents('.popup-wrap').hasClass('popup-dialog--bookmark')) {
            $header.find('.header__util .header__util-item').removeClass('header__util-item--active');
        } 
    })

    $('.popup-wrap').on('click', function(e) {
		if($('.popup-wrap').is(e.target)) {
			$(this).hide();
			$('.popup__dimmed').hide();
		}
	});

    /* lnb */
    var $lnb = $('.lst-lnb');
    var $lnbDepth1 = $lnb.find('.lst-lnb__item');
    var $lnbSub = $lnbDepth1.find('.lst-lnb-sub');
    var $lnbDepth2 = $lnbSub.find('.list-lnb-sub__item');

    $lnbDepth1.on('click', function() {
        $(this).toggleClass('lst-lnb__item--active');
        if ($(this).hasClass('lst-lnb__item--active')) {
            $(this).find('.lst-lnb__menu > .icon-arrow--ms span').text('메뉴 닫기');
        } else {
            $(this).find('.lst-lnb__menu > .icon-arrow--ms span').text('메뉴 열기');            
        }
    });

    $container.find('.lnb .btn-lnb').on('click', function() {
        $container.toggleClass('lnb--close');
    });
    
    /* container */    

    //sub - bookmark add btn
    $container.find('.btn-box--absolute .btn-bookmark').on('click', function() {
        $(this).toggleClass('btn-bookmark--active');        
    })

    //tab - openclosing
    $tabList.find('.lst-tab__item .lst-tab__menu').on('click', function() {
        var tabNum = $(this).parent().index();
        
        $(this).parent().addClass('lst-tab__item--active').siblings().removeClass('lst-tab__item--active');

        $(this).parents('.tab-area').next('.tab-cnt').children().eq(tabNum).addClass('lst-tab-cnt--active').siblings().removeClass('lst-tab-cnt--active')
    })

    //btn-alert
    $container.find('.btn-alert').on('click', function() {
        if ($(this).hasClass('btn-alert--active')) {
            $(this).removeClass('btn-alert--active').siblings('.btn-alert').addClass('btn-alert--active');
        } else{
            $(this).addClass('btn-alert--active').siblings().removeClass('btn-alert--active');
        }
    });

    //dropdown_button
    var $dropdown = $('.dropdown')
    $dropdown.find('.dropdown__button').on('click', function() {
        $(this).parent('.dropdown').toggleClass('dropdown--active');
    });

    $dropdown.find('.dropdown__list .dropdown__item .dropdown__menu').on('click', function() {
        var selectLi = $(this).children('.dropdown__menu-txt').text();
        $(this).parents('.dropdown').removeClass('dropdown--active').find('.dropdown__button .dropdown__button-text').text(selectLi)        
    })

    //search-form
    var $search = $('.search-form');
    
    $search.on('focusin', function() {
        $(this).addClass('search-form--active');
    })

    $search.on('focusout', function() {
        if ($(this).find('input[type="search"]').val() == '') {
            $(this).removeClass('search-form--active');
        }
    })

    /* datepicker */
    var $datepicker = $('.datepicker');
    var $dateCalendar = $datepicker.find('.datepicker__calendar');
    var $dateYearBox = $dateCalendar.next('.datepicker__year-box');

    //datepicker_button
    $datepicker.find('.input-field__btn-datepicker').on('click', function() {
        $(this).parents('.datepicker').toggleClass('datepicker--active');
        
        //date-set

    })
    
    //calendar
    $dateCalendar.find('.datepicker__btn-title').on('click', function() {
        $(this).parent().next('.datepicker__year-box').show();
        
    })
    
    //select date
    $dateCalendar.find('.datepicker__date-box table tbody tr td .datepicker__btn-date').on('click', function() {

        //mark
        $(this).parent().toggleClass('datepicker__date--selected').siblings().removeClass('datepicker__date--selected').parent().siblings().children().removeClass('datepicker__date--selected');        

        //value change
        var pickYear = $(this).parents('.datepicker__date-box').prev().find('.datepicker__btn-title-txt').text().substr(2, 2);
        var pickMonth = $(this).parents('.datepicker__date-box').prev().find('.datepicker__btn-title-txt').text().substr(6, 2);
        var pickDate = $(this).find('.datepicker__btn-date-txt').text();
        var pickVal = pickYear + '/' + pickMonth + '/' + pickDate;
                
        $(this).parents('.datepicker__calendar').prev().find('.input-field__input').val(pickVal);
    })

    //year-box
    $dateYearBox.find('.datepicker__lst-menu').on('click', function() {
        $(this).parent().addClass('datepicker__lst-item--active').siblings().removeClass('datepicker__lst-item--active');
       
        var dateTitYear = $(this).parents('.datepicker--active').find('.datepicker__lst-year .datepicker__lst-item--active .datepicker__lst-menu-txt').text();
        var dateTitMonth = $(this).parents('.datepicker--active').find('.datepicker__lst-month .datepicker__lst-item--active .datepicker__lst-menu-txt').text();
        var dateTitYyMm = dateTitYear + ' ' + dateTitMonth;
        
        $(this).parents('.datepicker__year-box').find('.datepicker__title .datepicker__title-txt').text(dateTitYyMm)
    
        $dateYearBox.find('.datepicker__btn-close').on('click', function() {
            $(this).parents('.datepicker__year-box').siblings('.datepicker__calendar').find('.datepicker__btn-title-txt').text(dateTitYyMm);

            /* if ($(this).parents('.datepicker__calendar').prev().find('.input-field__input').val() != '') {
                $(this).parents('.datepicker__calendar').prev().find('.input-field__input').val().string.substr(0,4).val(dateTitYear + '/' + dateTitMonth)                
            }  */
            
            $(this).parent().hide();
        })        
    })    



/*  community
    //동호회등록 탈퇴처리 체크유무
    var $chkMemberLeave = $('.checkbox_member-leave');    
    
    $chkMemberLeave.change(function() {        
        if ($chkMemberLeave.prop('checked')) {
            $(this).parents('.table__td').next().removeClass('table__td--disabled').find('.datepicker .input-field__input').attr('readonly', false).siblings('.input-field__btn-datepicker').attr('disabled', false);
            $(this).parents('.table__td').next().next().removeClass('table__td--disabled').find('.input-field .input-field__input').attr('readonly', false);
        } else {
            $(this).parents('.table__td').next().addClass('table__td--disabled').find('.datepicker .input-field__input').attr('readonly', true).siblings('.input-field__btn-datepicker').attr('disabled', true);
            $(this).parents('.table__td').next().next().addClass('table__td--disabled').find('.input-field .input-field__input').attr('readonly', true);
        }
    })    */ 
});
