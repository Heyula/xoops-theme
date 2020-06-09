


	<div class="template-demo">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb breadcrumb-custom">
			<{foreach item=itm from=$xoBreadcrumbs name=bcloop}>
				<{if $itm.link}>
				<li class="breadcrumb-item"><a href="<{$itm.link}>" data-abc="true"><{$itm.title}></a></li>
				<{else}>
				<li class="breadcrumb-item"><{$itm.title}></li>
				<{/if}>
			<{/foreach}>	
			</ol>
		</nav>
	</div>