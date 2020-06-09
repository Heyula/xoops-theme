

						<{foreach item=user from=$block.users}>
                        <ul class="friend-list">
                            <li>
                                <div class="left">
									<{if $user.avatar != ""}>
									 <img src="<{$user.avatar}>" alt="<{$user.name}>">
									<{else}>
										<img src="<{$xoops_imageurl}>images/blank.gif" alt="<{$user.name}>">
									<{/if}>
                                </div>
                                <div class="right de">
                                    <a href="<{$xoops_url}>/userinfo.php?uid=<{$user.id}>" title="<{$user.name}>"><i class="far fa-user"></i> <{$user.name}></a>
                                    <p><i class="far fa-calendar-alt"></i> <{$user.joindate}></p>
                                </div>
                            </li>
                        </ul>
						<{/foreach}>						
						
						
	<style>
	ul.friend-list {
    margin: 0;
    padding: 0;
	float: left;
}

ul.friend-list li {
    list-style-type: none;
    display: flex;
    align-items: center;
}

ul.friend-list li:hover {
    background: rgba(0, 0, 0, .1);
    cursor: pointer;
}

ul.friend-list .left img {
    width: 35px;
    height: 35px;
    border-radius: 50%;
    margin-right: 20px;
}

ul.friend-list li {
    padding: 5px;
}

ul.friend-list .right h3 {
    font-size: 16px;
    font-weight: 700;
    margin-bottom: 0;
}

ul.friend-list .right p {
    font-size: 11px;
    color: #fff;
    margin: 0;
}
.de a {
	font-size: 13px;
	color: #fff;
}
</style>