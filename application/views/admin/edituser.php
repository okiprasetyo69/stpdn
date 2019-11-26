
            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>

                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Edit user 

                                </h6>

                            </div>

                            <div class="card-body">

                                <?php echo form_open_multipart('admin/ajaxUpdateUser'); ?>

                                    <div class="form-group row"> 

                                        <div class="col-sm-10">

                                            <input type="hidden" class="form-control" id="id" name="id" placeholder="ID Kegiatan" value="<?php echo $detail->id ;?>">                                          
                                        </div>
                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Nama Lengkap</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="name"  name="name" value="<?php echo $detail->name ;?>">

                                            <?= form_error('name','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">E-mail</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="email"  name="email" value="<?php echo $detail->email ;?>" readonly>

                                            <?= form_error('email','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>
                                
                                    <div class="form-group row">

                                        <div class="col-sm-2">Foto</div>

                                        <div class="col sm-10">

                                            <div class="row">

                                                <div class="col-sm-3">

                                                    <img src="<?= base_url('assets/img/profile/').$detail->image ;?>" class="img-thumbnail">

                                                </div>

                                                <div class="col-sm-9">

                                                    <div class="custom-file">

                                                        <input type="file" class="custom-file-input" id="image" name="image" multiple="multiple">

                                                        <label class="custom-file-label" for="image">Pilih foto</label>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Role</label>

                                        <div class="col-sm-10">

                                            <select class="form-control list-role" name="role_id" id="role_id"> 

                                                <?= $detail->role ;?>
                                            </select>

                                            <?= form_error('role_id','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Status</label>

                                        <div class="col-sm-10">

                                            <select class="form-control" name="is_active" id="is_active"> 

                                                <option value="0">Tidak Aktif</option>

                                                <option value="1">Aktif</option>

                                            </select>

                                            <?= form_error('is_active','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row justify-content-end">

                                        <div class="col-sm-10">

                                            <button type="submit" name="edit_user" class="btn btn-success  btn-sm pull-right">

                                                <i class="fas fa-edit"> 

                                                Ubah Data</i>

                                            </button>

                                            <a href="<?= base_url('admin/ajaxGetUser');?>" name="kembali" class="btn btn-primary btn-sm pull-right">

                                                <i class="fas fa-undo">

                                                Kembali </i>

                                            </a>

                                        </div>

                                    </div>

                                <?php echo form_close(); ?>

                                <!-- form -->

                            </div>

                        </div>

                    </div>

                </div>



            </div>

            <!-- /.container-fluid -->

        </div>

        <!-- End of Main Content -->

<script type="text/javascript"> 
     //get role
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "<?= base_url('admin/ajaxGetRole');?>",
            dataType: "JSON",
            success: function (data) {
                var listRole = '';
                $.each(data.list_role, function (index, val) { 
                    listRole += '<option value="'+val.id+'"> '+ val.role +' </option>';
                });
                $('.list-role').append(listRole);
            }
        });
    });
</script>