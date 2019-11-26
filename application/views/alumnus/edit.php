

            <!-- Begin Page Content -->

            <div class="container-fluid">



                <!-- Page Heading -->

                <h1 class="h3 mb-4 text-gray-800 text-center"><b> <?= $title2 ;?> </b></h1>

                <div class="row">

                    <div class="col-lg-10">

                    <?php echo form_open_multipart('alumnus/updateAlumni'); ?>

                            <div class="form-group row">

                                <div class="col-sm-10">

                                    <input type="hidden" name="id_alumni" class="form-control" id="id_alumni" placeholder="Id Alumni" value="<?= $detail->id_alumni ;?>">

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Nama Lengkap</label>

                                <div class="col-sm-10">

                                    <input type="text" name="nama" class="form-control" id="nama" value="<?= $detail->nama ;?>">

                                    <?= form_error('nama','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Tempat Lahir</label>

                                <div class="col-sm-10">

                                    <input type="text" name="tempat_lahir" class="form-control" id="tempat_lahir" value="<?= $detail->tempat_lahir ;?>">

                                    <?= form_error('tempat_lahir','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Tanggal Lahir</label>

                                <div class="col-sm-10">

                                    <input type="text" name="tgl_lahir" class="form-control" id="tgl_lahir"  value="<?= date('d-m-Y', strtotime($detail->tgl_lahir)) ;?>">

                                    <?= form_error('tgl_lahir','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Jenis Kelamin</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-jk" name="jenis_kelamin" id="jenis_kelamin" value="<?= $detail->jenis_kelamin;?>"> 
                                        
                                        <option value="Laki-laki">Laki-laki</option>

                                        <option value="Perempuan">Perempuan</option>

                                    </select>

                                    <?= form_error('jenis_kelamin','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Alamat Lengkap</label>

                                <div class="col-sm-10">

                                    <textarea type="text" name="alamat" class="form-control" id="alamat" ><?= $detail->alamat ;?></textarea>

                                    <?= form_error('alamat','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Telepon/HP/WA</label>

                                <div class="col-sm-10">

                                    <input type="text" name="mobile_phone" class="form-control" id="mobile_phone" value="<?= $detail->mobile_phone ;?>">

                                    <?= form_error('mobile_phone','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Email</label>

                                <div class="col-sm-10">

                                    <input type="text" name="email" class="form-control" id="email" value="<?= $detail->email ;?>">

                                    <?= form_error('email','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <div class="col-sm-2">Foto</div>

                                <div class="col sm-10">

                                    <div class="row">

                                        <div class="col-sm-3">

                                            <img src="<?= base_url('assets/img/anggota/').$detail->photo ;?>" class="img-thumbnail">

                                        </div>

                                        <div class="col-sm-9">

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

                                    <input type="text" name="nip" class="form-control" id="nip" value="<?= $detail->nip ;?>">

                                    <?= form_error('nip','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">NPP</label>

                                <div class="col-sm-10">

                                    <input type="text" name="npp" class="form-control" id="npp" value="<?= $detail->npp ;?>">

                                    <?= form_error('npp','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Kementrian</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-kem" name="fk_id_kementrian" id="fk_id_kementrian" value=""> 

                                    </select>

                                    <?= form_error('fk_id_kementrian','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Provinsi</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-prov" name="fk_id_prov" id="fk_id_prov"> 

                                        <option value="<?= $detail->id_prov ;?>"> <?= $detail->nama_provinsi ;?> </option>
                                    </select>

                                    <?= form_error('fk_id_prov','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Kabupaten/Kota</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-kab-kot" name="fk_id_kab_kot" id="fk_id_kab_kot"> 

                                        <option value="<?= $detail->id_kab_kot ;?>"> <?= $detail->nama_kab_kot ;?> </option>

                                    </select>

                                    <?= form_error('fk_id_kab_kot','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Kecamatan</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-kec" name="fk_id_kec" id="fk_id_kec"> 

                                        <option value="<?= $detail->id_kec ;?>"> <?= $detail->nama_kecamatan ;?> </option>

                                    </select>

                                    <?= form_error('fk_id_kec','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Kelurahan</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-kel" name="fk_id_kel" id="fk_id_kel"> 

                                    <option value="<?= $detail->id_kel ;?>"> <?= $detail->nama_kelurahan ;?> </option>

                                    </select>

                                    <?= form_error('fk_id_kel','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Pangkat</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-pangkat" name="fk_id_pangkat" id="fk_id_pangkat"> 

                                        <option value="<?= $detail->id_pangkat ;?>"> <?= $detail->nama_pangkat ;?>, <?= $detail->golongan ;?>/<?= $detail->ruang ;?> </option>

                                    </select>

                                    <?= form_error('pangkat','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Jabatan</label>

                                    <div class="col-sm-10">

                                        <input type="text" name="jabatan" class="form-control" id="jabatan" value="<?= $detail->jabatan ;?>">

                                        <?= form_error('jabatan','<small class="text-danger pl-3">','</small>'); ?>

                                    </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Instansi</label>

                                    <div class="col-sm-10">

                                        <input type="text" name="instansi" class="form-control" id="instansi" value="<?= $detail->instansi ;?>">

                                        <?= form_error('jabatan','<small class="text-danger pl-3">','</small>'); ?>

                                    </div>

                            </div>

                            <div class="form-group row">

                                <label for="name" class="col-sm-2 col-form-label">Status</label>

                                <div class="col-sm-10">

                                    <select class="form-control list-status" name="meninggal" id="meninggal"> 

                                        <option value="Masih Hidup">Masih Hidup</option>

                                        <option value="Sudah Meninggal">Sudah Meninggal</option>

                                    

                                    </select>

                                    <?= form_error('meninggal','<small class="text-danger pl-3">','</small>'); ?>

                                </div>

                            </div>

                            <div class="form-group row justify-content-end">

                                <div class="col-sm-10">

                                    <button type="submit" name="simpan_alumni" class="btn btn-success pull-right">

                                        <i class="fas fa-user-plus">

                                        Ubah Data </i>

                                    </button>

                                    <a href="<?= base_url('alumnus/ajaxGetAlumni');?>" name="kembali" class="btn btn-primary pull-right">

                                        <i class="fas fa-undo">

                                        Kembali </i>

                                    </a>

                                </div>

                            </div>

                        <?php echo form_close(); ?>

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

    

</script>