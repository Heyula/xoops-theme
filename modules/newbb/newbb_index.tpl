<div class="newbb">

<div class="jumbotron newbb-header">
<h3>
    <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php" title="<{$index_title}>">
        <{$index_title}>
    </a>
</h3>

<p><{$index_desc}></p>

<{includeq file="db:newbb_index_menu.tpl"}>
</div><!-- .newbb-header jumbotron -->


<{foreachq item=category from=$categories}>
<table class="table">
      <thead class="newbb-head">
        <tr>
          <th style="width:50%;" class="newbb-topic-title">
          	<span class="glyphicon glyphicon-list" aria-hidden="true" style="padding-right:10px;"></span><i class="fas fa-list"></i> <{$category.cat_title}>
          </th>
          <th style="width:10%;" class="newbb-cat-title"><i class="fas fa-th-list"></i> <{$smarty.const._MD_NEWBB_TOPICS}></th>
          <th style="width:10%;" class="newbb-cat-title"><i class="fas fa-list-ol"></i> <{$smarty.const._MD_NEWBB_POSTS}></th>
          <th style="width:30%;" class="newbb-cat-title"><i class="fas fa-ellipsis-v"></i> <{$smarty.const._MD_NEWBB_LASTPOST}></th>
        </tr>
         <{if $category.cat_description}>
         <tr>
         	<th class="newbb-cat-desc" colspan="4"><{$category.cat_description}></th>
         </tr>
         <{/if}>
      </thead>
      <tbody>
      	<{foreachq item=forum from=$category.forums}>
        <tr>
          <th>
          	<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewforum.php?forum=<{$forum.forum_id}>" title="<{$forum.forum_name}>">
            	<{$forum.forum_name}>
        	</a>
        	<{if $forum.forum_desc != ""}>
        	<span><{$forum.forum_desc}></span>
        	<{/if}>
          </th>
          <td><{$forum.forum_topics}></td>
          <td><{$forum.forum_posts}></td>
          <td>
          	<{if $forum.forum_lastpost_subject}>
	            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewtopic.php?post_id=<{$forum.forum_lastpost_id}>">
	                    <{$forum.forum_lastpost_subject}>
	            </a> <{$smarty.const._MD_NEWBB_BY}> <{$forum.forum_lastpost_user}>
	            <span style="display: block"><{$forum.forum_lastpost_time}></span> 
	                
	        <{else}>
	            <{$smarty.const._AM_NEWBB_NOTOPIC}>
	        <{/if}>
	
	        <{if $forum.subforum}>
	            <{$smarty.const._MD_NEWBB_SUBFORUMS}><{$img_subforum}>
	                <{foreachq item=subforum from=$forum.subforum}>
	                    [<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewforum.php?forum=<{$subforum.forum_id}>"><{$subforum.forum_name}></a>]
	                <{/foreach}>
	        <{/if}>
          </td>
        </tr>
        <{/foreach}>
      </tbody>
    </table>
<{/foreach}>



<div class="row mb10">
    <div class="col-md-12">
        <{$img_forum_new}> = <{$smarty.const._MD_NEWBB_NEWPOSTS}>
        <{$img_forum}> = <{$smarty.const._MD_NEWBB_NONEWPOSTS}>
    </div>
</div>

<div class="row">
    <div class="col-md-8 mb10">
        <form class="input-group" action="<{$xoops_url}>/modules/<{$xoops_dirname}>/search.php" method="post" name="search" id="search" role="search">
            <input name="term" id="term" type="text" class="form-control" placeholder="<{$smarty.const.THEME_NEWBB_SEARCH_FORUM}>">
            <input type="hidden" name="forum" id="forum" value="all">
            <input type="hidden" name="sortby" id="sortby" value="p.post_time desc">
            <input type="hidden" name="searchin" id="searchin" value="both">

            <span class="input-group-btn">
                <button class="btn btn-primary" type="submit" id="submit"><{$smarty.const.THEME_FORUM_SEARCH}></button>
            </span>
        </form>
    </div>
    <div class="col-md-4">
        <a class="btn btn-primary btn-block" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/search.php"><{$smarty.const.THEME_FORUM_ADVSEARCH}></a>
    </div>
</div>

<{if $currenttime}>
<div class="row">
    <div class="col-lg-12"><h3 class="nompl"><{$online.statistik}> <{$smarty.const._MD_NEWBB_STATS}></h3></div>
    <div class="col-sm-6 col-md-6">
        <ul class="list-unstyled lw30">
            <li><{$currenttime}></li>
            <li><{$lastvisit}></li>

            <li><{$smarty.const._MD_NEWBB_TOTALTOPICSC}>
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/list.topic.php" title="<{$smarty.const._MD_NEWBB_ALL}>">
                <{$stats[0].topic.total}>
            </a></li>

            <li><{$smarty.const._MD_NEWBB_TOTALPOSTSC}>
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewpost.php" title="<{$smarty.const._MD_NEWBB_ALLPOSTS}>">
                <{$stats[0].post.total}>
            </a></li>
            <{if $stats[0].digest.total}>
                <li><{$smarty.const._MD_NEWBB_TOTALDIGESTSC}>
                    <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/list.topic.php?status=digest" title="<{$smarty.const._MD_NEWBB_TOTALDIGESTSC}>">
                        <{$stats[0].digest.total}>
                    </a></li>
            <{/if}>

            <li><a class="btn btn-xs btn-primary" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewpost.php?status=new" title="<{$smarty.const._MD_NEWBB_VIEW_NEWPOSTS}>">
                <{$smarty.const._MD_NEWBB_VIEW_NEWPOSTS}>
            </a></li>
        </ul>
    </div>

    <div class="col-sm-6 col-md-6">
        <ul class="list-unstyled lw30">
            <{if $userstats}>
                <li><{*$userstats.lastvisit*}>
                    <{$userstats.lastpost}></li>
            <{/if}>

            <li><{$smarty.const._MD_NEWBB_TODAYTOPICSC}> <{$stats[0].topic.day|default:0}></li>
            <li><{$smarty.const._MD_NEWBB_TODAYPOSTSC}> <{$stats[0].post.day|default:0}></li>

            <{if $userstats}>
                <li><{$userstats.topics}> | <{$userstats.posts}></li>
                    <{if $userstats.digests}>
                        <li><{$userstats.digests}></li>
                    <{/if}>
            <{/if}>
        </ul>
    </div>

</div>
<{/if}>

<{if $online}>
    <{includeq file="db:newbb_online.tpl"}>
<{/if}>


<{includeq file='db:newbb_notification_select.tpl'}>

</div><!-- .xoops-newbb -->
