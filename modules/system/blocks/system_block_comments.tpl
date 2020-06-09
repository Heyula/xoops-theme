		<div class="job-box">
		<div class="job-box-filter">
			<h5><i class="far fa-comments"></i> Recent Comments</h5>
		</div>
			<div class="inbox-message">

				<ul>
				 <{foreach item=comment from=$block.comments}>
					<li>
						
							<div class="message-body1">
								<div class="message-body-heading1">
									<h5><a><i class="fas fa-angle-right"></i></a> <{$comment.title}></h5>
								</div>
								<div class="olc"><i class="fas fa-user"></i> <{$comment.module}>  <i class="fas fa-folder-open"></i> <{$comment.poster}> <i class="far fa-calendar-alt"></i> <{$comment.time}></div>
							</div>
				
					</li>
					<{/foreach}>
				</ul>
			</div>
		</div>