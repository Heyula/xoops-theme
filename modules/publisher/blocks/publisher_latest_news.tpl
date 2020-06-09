<{if $block.template == 'normal'}>
    <{if $block.latestnews_scroll }>
        <marquee behavior='scroll' align='center' direction='<{$block.scrolldir}>' height='<{$block.scrollheight}>' scrollamount='3' scrolldelay='<{$block.scrollspeed}>' onmouseover='this.stop()' onmouseout='this.start()'>
    <{/if}>
    <{section name=i loop=$block.columns}>
        <ul>
            <{foreach item=item from=$block.columns[i]}>
                <li><{if $item.posttime }>[ <{$item.posttime}> ]:<{/if}> <{$item.topic_title}> <{$item.title}></li>
            <{/foreach}>
        </ul>
    <{/section}>
    <{if $block.latestnews_scroll }>
        </marquee>
    <{/if}>
<{/if}>

<{if $block.template == 'extended'}>

    <{php}>
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.style.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/publisher.css');
    <{/php}>

    <{if $block.latestnews_scroll }>
        <marquee behavior='scroll' align='center' direction='<{$block.scrolldir}>' height='<{$block.scrollheight}>' scrollamount='3' scrolldelay='<{$block.scrollspeed}>' onmouseover='this.stop()' onmouseout='this.start()'>
    <{/if}>
				<{section name=i loop=$block.columns}>
				<{foreach item=item from=$block.columns[i]}>
				<div class="col-xl-6">
				   <div class="media flex-column flex-sm-row mt-0 mb-3 textp">
                        <div class="mr-sm-3 mb-2 mb-sm-0 d-none d-sm-block">
                             <{$item.image}>
                        </div>
                        <div class="media-body">
                            <h6 class="media-title"><{$item.title}></h6>
							<div class="olc1"><i class="far fa-calendar-alt"></i> <{$item.posttime}>  <i class="fas fa-table"></i> <{$item.topic_title}> <i class="far fa-eye"></i> <{$item.read}></div>
							<{if $block.letters != 0}>
							<{$item.text}>
							<{/if}>
                        </div>
                    </div>	
				 <div class="d-md-none">
					<hr>
				</div>
				</div>
				<{/foreach}>	
				<{/section}>
    <{if $block.latestnews_scroll }>
        </marquee><{/if}>

<{/if}>

<{if $block.template == 'ticker'}>
    <marquee behavior='scroll' align='middle' direction='<{$block.scrolldir}>' height='<{$block.scrollheight}>' scrollamount='3' scrolldelay='<{$block.scrollspeed}>' onmouseover='this.stop()'
             onmouseout='this.start()'>
        <{section name=i loop=$block.columns}>
            <div style="padding:10px;">
                <{foreach item=item from=$block.columns[i]}> &nbsp;<{$item.title}>&nbsp; <{/foreach}>
            </div>
        <{/section}>
    </marquee>
<{/if}>

