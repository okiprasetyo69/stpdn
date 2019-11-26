

            <!-- Begin Page Content -->

            <div class="container-fluid">



                <!-- Page Heading -->

                <h1 class="h3 mb-4 text-gray-800 text-center"><b> <?= $title2 ;?> </b></h1>

                <div class="row">

                    <div class="col-md-10">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> Form Alumni </h6>

                            </div>

                            <div class="card-body">

                                <?php echo form_open_multipart('alumnus/addAlumni') ;?>

                                        <div class="form-group row">

                                            <div class="col-sm-10">

                                                <input type="hidden" name="id_alumni" class="form-control" id="id_alumni" placeholder="Id Alumni">

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Nama Lengkap</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="nama" class="form-control" id="nama" value="<?= set_value('nama') ;?>">

                                                <?= form_error('nama','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Tempat Lahir</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="tempat_lahir" class="form-control" id="tempat_lahir" value="<?= set_value('tempat_lahir') ;?>">

                                                <?= form_error('tempat_lahir','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Tanggal Lahir</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="tgl_lahir" class="form-control" id="tgl_lahir" value="<?= set_value('tgl_lahir') ;?>" placeholder="Tangal-Bulan-Tahun">

                                                <?= form_error('tgl_lahir','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Jenis Kelamin</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-jk" name="jenis_kelamin" id="jenis_kelamin"> 

                                                    <option value="Laki-laki">Laki-laki</option>

                                                    <option value="Perempuan">Perempuan</option>

                                                </select>

                                                <?= form_error('jenis_kelamin','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Alamat Lengkap</label>

                                            <div class="col-sm-10">

                                                <textarea type="text" name="alamat" class="form-control" id="alamat"></textarea>

                                                <?= form_error('alamat','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Telepon/HP/WA</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="mobile_phone" class="form-control" id="mobile_phone" value="<?= set_value('mobile_phone') ;?>">

                                                <?= form_error('mobile_phone','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Email</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="email" class="form-control" id="email" value="<?= set_value('email') ;?>">

                                                <?= form_error('email','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <div class="col-sm-2">Foto</div>

                                            <div class="col sm-10">

                                                <div class="row">

                                                    <div class="col-sm-12">

                                                        <div class="custom-file">

                                                            <input type="file" class="custom-file-input" id="photo" name="photo" multiple="multiple">

                                                            <label class="custom-file-label" for="image">Pilih foto</label>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">NIP</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="nip" class="form-control" id="nip" value="<?= set_value('nip') ;?>">

                                                <?= form_error('nip','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">NPP</label>

                                            <div class="col-sm-10">

                                                <input type="text" name="npp" class="form-control" id="npp" value="<?= set_value('npp') ;?>">

                                                <?= form_error('npp','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Kementrian</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-kem" name="fk_id_kementrian" id="fk_id_kementrian"> 

                                                

                                                </select>

                                                <?= form_error('fk_id_kementrian','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Provinsi</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-prov" name="fk_id_prov" id="fk_id_prov"> 

                                                

                                                </select>

                                                <?= form_error('fk_id_prov','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Kab/Kota</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-kab-kot" name="fk_id_kab_kot" id="fk_id_kab_kot"> 

                                            

                                                </select>

                                                <?= form_error('fk_id_kab_kot','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Kecamatan</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-kec" name="fk_id_kec" id="fk_id_kec"> 

                                                

                                                </select>

                                                <?= form_error('fk_id_kec','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Kelurahan</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-kel" name="fk_id_kel" id="fk_id_kel"> 

                                            

                                                </select>

                                                <?= form_error('fk_id_kel','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Pangkat</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-pangkat" name="fk_id_pangkat" id="fk_id_pangkat" > 

                                                

                                                </select>

                                                <?= form_error('pangkat','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Jabatan</label>

                                                <div class="col-sm-10">

                                                    <input type="text" name="jabatan" class="form-control" id="jabatan" value="<?= set_value('jabatan') ;?>">

                                                    <?= form_error('jabatan','<small class="text-danger pl-3">','</small>'); ?>

                                                </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Instansi</label>

                                                <div class="col-sm-10">

                                                    <input type="text" name="instansi" class="form-control" id="instansi" value="<?= set_value('instansi') ;?>">

                                                    <?= form_error('instansi','<small class="text-danger pl-3">','</small>'); ?>

                                                </div>

                                        </div>

                                        <div class="form-group row">

                                            <label for="name" class="col-sm-2 col-form-label">Kondisi</label>

                                            <div class="col-sm-10">

                                                <select class="form-control list-status" name="meninggal" id="meninggal"> 

                                                    <option value="Masih Hidup">Masih Hidup</option>

                                                    <option value="Wafat">Wafat</option>

                                                

                                                </select>

                                                <?= form_error('meninggal','<small class="text-danger pl-3">','</small>'); ?>

                                            </div>

                                        </div>

                                        <div class="form-group row justify-content-end">

                                            <div class="col-sm-10">

                                                <button name="submit" class="btn btn-success pull-right">

                                                    <i class="fas fa-user-plus">

                                                    Tambah Data </i>

                                                </button>

                                            </div>

                                        </div>

                                <?php echo form_close(); ?>

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

        $('#tgl_lahir').datepicker({

            format:'d-m-yyyy',

        });

    } );



    function reloadPage(){

        location.reload();

    }



    $(document).ready(function () {

        $('.list-prov').select2();

        $('.list-kab-kot').select2();

        $('.list-kec').select2();

        $('.list-kel').select2();

        $('.list-kem').select2();

    });



    //Kementrian

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxGetKemCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                var listKem = "";

                $.each(data.list_kem, function (index, val) { 

                    listKem += '<option value="'+val.id_kementrian+'">'+val.nama_kementrian+'</option>';

                });

                $('.list-kem').append(listKem);

            }

        });

    });



    //Provinsi

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxGetProvCode') ;?>",

            dataType: "JSON",

            success: function(data) {

                var listProv = " ";

                // var listKabKot = "";

                // var listKec = "";

                // var listKel = "";

                $.each(data.list_prov, function (index, val) {

                    listProv += '<option value="'+val.id_prov+'">'+val.nama_provinsi+'</option>';



                    // if (data.list_prov[index].id_kab_kot) {

                    //     listKabKot += '<option value="'+val.id_kab_kot+'">'+val.nama_kab_kot+'</option>';

                    // }

                    // if (data.list_prov[index].id_kec) {

                    //     listKec += '<option value="'+val.id_kec+'">'+val.nama_kecamatan+'</option>';

                    // } 

                    // if (data.list_prov[index].id_kel) {

                    //     listKel += '<option value="'+val.id_kel+'">'+val.nama_kelurahan+'</option>';

                    // }

                    

                });

                $('.list-prov').append(listProv);

                // $('.list-kab-kot').append(listKabKot);

                // $('.list-kec').append(listKec);

                // $('.list-kel').append(listKel);

            }

        });

    });

    

    //Kabupaten Kota

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxGetKabKotCode') ;?>",

            dataType: "JSON",

            success: function(data) {

                var listKabKot = "";

                $.each(data.list_kab_kot, function (index, val) {

                    listKabKot += '<option value="'+val.id_kab_kot+'">'+val.nama_kab_kot+'</option>';                    

                });

                $('.list-kab-kot').append(listKabKot);

            }

        });

    });



    //Kecamatan

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxGetKecCode') ;?>",

            dataType: "JSON",

            success: function(data) {

                var listKec = "";

                $.each(data.list_kec, function (index, val) {

                    listKec += '<option value="'+val.id_kec+'">'+val.nama_kecamatan+'</option>';                    

                });

                $('.list-kec').append(listKec);

            }

        });

    });



    //Kelurahan

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxGetKelCode') ;?>",

            dataType: "JSON",

            success: function(data) {

                var listKel = "";

                $.each(data.list_kel, function (index, val) {

                    listKel += '<option value="'+val.id_kel+'">'+val.nama_kelurahan+'</option>';                    

                });

                $('.list-kel').append(listKel);

            }

        });

    });



    //Pangkat

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxPangkatCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                var listPangkat = "";

                $.each(data.list_pangkat, function (index, val) { 

                    listPangkat += '<option value="'+val.id_pangkat+'">'+val.nama_pangkat+', '+val.golongan+'/'+val.ruang+'</option>';

                });

                $('.list-pangkat').append(listPangkat);

            }

        });

    });

    

    //CodeALumni

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('alumnus/ajaxAlumniCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_alumni"]').val(data.alumni_code) 

            }

        });

    });



</script>