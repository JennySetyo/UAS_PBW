<?php 
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>E-Sambongrejo</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
		<h1><a href="index.php">E-Sambongrejo</a></h1>
			<ul>
				<li><a href="login.php">keluar</a></li>
			</ul>
            <ul>
				<li><a href="kontak.php">Kontak</a></li>
			</ul>
            <ul>
				<li><a href="video.php">video</a></li>
			</ul>
            <ul>
				<li><a href="berita.php">Berita</a></li>
			</ul>
            <ul>
				<li><a href="promo.php">Promo</a></li>
			</ul>
			<ul>
				<li><a href="produk.php">Produk</a></li>
			</ul>
		</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="container">
			<form action="video.php">
				<input type="text" name="search" placeholder="Cari Video" value="<?php echo $_GET['search'] ?>">
				<input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
				<input type="submit" name="cari" value="Cari Video">
			</form>
		</div>
	</div>

	<!-- new product -->
	<div class="section">
		<div class="container">
			<h3>Video</h3>
			<div class="box">
				<?php 
					if($_GET['search'] != '' || $_GET['kat'] != ''){
						$where = "AND Video_name LIKE '%".$_GET['search']."%' AND category_id LIKE '%".$_GET['kat']."%' ";
					}

					$video = mysqli_query($conn, "SELECT * FROM tb_video WHERE video_status = 1 $where ORDER BY video_id DESC");
					if(mysqli_num_rows($video) > 0){
						while($p = mysqli_fetch_array($video)){
				?>	
					<a href="detail-video.php?id=<?php echo $p['video_id'] ?>">
						<div class="col-4">
							<img src="video/<?php echo $p['video_image'] ?>">
							<p class="nama"><?php echo substr($p['video_name'], 0, 30) ?></p>
						</div>
					</a>
				<?php }}else{ ?>
					<p>Video tidak ada</p>
				<?php } ?>
			</div>
		</div>
	</div>

	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address ?></p>

			<h4>Email</h4>
			<p><?php echo $a->admin_email ?></p>

			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp ?></p>
			<small>Copyright &copy; 2022 - E-Sambongrejo.</small>
		</div>
	</div>
</body>
</html>