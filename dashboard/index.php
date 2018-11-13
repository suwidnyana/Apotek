<?php include_once('../_header.php'); ?>

 <div class="row">
	<div class="col-lg-12">
	    <h1>Halaman Muka</h1>
	    <p>Selamat Datang <mark><?=$_SESSION['user'];?></mark></p>
	    <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
	</div>
</div>

<?php include_once('../_footer.php'); ?>