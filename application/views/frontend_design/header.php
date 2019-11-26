<!doctype html>

<html lang="en">

    <head>

        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <meta name="description" content="">

        <meta name="author" content="">

        <meta name="google-site-verification" content="gb7lpnbQaZOvA7pSy73SMZaDP0Pmq48Eof2f1_Lq0TI" />

        <title>Pamong Praja STPDN 03</title>



        <!-- Custom fonts for this template-->

        <link href="<?= base_url('assets/') ;?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">



        <!-- Custom styles for this template-->

        <!-- <link href="<?= base_url('assets/') ;?>css/sb-admin-2.min.css" rel="stylesheet"> -->



        <!-- Bootstrap 4 CSS -->

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



        <!-- Custom style sheet -->

        <link rel="stylesheet" href="<?= base_url('assets/css/');?>mine.css">



        <!-- Custom styles for this page -->

        <link href="<?= base_url('assets/') ;?>vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">    



        <!-- JQuery -->

        <script src="<?= base_url('assets/') ;?>vendor/jquery/jquery.min.js"></script>



        <!-- Alertify -->

        <link rel="stylesheet" href="<?= base_url('assets/alertifyjs/');?>css/alertify.min.css"/>



        <!-- Default theme -->

        <link rel="stylesheet" href="<?= base_url('assets/alertifyjs/') ;?>css/themes/default.min.css"/>



        <!-- Semantic UI theme -->

        <link rel="stylesheet" href="<?= base_url('assets/alertifyjs/') ;?>css/themes/semantic.min.css"/>



        <!-- Bootstrap theme -->

        <link rel="stylesheet" href="<?= base_url('assets/alertifyjs/') ;?>css/themes/bootstrap.min.css"/>



        <!-- Date time picker -->

        <link rel="stylesheet" href="<?=  base_url('assets/') ;?>datepicker/css/datepicker.css" >

    

        <!-- Animate CSS -->

        <link rel="stylesheet" href="<?=  base_url('assets/') ;?>css/animate.css">



        <!-- Card Gallery CSS -->

        <link rel="stylesheet" href="<?=  base_url('assets/') ;?>css/cards-gallery.css">

    

        <!-- Baguette Box CSS -->

        <link rel="stylesheet" href="<?=  base_url('assets/') ;?>css/baguetteBox.min.css" />

        <link rel="manifest" href="<?= base_url('manifest.json');?>">
        
        <!-- Google Analytics -->
        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-XXXXX-Y', 'auto');
            ga('send', 'pageview');
        </script>
        <!-- End Google Analytics -->
    
    </head>

    

    <header style="background-color: white;">

    <div class="wow slideInLeft d-flex justify-content-center" >  

        <div class="p-2 bd-highlight ">

            <img src="<?=base_url('assets/img/')?>Lambang_IPDN.png" class="img-thumbnail">

        </div>

        <div class="p-2 bd-highlight pt-3" >

            <div class="col-md-12">

                <h1 class="font-weight-bold">ALUMNI STPDN</h1>

            </div>

            <div class="col-md-12 text-secondary display-5">

                Pamong Praja Angkatan 03 Tahun 1994

            </div>

        </div>

    </div>

    <nav class="navbar navbar-expand-md navbar-dark bg-gradientBlue sticky-top shadow" style="border-bottom:solid 4px #efefef;">

        <!-- <a class="navbar-brand" href="#">Carousel</a> -->

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="container">

        <div class="collapse navbar-collapse" id="navbarCollapse">

            <ul class=" animated fadeIn navbar-nav mr-auto">

                <li <?= $this->uri->segment(1) == 'home' || $this->uri->segment(1) == '' ? 'class = "active"' : ''?>>

                    <a class="nav-link font-weight-bold" href="<?=  base_url('home') ;?>"><i class="fas fa-home"></i> Beranda <span class="sr-only">(current)</span></a>

                </li>

                <li <?= $this->uri->segment(1) == 'pp03' || $this->uri->segment(1) == '' ? 'class = "active"' : ''?>>

                    <a class="nav-link" href="<?=  base_url('pp03') ;?>"><i class="fas fa-graduation-cap"></i> Pamong Praja 03</a>

                </li>

                <li <?= $this->uri->segment(1) == 'kegiatan' || $this->uri->segment(1) == '' ? 'class = "active"' : ''?>>

                    <a class="nav-link" href="<?=  base_url('kegiatan') ;?>"><i class="	fas fa-newspaper"></i> Kegiatan</a>

                </li>

                <li <?= $this->uri->segment(1) == 'auth' || $this->uri->segment(1) == '' ? 'class = "active"' : ''?>>

                    <a class="nav-link" href="<?=  base_url('auth') ;?>"><i class="	fas fa-id-card"></i> Anggota</a>

                </li>

            </ul>

        </div>

        </div>

    </nav>

    </header>

    

    <body class="bg-ghostWhite">

