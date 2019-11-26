

    <div id="auth" class="animated jackInTheBox">
    <div class="container">
    <!-- Outer Row -->
        <div class="row min-vh-100 align-items-center justify-content-center">
            <div class="j col-lg-8">

                <!-- card section -->
                <div class="jq card border-0 rounded-lg shadow my-5">
                    <div class="card-body p-0">

                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="j col-5">
                                <div class="jp pr-3 pt-5 pb-5 pl-5">
                                <div class="text-center mb-3">
                                    <img src="<?=base_url('assets/img/')?>Lambang_IPDN.png" class="img-thumbnail">
                                </div>
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Login Alumni</h1>
                                </div>
                                <?= $this->session->flashdata('message');?>
                                <form class="user" method="POST" action="<?= base_url('auth') ;?>">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Email" value="<?= set_value('email') ;?>">
                                        <?= form_error('email','<small class="text-danger">','</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                                        <?= form_error('password','<small class="text-danger">','</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                    <i class="fas fas fa-sign-in-alt"></i> Login
                                    </button>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="<?= base_url('home'); ?>">Kembali ke beranda</a>
                                </div>
                                </div>
                            </div>

                            <div class="j col-7 darken-slide-2">
                                <img src="<?=base_url("assets/img/src/"); ?>login_img.PNG" class="card-img shadow-none rounded-right" alt="...">
                                <div class="carousel-caption">
                                <p class="text-white "><h2 class="font-weight-bolder">Halo Alumni !</h2></p>
                                <p class="text-white"><h3 class="font-weight-lighter">Pamong Praja STPD Angkatan '03 Tahun 1994</h3></p>
                                </div>
                            </div>
                        </div>
                    <!-- end of nested row -->

                    </div>
                </div>
                <!-- end of card sec  -->

            </div>
        </div>
        <!-- outer -->
    </div>  
    </div>
<script type="text/javascript"> 
    //remove class
    if($(window).width() < 576){
        $(".jq").removeClass("shadow");
        $(".jp").removeClass("pr-3").addClass("pr-5");
    }
</script>
