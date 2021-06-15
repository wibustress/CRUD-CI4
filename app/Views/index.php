<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Pangkalan Data Mahasiswa</title>

	<!-- Bootstrap core CSS -->
	<link href="<?= base_url(); ?>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="<?= base_url(); ?>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

	<!-- Custom styles for this template -->
	<link href="<?= base_url(); ?>/css/clean-blog.css" rel="stylesheet">

</head>

<body>

	<?= $this->include("template/navbar"); ?>


	<!-- Page Header -->
	<header class="masthead" style="background-image: url('../../img/home-bg.png')">
		<div class="overlay"></div>
		<div class="pekora">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-10 mx-auto">
						<div class="site-heading">
							<h2>Website Pangkalan Data Mahasiswa Unsri</h2>
							<a href="/login" class="btn btn-primary">Masuk</a>
							<a href="/register" class="btn btn-success">Daftar</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Icons Grid -->
	<section class="features-icons text-center">
		<div id="a" class="container">
			<h2 class="mb-5">Fitur</h2>
			<div class="row">
				<div class="col-lg-4">
					<div class="features-icons-item bgmx-auto mb-5 mb-lg-0 mb-lg-3">
						<div class="logo"><i class="fas fa-book fa-3x mb-4" style="color: black;"></i></div>
						<h3>100+ Data Mahasiswa</h3>
						<p class="lead mb-0">Foto, Nama, Tanggal Lahir, dan lain - lain!</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
						<div class="logo"><i class="far fa-edit fa-3x mb-4" style="color: black;"></i></div>
						<h3>Daftarkan Data Anda!</h3>
						<p class="lead mb-0">Dengan mendaftarkan data, anda telah membantu akreditasi!</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="logo"><i class="fas fa-sync fa-3x mb-4" style="color: black;"></i></div>
						<h3>Semuanya Otomatis</h3>
						<p class="lead mb-0">Daftarkan data diri tanpa perlu membawa pena dan kertas!</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<hr>

	<!-- Footer -->
	<footer>
		<div id="b" class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<ul class="list-inline text-center">
						<li class="list-inline-item">
							<a href="https://wa.me/6285383094821">
								<span class="fa-stack fa-lg">
									<i class="fas fa-circle fa-stack-2x"></i>
									<i class="fab fa-whatsapp fa-stack-1x fa-inverse"></i>
								</span>
							</a>
						</li>
						<li class="list-inline-item">
							<a href="https://www.instagram.com/wahyupra20">
								<span class="fa-stack fa-lg">
									<i class="fas fa-circle fa-stack-2x"></i>
									<i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
								</span>
							</a>
						</li>
						<li class="list-inline-item">
							<a href="https://www.github.com/wibustress">
								<span class="fa-stack fa-lg">
									<i class="fas fa-circle fa-stack-2x"></i>
									<i class="fab fa-github fa-stack-1x fa-inverse"></i>
								</span>
							</a>
						</li>
					</ul>
					<p class="h6 copyright">&copy;Internet 2021</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<?= base_url(); ?>/vendor/jquery/jquery.min.js"></script>
	<script src="<?= base_url(); ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/clean-blog.min.js"></script>

</body>

</html>