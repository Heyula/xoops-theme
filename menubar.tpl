<{if $xoops_dirname=='newbb'}>
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/newbb/}>" title="Forum Index"><i class="far fa-comments"></i> Forum Index</a>
<a href="<{xoAppUrl modules/newbb/index.php?cat=4}>" title="General Forums">General Forums</a>
<a href="<{xoAppUrl modules/newbb/index.php?cat=7}>" title="Community Support">Community Support</a>
<a href="<{xoAppUrl modules/newbb/index.php?cat=2}>" title="Modules Support">Modules Support</a>
<a href="<{xoAppUrl modules/newbb/index.php?cat=1}>" title="Themes Support">Themes Support</a>
<a href="<{xoAppUrl modules/newbb/index.php?cat=3}>" title="Development">Development</a>
<a href="<{xoAppUrl modules/newbb/index.php?cat=10}>" title="International Support">International Support</a>
</div>
</div>
<{elseif $xoops_dirname=='news'}>	  
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/news}>">News</a>
<a href="<{xoAppUrl modules/news}>">World of XOOPS</a>
<a href="<{xoAppUrl modules/news}>">Developers</a>
<a href="<{xoAppUrl modules/news}>">Hacks</a>
<a href="<{xoAppUrl modules/news}>">Themes</a>
<a href="<{xoAppUrl modules/news}>">Archive</a>
<a href="<{xoAppUrl modules/news}>">Submit News</a>
</div>
</div>	  
<{elseif $xoops_dirname=='publisher'}>
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/publisher/category.php?categoryid=1}>">News</a>
<a href="<{xoAppUrl modules/publisher/category.php?categoryid=2}>">Modules</a>
<a href="<{xoAppUrl modules/publisher/category.php?categoryid=5}>">Developers</a>
<a href="<{xoAppUrl modules/publisher/category.php?categoryid=10}>">Hacks</a>
<a href="<{xoAppUrl modules/publisher/category.php?categoryid=3}>">Themes</a>
<a href="<{xoAppUrl modules/publisher/archive.php}>">Archive</a>
<a href="<{xoAppUrl modules/publisher/submit.php?op=add}>">Submit News</a>
</div>
</div>	
<{elseif $xoops_dirname=='smartfaq'}>
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/smartfaq/submit.php?op=add}>">Submit a Q&A</a>
<a href="<{xoAppUrl modules/smartfaq/request.php?op=add}>">Request a Q&A</a>
<a href="<{xoAppUrl modules/smartfaq/open_index.php}>">Open Questions</a>
</div>
</div>
<{elseif $xoops_dirname=='repository'}>
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/repository/submit.php}>">Submit Download</a>
<a href="<{xoAppUrl modules/repository/topten.php?list=hit}>">Popularity</a>
<a href="<{xoAppUrl modules/repository/topten.php?list=rate}>">Rating</a>
</div>
</div>	  
<{elseif $xoops_dirname=='extgallery'}>
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/extgallery/public-upload.php}>">Submit Theme</a>
<a href="<{xoAppUrl modules/extgallery/public-categories.php?id=1}>">Old Themes</a>
<a href="<{xoAppUrl modules/extgallery/public-categories.php?id=2}>">New Themes</a>
</div>
</div>
<{elseif $xoops_dirname=='wfchannel'}>
<div class="altmenu d-none d-sm-block">
<div class="container">
<a href="<{xoAppUrl modules/wfchannel/index.php?cid=24}>">Why XOOPS?</a>
<a href="<{xoAppUrl modules/wfchannel/index.php?cid=25}>">XOOPS Features</a>
<a href="<{xoAppUrl modules/wfchannel/index.php?cid=26}>">XOOPS Hall of Fame</a>
<a href="<{xoAppUrl modules/wfchannel/index.php?cid=3}>">Terms And Conditions Of Use</a>
</div>
</div>	    
<{/if}>




