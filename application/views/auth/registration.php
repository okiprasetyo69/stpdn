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
                    <div class="col-lg">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Registrasi Akun Anggota</h1>
                        </div>
                    <form class="user" method="POST" action="<?= base_url('auth/registration');?>">
                        <div class="form-group">
                            <input type="text" name="name" id="name" class="form-control form-control-user"  placeholder="Nama Lengkap" value="<?= set_value('name') ;?>">
                            <?= form_error('name','<small class="text-danger pl-3">','</small>'); ?>
                        </div>
                        <div class="form-group">
                            <input type="text" id="email" name="email" class="form-control form-control-user"  placeholder="Email" value="<?= set_value('email');?>">
                            <?= form_error('email','<small class="text-danger pl-3">','</small>'); ?>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="password" name="password1" id="password1" class="form-control form-control-user" placeholder="Password">
                                <?= form_error('password1','<small class="text-danger p1-3">','</small>') ;?>
                            </div>
                            <div class="col-sm-6">
                                <input type="password" name="password2" id="password2" class="form-control form-control-user" placeholder="Ulangi Password">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-user btn-block">
                            Register Akun
                        </button>
                    </form>
                    <hr>
                    <div class="text-center">
                        <a class="small" href="<?= base_url('auth/forgotPassword') ;?>">Lupa Password ?</a>
                    </div>
                    <div class="text-center">
                        <a class="small" href="<?= base_url('auth/index') ;?>">Sudah Punya Akun ? Login!</a>
                    </div>
                    
                    </div>
                    </div>
                </div>
                <!-- end of nested row -->

                    </div>
                </div>

            <!-- end of card section -->
            </div>
        </div>

    <!-- end of outer row -->
    </div>
</div>

<script>
    //remove class
    if($(window).width() < 576){
        $(".jq").removeClass("shadow");
    }
</script>