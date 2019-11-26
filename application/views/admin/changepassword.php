

            <!-- Begin Page Content -->

            <div class="container-fluid">

                <!-- Page Heading -->

                <h1 class="h3 mb-4 text-gray-800"><?= $title ;?></h1>

                <div class="row">

                    <div class="col-lg-6">

                    <?= $this->session->flashdata('message');?>

                        <form action="<?= base_url('admin/changePassword') ;?>" method="POST">
                            <!-- <div class="form-group">
                                <input type="text" class="form-control" name="id_user" id="id_user" value="<?= $users->id ;?>" readonly >
                            </div>
                     -->
                            <div class="form-group">

                                <label for="current_password"> Password sekarang</label>

                                <input type="password" class="form-control" name="current_password" id="current_password">

                                <?= form_error('current_password','<small class="text-danger pl-3">','</small>'); ?>

                            </div> 

                            <div class="form-group">

                                <label for="new_password1">Password baru</label>

                                <input type="password" class="form-control" name="new_password1" id="new_password1">

                                <?= form_error('new_password1','<small class="text-danger pl-3">','</small>'); ?>

                            </div> 

                            <div class="form-group">

                                <label for="new_password2">Ulangi Password</label>

                                <input type="password" class="form-control" name="new_password2" id="new_password2">

                                <?= form_error('new_password2','<small class="text-danger pl-3">','</small>'); ?>

                            </div>

                            <div class="form-group">

                                <button type="submit" class="btn btn-success"> <i class="fas fa-edit"> Ubah Password</i> </button>
                                <a href="<?= base_url('admin/ajaxGetUser/');?>" class="btn btn-primary"> <i class="fas fa-undo"> Kembali </i></a>

                            </div> 

                        </form>

                    </div>

                </div>

            </div>

            <!-- /.container-fluid -->

        </div>

        <!-- End of Main Content -->