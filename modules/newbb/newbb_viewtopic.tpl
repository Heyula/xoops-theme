<div class="newbb-viewtopic">
    <ol class="breadcrumb">
        <li><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php"><{$smarty.const._MD_NEWBB_FORUMHOME}></a>&nbsp;/&nbsp;</li>
        <li><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?cat=<{$category.id}>"><{$category.title}>&nbsp; </a></li>
        <{if $parentforum}>
            <{foreach item=forum from=$parentforum}>
                <li><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewforum.php?forum=<{$forum.forum_id}>"><{$forum.forum_name}></a></li>
            <{/foreach}>
        <{/if}>
        <li><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewforum.php?forum=<{$forum_id}>"><{$forum_name}></a>&nbsp;</li>
        <li class="active">&nbsp;/<{$topic_title|strip_tags}> <{if $topicstatus}><{$topicstatus}><{/if}></li>
    </ol>
	
   	<div class="page-header" style="background: #eeeeee; padding: 3px;">
   		<div class="row">
   		<{if $viewer_level gt 1}> <!-- wenn admin dann ADMINOPERATIONEN -->
   			<div class="col-md-6 col-sm-6" style="padding: 7px 20px;"> <!-- Posts Operationen -->
   				<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewtopic.php?topic_id=<{$topic_id}>&amp;status=active#admin" title="<{$smarty.const._MD_NEWBB_TYPE_ADMIN}>"><{$smarty.const._MD_NEWBB_TYPE_ADMIN}></a> |
            	<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewtopic.php?topic_id=<{$topic_id}>&amp;status=pending#admin" title="<{$smarty.const._MD_NEWBB_TYPE_PENDING}>"><{$smarty.const._MD_NEWBB_TYPE_PENDING}></a> |
            	<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewtopic.php?topic_id=<{$topic_id}>&amp;status=deleted#admin" title="<{$smarty.const._MD_NEWBB_TYPE_DELETED}>"><{$smarty.const._MD_NEWBB_TYPE_DELETED}></a>
   			</div>
	   		<div class="col-md-6 col-sm-6" style="padding-bottom: 5px;"> <!-- Themenoptionen -->
	   		<select class="form-control" name="topicoption" id="topicoption" onchange="if(this.options[this.selectedIndex].value.length >0 ) { window.document.location=this.options[this.selectedIndex].value;}">
				<option value=""><{$smarty.const._MD_NEWBB_TOPICOPTION}></option>
			    <{if $viewer_level gt 1}>
			    <{foreach item=act from=$admin_actions}>
			    <option value="<{$act.link}>"><{$act.name}></option>
			    <{/foreach}>
			    <{/if}>
			    <{if count($adminpoll_actions) > 0 }>
			    <option value="">--------</option>
			    <option value=""><{$smarty.const._MD_POLLOPTIONADMIN}></option>
			    <{foreachq item=actpoll from=$adminpoll_actions}>
			    <option value="<{$actpoll.link}>"><{$actpoll.name}></option>
			    <{/foreach}>
			    <{/if}>
			</select>
			</div>
		<{/if}>
		<div class="col-md-6 col-sm-6">
			<{if !$xoops_isuser}>
                <a href="<{$xoops_url}>/user.php" title="<{$smarty.const.THEME_FORUM_REGISTER}>" class="btn btn-sm btn-success"><{$smarty.const.THEME_FORUM_REGISTER}></a>
            <{/if}>
		</div>
		<div class="col-md-6 col-sm-6 text-right">
			<select class="form-control" name="viewmode" id="viewmode" onchange="if(this.options[this.selectedIndex].value.length >0 ) { window.location=this.options[this.selectedIndex].value;}">
                <option value=""><{$smarty.const._MD_NEWBB_VIEWMODE}></option>
                <{foreach item=act from=$viewmode_options}>
                    <option value="<{$act.link}>"><{$act.title}></option>
                <{/foreach}>
            </select>
		</div>
		</div>
   	</div>
	
	<!-- rating -->
	<{if $rating_enable && $forum_post && $forum_reply}>
    <div class="col-sm-4 col-md-4">
    	<select class="form-control" name="rate" id="rate" onchange="if(this.options[this.selectedIndex].value.length >0 ) { window.document.location=this.options[this.selectedIndex].value;}">
        	<option value=""><{$smarty.const._MD_NEWBB_RATE}></option>
            <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/ratethread.php?topic_id=<{$topic_id}>&amp;forum=<{$forum_id}>&amp;rate=5"><{$smarty.const._MD_NEWBB_RATE5}></option>
            <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/ratethread.php?topic_id=<{$topic_id}>&amp;forum=<{$forum_id}>&amp;rate=4"><{$smarty.const._MD_NEWBB_RATE4}></option>
            <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/ratethread.php?topic_id=<{$topic_id}>&amp;forum=<{$forum_id}>&amp;rate=3"><{$smarty.const._MD_NEWBB_RATE3}></option>
            <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/ratethread.php?topic_id=<{$topic_id}>&amp;forum=<{$forum_id}>&amp;rate=2"><{$smarty.const._MD_NEWBB_RATE2}></option>
            <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/ratethread.php?topic_id=<{$topic_id}>&amp;forum=<{$forum_id}>&amp;rate=1"><{$smarty.const._MD_NEWBB_RATE1}></option>
		</select>
    </div>
    <{/if}>



    <{if $viewer_level gt 1 && $topic_status == 1}>
        <{$smarty.const._MD_NEWBB_TOPICLOCK}>
    <{/if}>
    <{foreach item=topic_post from=$topic_posts}>
        <{include file="db:newbb_thread.tpl" topic_post=$topic_post mode=$mode}>
    <{foreachelse}>
        <{$smarty.const._MD_NEWBB_ERRORPOST}>
    <{/foreach}>
    

    <{if $mode gt 1}>
    </form>
    <{/if}>

    <div class="newbb-viewtopic-footer">
    <div class="row mb10">
        <div class="col-sm-6 col-md-6 hidden-xs">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/reply.php?topic_id=<{$topic_id}>" title="<{$smarty.const.THEME_FORUM_REPLY}>" class="btn btn-sm btn-primary"><{$smarty.const.THEME_FORUM_REPLY}></a>

            <{if $viewer_level gt 1}>
                <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/newtopic.php?forum=<{$forum_id}>" title="<{$smarty.const.THEME_FORUM_NEWTOPIC}>" class="btn btn-sm btn-primary"><{$smarty.const.THEME_FORUM_NEWTOPIC}></a>
            <{else}>
                <a href="<{$xoops_url}>/user.php" title="<{$smarty.const.THEME_FORUM_REGISTER}>" class="btn btn-sm btn-success"><{$smarty.const.THEME_FORUM_REGISTER}></a>
            <{/if}>

            <{if $quickreply.show}>
                <button href="#quickReply" data-toggle="collapse" title="" class="btn btn-sm btn-info">Quick Reply</button>
            <{/if}>

            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/polls.php?op=add&topic_id=<{$topic_id}>" title="<{$smarty.const.THEME_ADD_POLL}>" class="btn btn-sm btn-info"><{$smarty.const.THEME_ADD_POLL}></a>
        </div>

        <{*<div class="xoopsform col-sm-4 col-md-4">*}>
            <{*<{$forum_jumpbox}>*}>
        <{*</div>*}>

        
    </div>
    <div class="text-right generic-pagination">
    	<{$forum_page_nav|replace:'form':'div'|replace:'id="xo-pagenav"':''}>
    </div>
    <{if $quickreply.show}>
        <div class="col-md-12 collapse newbb-quick-reply" id="quickReply"><{$quickreply.form}></div>
    <{/if}>
    </div>
    <!-- .newbb-viewtopic-footer -->


