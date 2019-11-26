
            <!-- Begin Page Content -->
            <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary"> 
                                    Form tentang STPDN-03
                                </h6>
                            </div>
                            <div class="card-body">
                                <?php echo form_open_multipart('about/addAbout', 'id = "formAbout"'); ?>
                                    <div class="form-group row"> 
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" id="id_about" name="id_about" placeholder="ID About">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Judul</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="judul"  name="judul" placeholder="Judul">
                                            <?= form_error('judul','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Deskripsi</label>
                                        <div class="col-sm-10">
                                            <textarea type="text" name="deskripsi" class="form-control" id="deskripsi"></textarea>
                                            <?= form_error('deskripsi','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Tanggal</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="tgl_about"  name="tgl_about" placeholder="Tanggal">
                                            <?= form_error('tgl_about','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-2">Foto</div>
                                        <div class="col sm-10">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="photo" name="photo" multiple="multiple">
                                                        <label class="custom-file-label" for="image">Pilih foto tentang</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row justify-content-end">
                                        <div class="col-sm-10">
                                            <button type="submit" name="simpan_gallery" class="btn btn-success pull-right">
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
                                    Tentang Kami Alumni STPDN-03
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
                                                            <th>Judul</th>
                                                            <th>Deskripsi</th>
                                                            <th>Tanggal</th>
                                                            <th>Photo</th>
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

    //date
    $( function() {
        $('#tgl_about').datepicker({
            format:'d-m-yyyy',
        });
    } );

    //close alert message flash data
    $(document).ready(function(){
        setTimeout(function() {
            $('.succes-message').fadeOut('fast');
        }, 3000);
    });

    //getGallery
    var table;
    $(document).ready(function () {
        table = $('#table').DataTable({
            "ajax":'<?php echo base_url('about/ajaxGetAbout') ;?>'
        });
    });

    function reloadTable(){
        table.ajax.reload();
    }
    //CodeAbout
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "<?php echo base_url('about/ajaxAboutCode') ;?>",
            dataType: "JSON",
            success: function(data) {
                $('[name="id_about"]').val(data.about_code) 
            }
        });
    });

    function deleteAbout(id_about){
        if(confirm('Anda yakin akan menghapus data ?')) {
        $.ajax({
            url: '<?php echo base_url('about/ajaxDeleteAbout') ;?>/' + id_about ,
            type: 'POST',
            dataType: 'JSON',
            success: function(data)
            {   
                alertify.success("Success delete data !");
                reloadTable();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                // console.log(jqXHR)
                alert('Error delete data !' +jqXHR);
            }
        });
        }
    }
</script>