

			<div class="job-box">
			<div class="job-box-filter">
				<h5><i class="far fa-file-alt"></i> Recent Articles</h5>
			</div>
				<div class="inbox-message">

					<ul>
					 <{foreach item=item from=$block.items}>
						<li>
							
								<div class="message-body1">
									<div class="message-body-heading1">
										<h5><a><i class="fas fa-angle-right"></i></a> <{$item.itemlink}></h5>
									</div>
									<div class="olc"><i class="far fa-calendar-alt"></i> <{$item.date}>  <i class="fas fa-table"></i> <{$item.categorylink}> <i class="fas fa-user"></i> <{$item.poster}></div>
								</div>
					
						</li>
						<{/foreach}>
					</ul>
				</div>
			</div>