<{if $block.template == 'slider1'}>

    <{php}>$GLOBALS['xoTheme']->addScript('browse.php?Frameworks/jquery/jquery.js');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.style.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/publisher.css');<{/php}>
    <script type="text/javascript">
        jQuery(document).ready(function () {

            //Execute the slideShow, set 4 seconds for each images
            slideShow(5000);

        });

        function slideShow(speed) {


            //append a LI item to the UL list for displaying caption
            $('ul.pub_slideshow1').append('<LI id=pub_slideshow1-caption class=caption><DIV class=pub_slideshow1-caption-container><H3></H3><P></P></DIV></LI>');

            //Set the opacity of all images to 0
            $('ul.pub_slideshow1 li').css({opacity: 0.0});

            //Get the first image and display it (set it to full opacity)
            $('ul.pub_slideshow1 li:first').css({opacity: 1.0});

            //Get the caption of the first image from REL attribute and display it
            $('#pub_slideshow1-caption h3').tpl($('ul.pub_slideshow1 a:first').find('img').attr('title'));
//        $('#pub_slideshow1-caption').find('h3').html($('ul.pub_slideshow1 a:first').find('img').attr('title')); //suggested by PhpStorm

            $('#pub_slideshow1-caption p').tpl($('ul.pub_slideshow1 a:first').find('img').attr('alt'));

            //Display the caption
            $('#pub_slideshow1-caption').css({opacity: 0.7, bottom: 0});

            //Call the gallery function to run the slideshow
            var timer = setInterval('gallery()', speed);

            //pause the slideshow on mouse over
            $('ul.pub_slideshow1').hover(
                    function () {
                        clearInterval(timer);
                    },
                    function () {
                        timer = setInterval('gallery()', speed);
                    }
            );

        }

        function gallery() {


            //if no IMGs have the show class, grab the first image
            var current = ($('ul.pub_slideshow1 li.show') ? $('ul.pub_slideshow1 li.show') : $('#ul.pub_slideshow1 li:first'));

            //Get next image, if it reached the end of the slideshow, rotate it back to the first image
            var next = ((current.next().length) ? ((current.next().attr('id') == 'pub_slideshow1-caption') ? $('ul.pub_slideshow1 li:first') : current.next()) : $('ul.pub_slideshow1 li:first'));

            //Get next image caption
            var title = next.find('img').attr('title');
            var desc = next.find('img').attr('alt');

            //Set the fade in effect for the next image, show class has higher z-index
            next.css({opacity: 0.0}).addClass('show').animate({opacity: 1.0}, 1000);

            //Hide the caption first, and then set and display the caption
            $('#pub_slideshow1-caption').animate({bottom: -70}, 300, function () {
                //Display the content
                $('#pub_slideshow1-caption h3')._createTrPlaceholder(title);
                $('#pub_slideshow1-caption p').tpl(desc);
                $('#pub_slideshow1-caption').animate({bottom: 0}, 500);
            });

            //Hide the current image
            current.animate({opacity: 0.0}, 1000).removeClass('show');

        }
    </script>
    <{section name=i}>

        <ul class="pub_slideshow1">
        <{foreach item=item from=$block.columns[i]}>
            <li>
                <a href="<{$item.itemurl}>"><img src="<{$item.item_image}>" width="100%" height="<{$block.imgheight}>" title="<{$item.alt}>" alt="<{$item.text}>"></a>
            </li>
        <{/foreach}>
        </ul><{/section}>

<{/if}>

<{if $block.template == 'slider2'}>

    <{php}>$GLOBALS['xoTheme']->addScript('browse.php?Frameworks/jquery/jquery.js');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/jquery.popeye.style.css');
        $GLOBALS['xoTheme']->addStylesheet(PUBLISHER_URL . '/assets/css/publisher.css');
        $GLOBALS['xoTheme']->addScript(PUBLISHER_URL . '/assets/js/jquery.easing.js');
        $GLOBALS['xoTheme']->addScript(PUBLISHER_URL . '/assets/js/script.easing.js');<{/php}>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#lofslidecontent45').lofJSidernews({
                interval: 4000,
                direction: 'opacity',
                duration: 1000,
                easing: 'easeInOutSine'
            });
        });

    </script>
    <{section name=i}>
        <div id="lofslidecontent45" class="lof-slidecontent">

            <div class="lof-main-outer">
                <ul class="lof-main-wapper">
                    <{foreach item=item from=$block.columns[i]}>
                        <li>
                            <img src="<{$item.item_image}>" alt="<{$item.alt}>" width="<{$block.imgwidth}>" height="<{$block.imgheight}>">
                        </li>
                    <{/foreach}>
                </ul>
            </div>

            <div class="lof-navigator-outer">
                <ul class="lof-navigator">
                    <{foreach item=item from=$block.columns[i]}>
                        <li>
                            <div>
                                <img src="<{$item.item_image}>" alt="" width="60" height="60">

                                <h3><a href="<{$item.itemurl}>"> <{$item.alt}> </a></h3>
                            </div>
                        </li>
                    <{/foreach}>
                </ul>
            </div>
        </div>
        <script type="text/javascript">

        </script>
    <{/section}>

<{/if}>
