<?php 
	session_start();
	include 'db.php';
	if($_SESSION['status_login'] != true){
		echo '<script>window.location="login.php"</script>';
	}
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
			<h1><a href="dashboard.php">E-Sambongrejo</a></h1>
			<ul>
				<li><a href="dashboard.php">Dashboard</a></li>
				<li><a href="profil.php">Profil</a></li>
				<li><a href="data-kategori.php">Data Kategori</a></li>
				<li><a href="data-produk.php">Data Produk</a></li>
				<li><a href="data-berita.php">Data Berita</a></li>
				<li><a href="data-video.php">Data Video</a></li>
				<li><a href="keluar.php">Keluar</a></li>
			</ul>
		</div>
	</header>

	<!-- content -->
	<div class="section">
		<div class="container">
			<h3>Data Berita</h3>
			<div class="box">
				<p><a href="tambah-berita.php">Tambah Data</a></p>
				<table border="1" cellspacing="0" class="table">
					<thead>
						<tr>
							<th width="60px">No</th>
							<th>Kategori</th>
							<th>Nama Berita</th>
							<th>Isi Berita</th>
							<th>Gambar</th>
							<th>Status</th>
							<th width="150px">Aksi</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$no = 1;
							$berita = mysqli_query($conn, "SELECT * FROM tb_berita LEFT JOIN tb_category USING (category_id) ORDER BY berita_id DESC");
							if(mysqli_num_rows($berita) > 0){
							while($row = mysqli_fetch_array($berita)){
						?>
						<tr>
							<td><?php echo $no++ ?></td>
							<td><?php echo $row['category_name'] ?></td>
							<td><?php echo $row['berita_name'] ?></td>
							<td><?php echo $row['berita_description'] ?></td>
							<td><a href="berita/<?php echo $row['berita_image'] ?>" target="_blank"> <img src="berita/<?php echo $row['berita_image'] ?>" width="50px"> </a></td>
							<td><?php echo ($row['berita_status'] == 0)? 'Tidak Aktif':'Aktif'; ?></td>
							<td>
								<a href="edit-berita.php?id=<?php echo $row['berita_id'] ?>">Edit</a> || <a href="proses-hapus.php?idp=<?php echo $row['berita_id'] ?>" onclick="return confirm('Yakin ingin hapus ?')">Hapus</a>
							</td>
						</tr>
						<?php }}else{ ?>
							<tr>
								<td colspan="7">Tidak ada data</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- footer -->
	<footer>
		<div class="container">
			<small>Copyright &copy; 2022 - E-Sambongrejo.</small>
		</div>
	</footer>
</body>
</html>