<{*<{includeq file='db:newbb_notification_select.tpl'}>*}>




<{if $online}>
	<div class="newbb-online">
    <div class="newbb-online-title"><{$smarty.const._MD_NEWBB_BROWSING}>&nbsp;
    	<{foreachq item=user from=$online.users}>
        	<a href="<{$user.link}>">
            	<{if $user.level eq 2}><!-- If is admin -->
                	<label class="label label-success"><{$user.uname}></label>
                <{elseif $user.level eq 1}><!-- If is moderator -->
                	<label class="label label-warning"><{$user.uname}></label>
                <{else}>
                     <label class="label label-info"><{$user.uname}></label>
                <{/if}>
             </a>
         <{/foreach}>

            <{if $online.num_anonymous}>
                    <span class="label label-default"><{$online.num_anonymous}> <{$smarty.const._MD_NEWBB_ANONYMOUS_USERS}></span>
            <{/if}>
       </div>     
	</div>
	<!-- .newbb-online-users -->
<{/if}>


    <{*<script type="text/javascript">*}>
    <{*if (document.body.scrollIntoView && window.location.href.indexOf('#') == -1){*}>
        <{*var el = xoopsGetElementById('<{$forum_post_prefix}><{$post_id}>');*}>
        <{*if (el){*}>
            <{*el.scrollIntoView(true);*}>
        <{*}*}>
    <{*}*}>
    <{*</script>*}>

</div>
<!-- .newbb-viewforum -->
