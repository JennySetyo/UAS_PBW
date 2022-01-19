<?php 
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);

	$video= mysqli_query($conn, "SELECT * FROM tb_video WHERE video_id = '".$_GET['id']."' ");
	$p = mysqli_fetch_object($video);
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

	<!-- video detail -->
	<div class="section">
		<div class="container">
			<h3>Detail Video</h3>
			<div class="box">
				<div class="col-2">
					<img src="video/<?php echo $p->video_image ?>" width="100%">
				</div>
				<div class="col-2">
					<h3><?php echo $p->video_name ?></h3>
					<p>Link Video :<br>
						<?php echo $p->video_description ?>
					</p>
					
				</div>
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