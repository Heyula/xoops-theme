<style>
	#forum-more-info-<{$topic_post.post_id}>{display: none}
</style>
<script>
    $( document ).ready(function() {
    	$( "#forum-show-more-<{$topic_post.post_id}>" ).click(function() {
		  $( "#forum-more-info-<{$topic_post.post_id}>" ).toggle("slow");
		});
    });
</script>
<div class="post-body" style="">


	<div class="post-text post-text-mob">
		<{if $topic_post.post_id > 0}>
           <span style="position: absolute; right: 25px;">
           	<a style="color: #666666; font-size: 12px" id="<{$forum_post_prefix}><{$topic_post.post_id}>" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewtopic.php?post_id=<{$topic_post.post_id}>#<{$topic_post.post_id}>"><i class="fas fa-hashtag"></i><{$topic_post.post_no}></a>
           </span>
        <{/if}>
		
		                <div class="col-md-12">
                            <div class="candidates-img float-left mr-4">
							<{if $topic_post.poster.avatar != "blank.gif"}>
							<img style="max-width: 72px;" src="<{$xoops_upload_url}>/<{$topic_post.poster.avatar}>" alt="<{$topic_post.poster.name}>" class="img-circle img-responsive img-thumbnail">
							<{else}>
							<img style="max-width: 72px;" src="<{$xoops_upload_url}>/avatars/blank.gif" alt="<{$topic_post.poster.name}>" class="img-circle img-responsive img-thumbnail">
							<{/if}>
                            </div>
                            <div class="candidates-list-desc job-single-meta  pt-2">
                                <h5 class="mb-2 f-19"><i class="fas fa-bars"></i> <{$topic_post.post_title}></h5>
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item mr-4">
                                        <p class="text-muted f-15 mb-0"><i class="far fa-calendar-alt"></i> <{$topic_post.post_date}></p>
                                    </li>
                                    <li class="list-inline-item mr-4">
                                        <p class="f-15 mb-0"><i class="fas fa-user"></i> <{$topic_post.poster.link}></p>
                                    </li>
									<li class="list-inline-item mr-4">
                                        <p class="f-15 mb-0"><i class="fas fa-users-cog"></i> <{$topic_post.poster.rank.title}></p>
                                    </li>
									<li class="list-inline-item mr-4">
                                        <p class="f-15 mb-0"><i class="fas fa-comments"></i> 
										<{$smarty.const._MD_NEWBB_POSTS}>:
										<{if $topic_post.poster.posts gt 0}>
											<a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/viewpost.php?uid=<{$topic_post.poster.uid}>" title="<{$smarty.const._ALL}>">
												<{$topic_post.poster.posts}>
											</a>
										<{else}>
											0
										<{/if}>
										</p>
                                    </li>
									<li class="list-inline-item mr-4">
                                        <p class="text-muted f-15 mb-0"><i class="far fa-calendar-alt"></i> Since: <{$topic_post.poster.regdate|substr:0:10}></p>
                                    </li>
                                </ul>
                            </div>
                        </div>
		<hr>           
     
		<{$topic_post.post_text}>
		<{if $topic_post.post_signature}>
			<div style="position: relative; margin-top: 5px; bottom:0px; right: 15px; text-align: right; font-style: italic; clear: both; border-top:1px solid #eeeeee; padding: 10px 0 0 0;">
				<{$topic_post.post_signature}>
			</div>
		<{/if}>
			
		<div style="position: relative; bottom:0px; right: 15px; padding-top: 15px; text-align: right; clear: both">
			<{if $mode gt 1 && $topic_post.poster.uid gt -1}>
		        <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/action.post.php?post_id=<{$topic_post.post_id}>&amp;op=split&amp;mode=1" title="<{$smarty.const._MD_NEWBB_SPLIT_ONE}>">
		            <{$smarty.const._MD_NEWBB_SPLIT_ONE}>
		        </a>
		
		        <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/action.post.php?post_id=<{$topic_post.post_id}>&amp;op=split&amp;mode=2" title="<{$smarty.const._MD_NEWBB_SPLIT_TREE}>">
		            <{$smarty.const._MD_NEWBB_SPLIT_TREE}>
		        </a>
		
		        <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/action.post.php?post_id=<{$topic_post.post_id}>&amp;op=split&amp;mode=3" title="<{$smarty.const._MD_NEWBB_SPLIT_ALL}>">
		            <{$smarty.const._MD_NEWBB_SPLIT_ALL}>
		        </a>
		            <input type="checkbox" name="post_id[]" id="post_id[<{$topic_post.post_id}>]" value="<{$topic_post.post_id}>">
		    <{else}>
		        <{if $topic_post.thread_buttons}>
		
		                <{foreachq item=btn from=$topic_post.thread_buttons}>
		                    <a class="btn btn-primary btn-xs" href="<{$btn.link}>&amp;post_id=<{$topic_post.post_id}>" title="<{$btn.name}>"><{$btn.image}></a>
		                <{/foreach}>
		        <{/if}>
		    <{/if}>
		    <a class="btn btn-success btn-xs" href="#threadtop" title="<{$smarty.const._MD_NEWBB_TOP}>"><i class="far fa-arrow-alt-circle-up"></i></a>
		</div>
	</div>
	
	
</div>
