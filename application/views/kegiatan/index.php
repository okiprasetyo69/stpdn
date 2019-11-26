

            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>

                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Form kegiatan

                                </h6>

                            </div>

                            <div class="card-body">

                                <?php echo form_open_multipart('kegiatan/ajaxAddKegiatan', 'id = "formKegiatan"'); ?>

                                    <div class="form-group row"> 

                                        <div class="col-sm-10">

                                            <input type="hidden" class="form-control" id="id_keg"  name="id_keg" placeholder="ID Kegiatan">

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Judul Kegiatan</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="nama_kegiatan" name="nama_kegiatan" >

                                            <?= form_error('nama_kegiatan','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Koordinator Kegiatan</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="koordinator" name="koordinator" >

                                            <?= form_error('koordinator','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>
                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">No. HP Koordinator</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="kontak" name="kontak" >

                                            <?= form_error('kontak','<small class="text-danger pl-3">','</small>'); ?>

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

                                        <label for="name" class="col-sm-2 col-form-label">Tempat</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="tempat" name="tempat" >

                                            <?= form_error('tempat','<small class="text-danger pl-3">','</small>'); ?>

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

                                        <label for="name" class="col-sm-2 col-form-label">Waktu</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="waktu" name="waktu" >

                                            <?= form_error('waktu','<small class="text-danger pl-3">','</small>'); ?>

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

                                                <option value="Berita">Berita</option>

                                                <option value="Dokumentasi Kegiatan">Dokumentasi Kegiatan</option>

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

                <!-- pengumuman -->
                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Pengumuman

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

                                                <table id="tablePengumuman" class="table table-bordered" style="width:100%">

                                                    <thead>

                                                        <tr class="text-center">

                                                            <th>#</th>

                                                            <th>Nama Pengumuman</th>

                                                            <th>Keterangan</th>

                                                            <th>Tanggal</th>

                                                            <th>Photo</th>

                                                            <th>Kategori</th>

                                                            <th>Tempat</th>

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
                
                <!-- documentation -->
                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Daftar Kegiatan Alumni STPDN-03

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

                                                            <th>Judul Kegiatan</th>

                                                            <th>Keterangan</th>

                                                            <th>Tanggal</th>

                                                            <th>Photo</th>

                                                            <th>Kategori</th>

                                                            <th>Tempat</th>

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

    //getBerita
    var tablePengumuman;
    $(document).ready(function () {

        tablePengumuman = $('#tablePengumuman').DataTable({

            "ajax":'<?php echo base_url('kegiatan/ajaxGetPengumuman') ;?>'

        });

    });


    //getGallery

    var table;

    $(document).ready(function () {

        table = $('#table').DataTable({

            "ajax":'<?php echo base_url('kegiatan/ajaxGetDataKegiatan') ;?>'

        });

    });



    function reloadTable(){

        table.ajax.reload();

    }

    //CodeGallery

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('kegiatan/ajaxKegiatanCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                //console.log(data);

                $('[name="id_keg"]').val(data.kegiatan_code) 

            }

        });

    });



    function deleteKegiatan(id_keg){

        if(confirm('Anda yakin akan menghapus data ?')) {

        $.ajax({

            url: '<?php echo base_url('kegiatan/ajaxDeleteKegiatan') ;?>/' + id_keg ,

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