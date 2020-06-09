
	
	<{if $block.disp_mode == 0}>
			<div class="job-box">
			<div class="job-box-filter">
				<h5><i class="fas fa-folder-open"></i> Recent Posts</h5>
			</div>
				<div class="inbox-message">

					<ul>
					 <{foreach item=topic from=$block.topics}>
						<li>
							
								<div class="message-body1">
									<div class="message-body-heading1">
										<h5><a href="<{$topic.seo_url}>"><i class="fas fa-angle-right"></i> <{$topic.title}></a></h5>
									</div>
									<div class="olc"><i class="far fa-calendar-alt"></i> <{$topic.time}>  <i class="fas fa-user"></i> <{$topic.topic_poster}> </div>
								</div>
					
						</li>
						<{/foreach}>
					</ul>
				</div>
			</div>

	 <{/if}>

