

            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>

                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Form Register User STPDN-03

                                </h6>

                            </div>

                            <div class="card-body">

                                <?php echo form_open_multipart('admin/ajaxAddUser', 'id = "formUser"'); ?>

                                    <div class="form-group row"> 

                                        <div class="col-sm-10">

                                            <input type="hidden" class="form-control" id="id"  name="id" placeholder="ID User">

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Nama Lengkap</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="name"  name="name">

                                            <?= form_error('name','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">E-mail</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="email"  name="email">

                                            <?= form_error('email','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <div class="col-sm-2">Foto</div>

                                        <div class="col sm-10">

                                            <div class="row">

                                                <div class="col-sm-12">

                                                    <div class="custom-file">

                                                        <input type="file" class="custom-file-input" id="image" name="image" multiple="multiple">

                                                        <label class="custom-file-label" for="image">Pilih foto </label>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Password</label>

                                        <div class="col-sm-10">

                                            <input type="password" class="form-control" id="password1"  name="password1">

                                            <?= form_error('password1','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Ulangi Password</label>

                                        <div class="col-sm-10">

                                            <input type="password" class="form-control" id="password2"  name="password2">

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Role</label>

                                        <div class="col-sm-10">

                                            <select class="form-control list-role" name="role_id" id="role_id"> 

                                                
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

                                            <button type="submit" name="simpan_user" class="btn btn-success pull-right">

                                                <i class="fas fa-plus-circle">

                                                Tambah Data </i>

                                            </button>

                                        </div>

                                    </div>

                                <?php echo form_close(); ?>

                                <!-- form -->

                            </div>

                        </div>

                    </div>

                </div>



                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Daftar User Alumni STPDN-03

                                </h6>

                            </div>

                            <div class="col-md-6 succes-message"> 

                                <?= $this->session->flashdata('message') ;?>

                            </div>

                            <div class="card-body">

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table id="table" class="table table-bordered" style="width:100%">

                                                    <thead>

                                                        <tr class="text-center">

                                                            <th>#</th>

                                                            <th>Nama</th>

                                                            <th>E-mail</th>

                                                            <th>Photo</th>

                                                            <th>Role</th>

                                                            <th>Status</th>

                                                            <th>Tgl Daftar</th>

                                                            <th>Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    <tbody class="text-center">



                                                    </tbody>

                                                </table>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>



            </div>

            <!-- /.container-fluid -->



        </div>

        <!-- End of Main Content -->





<script type="text/javascript">

    //close alert message flash data

    $(document).ready(function(){

        setTimeout(function() {

            $('.succes-message').fadeOut('fast');

        }, 3000);

    });



    //getUser

    var table;

    $(document).ready(function () {

        table = $('#table').DataTable({

            "ajax":'<?php echo base_url('admin/ajaxGetDataUser') ;?>'

        });

    });



    function reloadTable(){

        table.ajax.reload();

    }

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

    //usercode
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "<?= base_url('admin/ajaxUserCode');?>",
            dataType: "JSON",
            success: function (data) {
                $('[name="id"]').val(data.user_code) 
            }
        });
    });

    function deleteUser(id){
        if(confirm('Anda yakin akan menghapud data user ?')) {
        $.ajax({
            url: "<?= base_url('admin/ajaxDeleteUser');?>/" + id,
            type: 'POST',
            dataType: 'JSON',
            success: function(data)
            {
                alertify.success("Success delete data !");
                reloadTable();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error delete data !');
            }
        });
        }
    }



</script>