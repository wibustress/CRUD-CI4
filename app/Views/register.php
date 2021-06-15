<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <!-- My CSS -->
    <link rel="stylesheet" href="/font.css" />

</head>
<?= $this->include("template/navbar"); ?>

<body>
    <title>REGISTER</title>
    <div id="card">
        <div id="card-content">
            <div id="card-title">
                <h2>REGISTER PORTAL</h2>
                <div class="underline-title"></div>
            </div>
            <?php if (isset($validation)) : ?>
                <div class="alert alert-danger"><?= $validation->listErrors() ?></div>
            <?php endif; ?>
            <form method="post" class="form" action="<?= base_url(); ?>/register/save">
                <label for="user" style="padding-top:13px">Username</label>
                <input id="user" class="form-content" type="text" name="name" />
                <div class="form-border"></div>
                <label for="password" style="padding-top:22px">Password</label>
                <input id="password" class="form-content" type="password" name="password" />
                <div class="form-border"></div>
                <label for="repassword" style="padding-top:22px">Confirm Password</label>
                <input id="repassword" class="form-content" type="password" name="confpassword" />
                <div class="form-border"></div>
                <input id="submit-btn" type="submit" value="DAFTAR" />
                <a href="<?= base_url(); ?>/login" id="signup">Klik disini untuk login</a>
            </form>
        </div>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
</body>

</html>