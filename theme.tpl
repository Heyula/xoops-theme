<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<{$xoops_langcode}>" lang="<{$xoops_langcode}>">
<head>
	<!-- Assign Theme name -->
	<{assign var=theme_name value=$xoTheme->folderName}>
	<meta http-equiv="content-language" content="<{$xoops_langcode}>"/>
	<meta http-equiv="content-type" content="text/html; charset=<{$xoops_charset}>"/>
	<meta name="robots" content="<{$xoops_meta_robots}>"/>
	<meta name="keywords" content="<{$xoops_meta_keywords}>"/>
	<meta name="description" content="<{$xoops_meta_description}>"/>
	<meta name="rating" content="<{$xoops_meta_rating}>"/>
	<meta name="author" content="<{$xoops_meta_author}>"/>
	<meta name="copyright" content="<{$xoops_meta_copyright}>"/>
	<meta name="generator" content="XOOPS"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<!-- Xoops Title -->
	<title><{if $xoops_dirname == "system"}><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}><{else}><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> - <{$xoops_sitename}><{/if}><{/if}></title>

	<!-- Xoops Favicon -->
	<link rel="shortcut icon" href="<{xoImgUrl}>images/favicon.ico">
	<link rel="icon" type="image/x-icon" href="<{xoImgUrl}>images/favicon.ico" />
	<link rel="icon" type="image/png" href="<{xoImgUrl}>images/favicon.png" />
	<link rel="icon" type="image/gif" href="<{xoImgUrl}>images/favicon.gif" />
	
	<!-- JS -->
	<script src="<{xoImgUrl}>/js/jquery-3.4.1.slim.min.js"></script>
	<script src="<{xoImgUrl}>/js/popper.min.js"></script>
	<script src="<{xoImgUrl}>/js/bootstrap.min.js"></script>
	<script src="<{xoImgUrl}>/js/bootstrap.bundle.min.js"></script>
	<script src="<{xoImgUrl}>/js/slick.js"></script>
	<script src="<{xoImgUrl}>/fontawesome/js/all.min.js"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="<{xoImgUrl}>/css/bootstrap.min.css">
	<link rel="stylesheet" href="<{xoImgUrl}>/css/bootstrap-grid.css">
	<link rel="stylesheet" href="<{xoImgUrl}>/css/style.css">
	<link rel="stylesheet" href="<{xoImgUrl}>/fontawesome/css/all.min.css">

	<{$xoops_module_header}>
	
</head>

<body>
	<!-- logo and top menu -->
	<{includeq file="$theme_name/homemenu.tpl"}>
	<!-- Slider and submenu -->	
	<{includeq file="$theme_name/slider-and-menu.tpl"}>
	<!-- Module submenus -->	
	<{includeq file="$theme_name/menubar.tpl"}>	  

	  
<{if $smarty.server.PHP_SELF=='/index.php'}> 
<div class="container">
    <div class="row">
		<!-- Start Publisher Recent Articles -->
        <div class="col-xl-6">
			<{block id=80}>
        </div>
		<!-- End Publisher Recent Articles -->
		
		<!-- Start Newbb Recent Posts -->
		<div class="col-xl-6">
			<{block id=92}>
		</div>
		<!-- End Newbb Recent Posts -->
		 
		<!-- Start Publisher image Latest News  --> 
		<div class="col-xl-12">
			<div class="job-box">
				<div class="job-box-filter">
					<h5><i class="far fa-newspaper"></i> Latest news</h5>
				</div>
					<div class="inbox-message">
						<div class="card-body pb-0">
							<div class="row">
								<{block id=87}>
							</div>
						</div>
					</div>
			</div>
		</div>
		<!-- End Publisher image Latest News  -->
		 
		<!-- Start System Recent Comments  -->
		<div class="col-xl-6">
			<{block id=10}>
		</div>
		<!-- End System Recent Comments  -->
		
		<!-- Start Githup Recent Comments  -->
		<div class="col-xl-6">
			<{includeq file="$theme_name/githup.tpl"}>
		</div>
		<!-- End Githup Recent Comments  -->
    </div>
</div>






<!-- Full Width Gradient CTA -->
   <section class="as-cta-full-gradient my-4 py-5 px-3">
      <div class="container">
         <div class="row">
            <div class="col-sm-12 col-md-7 col-lg-8">
               <div class="as-cta-desc">
                  <div class="yazixoops"> XOOPS.&nbsp;</div> <div class="xoopsk">Powered by You!</div>
                  <p class="mb-0">Xoops is maintained by a vibrant community around the world that works, every day,to create a great CMS for you.Xoops, Open Source, User friendly, Secure.</p>
               </div>
            </div>
            <div class="col-sm-12 col-md-5 col-lg-4 align-self-center">
               <div class="as-cta-btn">
                  <a href="#" class="btn btn-warning2 btn-lg"><i class="fab fa-github-square"></i> Xoops @ GitHub </a>
				  <a href="#" class="btn btn-warning2 btn-lg"><i class="fas fa-code"></i> XOOPS @ SourceForge</a>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Full Width Gradient CTA -->
<{/if}>



<{if $smarty.server.PHP_SELF!='/index.php'}>
<div style="margin-top:10px;"></div>
<div class="container">
<div class="row">
	<div class="col-xl-9">
		<div class="job-box">
			<div class="inbox-message">
				<div class="card-body pb-0">
					<div class="row">
						<!-- Start content module page -->
						<{if $xoops_contents && ($xoops_contents != ' ') }>
						<{$xoops_contents}>
						<{/if}>
						<!-- End content module -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-xl-3">
		<div class="job-box">
			<!-- Start right blocks loop -->
			<{if $xoops_showrblock}>
				<{foreach item=block from=$xoBlocks.canvas_right}>
				<{includeq file="$theme_name/theme_blockright.tpl"}>
				<{/foreach}>
			<{/if}>
			<!-- End right blocks loop -->
		</div>
	</div>
</div>
</div>
<{/if}>


<div class="section hk-features">
    <div class="container text-center">
        <div class="row">
            <div class="col-12 col-md-4 ">
                <div class="hk-features-box">
                    <h3 class="mt-3">Who is Online</h3>
                    <p class="mt-3 mb-0">
                        <{block id=7}>
                    </p>
                </div>
            </div>
            <div class="col-12 col-md-4 seperator">
                <div class="hk-features-box ">
                    <h3 class="mt-3">New Members</h3>
                    <p class="mt-3 mb-0">
                        <{block id=9}>
                    </p>
                </div>
            </div>
            <div class="col-12 col-md-4 seperator">
                <div class="hk-features-box">
                    <h3 class="mt-3">Search</h3>
                    <p class="mt-3 mb-0">
                        <{block id=3}>
                    </p>
                </div>
            </div>
        </div>

    </div>
</div>

<!--footer starts from here-->
<footer class="footer">  
<{includeq file="$theme_name/footer.tpl"}>
</footer>

</body>
</html>