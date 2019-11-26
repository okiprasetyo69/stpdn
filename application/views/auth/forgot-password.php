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
                                        <h1 class="h4 text-gray-900 mb-4">Lupa Password ?</h1>
                                    </div>
                                    <?= $this->session->flashdata('message');?>
                                    <form class="user" method="POST" action="<?= base_url('auth/forgotPassword') ;?>">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Masukkan Email Anda ..." value="<?= set_value('email') ;?>">
                                            <?= form_error('email','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Reset Password
                                        </button>
                                    </form>
                                    <hr>   
                                    <div class="text-center">
                                        <a class="small" href="<?= base_url('auth'); ?>">Kembali ke halaman login </a>
                                    </div>
                                    </div>
                                </div>
                             </div>
                             <!-- end card body -->

                     </div>
                 </div>
                <!-- end card section -->

             </div>
         </div>
     </div>

<script>
    //remove class
    if($(window).width() < 576){
        $(".jq").removeClass("shadow");
    }
</script>