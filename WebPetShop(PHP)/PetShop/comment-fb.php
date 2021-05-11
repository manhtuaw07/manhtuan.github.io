<?php $idpost = $_GET['id']; ?>
<br>
<hr style="width: 650px;color: blue;">
	<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0" nonce="RMOXD7oB"></script>

<style>
	#fb{
		width: 650px;
		min-height: 300px;
		border: 1px;
	}
</style>
<div id="fb">
	<div class="fb-comments" data-href="http://localhost:8080/PetShop/detailPost.php?<?php echo($idpost) ?>" data-numposts="5" data-width=""></div>
</div>
	
</div>
