

            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>

                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Form Banner dan Gallery STPDN-03

                                </h6>

                            </div>

                            <div class="card-body">

                                <?php echo form_open_multipart('gallery/ajaxAddGallery', 'id = "formGallery"'); ?>

                                    <div class="form-group row"> 

                                        <div class="col-sm-10">

                                            <input type="hidden" class="form-control" id="id_gal"  name="id_gal" placeholder="ID Gallery">

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Judul Gallery/Banner</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="nama_kegiatan"  name="nama_kegiatan">

                                            <?= form_error('nama_kegiatan','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Keterangan</label>

                                        <div class="col-sm-10">

                                            <textarea type="text" name="keterangan" class="form-control" id="keterangan"></textarea>

                                            <?= form_error('keterangan','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Tanggal</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="tgl_kegiatan"  name="tgl_kegiatan">

                                            <?= form_error('tgl_kegiatan','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <div class="col-sm-2">Foto</div>

                                        <div class="col sm-10">

                                            <div class="row">

                                                <div class="col-sm-12">

                                                    <div class="custom-file">

                                                        <input type="file" class="custom-file-input" id="photo" name="photo" multiple="multiple">

                                                        <label class="custom-file-label" for="image">Pilih foto </label>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Kategori</label>

                                        <div class="col-sm-10">

                                            <select class="form-control" name="kategori" id="kategori"> 

                                                <option value="Album Kenangan">Album Kenangan</option>

                                                <option value="Album Pendidikan">Album Pendidikan</option>

                                                <option value="Banner">Banner</option>

                                            </select>

                                            <?= form_error('kategori','<small class="text-danger pl-3">','</small>'); ?>

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


                <!-- Pendidikan List -->
                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Gallery Pendidikan

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

                                                <table id="tablePendidikan" class="table table-bordered" style="width:100%">

                                                    <thead>

                                                        <tr class="text-center">

                                                            <th>#</th>

                                                            <th>Judul Pendidikan</th>

                                                            <th>Keterangan</th>

                                                            <th>Tanggal</th>

                                                            <th>Kategori</th>

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

                <!-- Kenangan List -->
                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Gallery Kenangan

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

                                                <table id="tableKenangan" class="table table-bordered" style="width:100%">

                                                    <thead>

                                                        <tr class="text-center">

                                                            <th>#</th>

                                                            <th>Judul Kenangan</th>

                                                            <th>Keterangan</th>

                                                            <th>Tanggal</th>

                                                            <th>Kategori</th>

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


                <!-- Banner List -->
                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Banner Alumni
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

                                                <table id="tableBanner" class="table table-bordered" style="width:100%">

                                                    <thead>

                                                        <tr class="text-center">

                                                            <th>#</th>

                                                            <th>Judul Banner</th>

                                                            <th>Keterangan</th>

                                                            <th>Tanggal</th>

                                                            <th>Kategori</th>

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

        $('#tgl_kegiatan').datepicker({

            format:'d-m-yyyy',

        });

    } );



    //close alert message flash data

    $(document).ready(function(){

        setTimeout(function() {

            $('.succes-message').fadeOut('fast');

        }, 3000);

    });



    //getKenangan

    var tableKenangan;

    $(document).ready(function () {

        tableKenangan = $('#tableKenangan').DataTable({

            "ajax":'<?php echo base_url('gallery/ajaxGetKenangan') ;?>'

        });

    });

    //getPendidikan

    var tablePendidikan;

    $(document).ready(function () {

        tablePendidikan = $('#tablePendidikan').DataTable({

            "ajax":'<?php echo base_url('gallery/ajaxGetDataGallery') ;?>'

        });

    });

    //getBanner
    var tableBanner;

    $(document).ready(function () {

        tableBanner = $('#tableBanner').DataTable({

            "ajax":'<?php echo base_url('gallery/ajaxGetBanner') ;?>'

        });

    });


    function reloadTable(){

        table.ajax.reload();

    }

    //CodeGallery

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('gallery/ajaxGalleryCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_gal"]').val(data.gallery_code) 

            }

        });

    });



    function deleteGallery(id_gal){

        if(confirm('Are you sure delete this data ?')) {

        $.ajax({

            url: '<?php echo base_url('gallery/ajaxDeleteGallery') ;?>/' + id_gal ,

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