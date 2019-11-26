

            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"><b><?= $title2 ;?></b></h1>

            <div class="contaier">



                <!-- Provinsi -->

                <div class="row">

                    <div class="col-10">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary text-center">Provinsi</h6>

                            </div>

                            <div class="card-body">

                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalProvinsi" onclick="addProvinsi()">

                                    <i class="fas fa-fw fa-plus-circle"></i>

                                    Add Data

                                </button>

                                <br>

                                <br>

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table class="table table-bordered dataTable text-center" id="tableProv">

                                                    <thead>

                                                        <tr>

                                                            <th scope="col">#</th>

                                                            <th scope="col">Provinsi</th>

                                                            <th scope="col">Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    <tbody>



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



                <!-- Kabupaten Kota -->

                <div class="row">

                    <div class="col-10">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary text-center">Kabupaten/Kota</h6>

                            </div>

                            <div class="card-body">

                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalKabKot" onclick="addKabKot()">

                                <i class="fas fa-fw fa-plus-circle"></i>

                                    Add Data

                                </button>

                                <br>

                                <br>

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table class="table table-bordered dataTable text-center" id="tableKabKot">

                                                    <thead>

                                                        <tr>

                                                            <th scope="col">#</th>

                                                            <th scope="col">Provinsi</th>

                                                            <th scope="col">Kab/Kota</th>

                                                            <th scope="col">Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    <tbody>



                                                    

                                                    </tbody>

                                                </table>

                                            </div>

                                        </div>

                                    <div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>



                <!-- Kecamatan -->

                <div class="row">

                    <div class="col-12">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary text-center">Kecamatan</h6>

                            </div>

                            <div class="card-body">

                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalKecamatan" onclick="addKec()">

                                <i class="fas fa-fw fa-plus-circle"></i>

                                    Add Data

                                </button>

                                <br>

                                <br>

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table class="table table-bordered dataTable text-center" id="tableKec">

                                                    <thead>

                                                        <tr>

                                                            <th scope="col">#</th>

                                                            <th scope="col">Provinsi</th>

                                                            <th scope="col">Kab/Kota</th>

                                                            <th scope="col">Kecamatan</th>

                                                            <th scope="col">Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    <tbody>



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



                <!-- Kelurahan -->

                <div class="row">

                    <div class="col-12">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary text-center">Kelurahan</h6>

                            </div>

                            <div class="card-body">

                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalKelurahan" onclick="addKelurahan()">

                                <i class="fas fa-fw fa-plus-circle"></i>

                                    Add Data

                                </button>

                                <br>

                                <br>

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table class="table table-bordered dataTable text-center" id="tableKel">

                                                    <thead>

                                                        <tr>

                                                            <th scope="col">#</th>

                                                            <th scope="col">Provinsi</th>

                                                            <th scope="col">Kab/Kota</th>

                                                            <th scope="col">Kecamatan</th>

                                                            <th scope="col">Kelurahan</th>

                                                            <th scope="col">Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    <tbody>



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



                <!-- Kementrian -->

                <div class="row">

                    <div class="col-12">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary text-center">Kementrian</h6>

                            </div>

                            <div class="card-body">

                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalKementrian" onclick="addKementrian()">

                                <i class="fas fa-fw fa-plus-circle"></i>

                                    Add Data

                                </button>

                                <br>

                                <br>

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table class="table table-bordered dataTable text-center" id="tableKementrian">

                                                    <thead>

                                                        <tr>

                                                            <th scope="col">#</th>

                                                            <th scope="col">Kementrian</th>

                                                            <th scope="col">Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    <tbody>



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





            </div>

            <!-- /.container-fluid -->

        </div>

        <!-- End of Main Content -->





<!-- Modal Provinsi -->

<div class="modal fade" id="modalProvinsi" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

                <div class="modal-header">

                    <h5 class="modal-title">Tambah Provinsi</h5>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                        <span aria-hidden="true">&times;</span>

                    </button>

                </div>

            <form action="#" method="" id="formProv" class="form-horizontal" accept-charset="utf-8">

            <div class="modal-body">

                <div class="container-fluid">

                    <div class="form-group">

                        <input type="hidden" class="form-control" id="id_prov" name="id_prov" placeholder="id provinsi">

                    </div>

                    <div class="form-group">

                        <input type="text" class="form-control" id="nama_provinsi" name="nama_provinsi" placeholder="Nama provinsi">

                    </div>

                </div>

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-window-close"> Close </i></button>

                <button type="submit" class="btn btn-primary" id="btnSaveProv" onclick="saveProv()"><i class="far fa-save"> Save </i></button>s

            </div>

            </form>

        </div>

    </div>

</div>



<!-- Modal Kabupaten/Kota-->

<div class="modal fade" id="modalKabKot" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header">

                <h5 class="modal-title">Tambah Kabupaten-Kota</h5>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                        <span aria-hidden="true">&times;</span>

                    </button>

            </div>

            <form action="#" method="" id="formKabKot" class="form-horizontal" accept-charset="utf-8">

            <div class="modal-body">

                <div class="form-group">

                    <input type="hidden" class="form-control" id="id_kab_kot" name="id_kab_kot" placeholder="id kabupaten kota">

                </div>

                <div class="form-group">

                    <input type="text" class="form-control" id="nama_kab_kot" name="nama_kab_kot" placeholder="Nama Kabupaten-Kota">

                </div>

                <div class="form-group">

                    <div class="">

                        <select class="form-control list-prov" name="fk_id_prov" id="fk_id_prov"> 

                            <option value="0">-- Pilih Provinsi --</option>

                            

                        </select>

                    </div>

                </div>

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-window-close"> Close</i></button>

                <button type="button" class="btn btn-primary" id="btnSaveKabKot" onclick="saveKabKot()"><i class="far fa-save"> Save </i></button>

            </div>

            </form>

        </div>

    </div>

</div>



<!-- Modal Kecamatan-->

<div class="modal fade" id="modalKecamatan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header">

                <h5 class="modal-title">Tambah kecamatan</h5>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                        <span aria-hidden="true">&times;</span>

                    </button>

            </div>

            <form action="#" method="" id="formKecamatan" class="form-horizontal" accept-charset="utf-8">

            <div class="modal-body">

                <div class="form-group">

                        <input type="hidden" class="form-control" id="id_kec" name="id_kec" placeholder="id kecamatan">

                    </div>

                <div class="form-group">

                        <input type="text" class="form-control" id="nama_kecamatan" name="nama_kecamatan" placeholder="Nama Kecamatan">

                </div>

                <div class="form-group">

                    <div class="">

                        <select class="form-control list-kab-kot" name="fk_id_kab_kot" id="fk_id_kab_kot"> 

                            <option value="0">-- Pilih Kabupaten-Kota --</option>

                                

                        </select>

                    </div>

                </div>

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-window-close"> Close </i></button>

                <button type="button" class="btn btn-primary" id="btnSaveKec" onclick="saveKec()"><i class="far fa-save"> Save </i></button>

            </div>

            </form>

        </div>

    </div>

</div>



<!-- Modal Kelurahan -->

<div class="modal fade" id="modalKelurahan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header">

                <h5 class="modal-title">Tambah kelurahan</h5>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                        <span aria-hidden="true">&times;</span>

                    </button>

            </div>

            <form action="#" method="" id="formKelurahan" class="form-horizontal" accept-charset="utf-8">

            <div class="modal-body">

                <div class="form-group">

                        <input type="hidden" class="form-control" id="id_kel" name="id_kel" placeholder="id kelurahan">

                    </div>

                    <div class="form-group">

                            <input type="text" class="form-control" id="nama_kelurahan" name="nama_kelurahan" placeholder="Nama Kelurahan">

                    </div>

                    <div class="form-group">

                        <div class="">

                            <select class="form-control list-kec" name="fk_id_kec" id="fk_id_kec"> 

                                <option value="0">-- Pilih Kecamatan --</option>

                                    

                            </select>

                        </div>

                    </div>

                </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-danger" data-dismiss="modal"> <i class="fas fa-window-close"> Close </i></button>

                <button type="button" class="btn btn-primary" id="btnSaveKel" onclick="saveKel()"> <i class="far fa-save"> Save </i></button>

            </div>

            </form>

        </div>

    </div>

</div>



<!-- Modal Kementrian -->

<div class="modal fade" id="modalKementrian" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

                <div class="modal-header">

                    <h5 class="modal-title">Tambah Kementrian</h5>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                            <span aria-hidden="true">&times;</span>

                        </button>

                </div>

            <form action="#" method="" id="formKementrian" class="form-horizontal" accept-charset="utf-8">

            <div class="modal-body">

                <div class="container-fluid">

                    <div class="form-group">

                        <input type="hidden" class="form-control" id="id_kementrian" name="id_kementrian" placeholder="id kementrian">

                    </div>

                    <div class="form-group">

                        <input type="text" class="form-control" id="nama_kementrian" name="nama_kementrian" placeholder="Nama kementrian">

                    </div>

                </div>

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-window-close"> Close </i></button>

                <button type="button" class="btn btn-primary" id="btnSaveKem" onclick="saveKem()"><i class="far fa-save"> Save </i></button>

            </div>

            </form>

        </div>

    </div>

</div>



<script type="text/javascript">

    var save_method;

    var tableProv;

    var tableKementrian;

    var tableKabKot;

    var tableKec;

    var tableKelurahan;



    function reloadPage(){

        location.reload();

    } 



    //Get data Provinsi

    $(document).ready(function () {

        tableProv = $('#tableProv').DataTable({

            "ajax":'<?php echo base_url('wilayah/ajaxGetProv') ;?>'

        });

    });

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('wilayah/ajaxGetMaxProvCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                var listProv = "";

                $.each(data.list_prov, function (index, val) { 

                    listProv += '<option value="'+val.id_prov+'">'+val.nama_provinsi+'</option>';

                });

                $('.list-prov').append(listProv);

            }

        });

    });



    //Get data Kabupaten Kota

    $(document).ready(function () {

        tableKabKot = $('#tableKabKot').DataTable({

            "ajax":'<?php echo base_url('wilayah/ajaxGetKabKot') ;?>'

        });

    });

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('wilayah/ajaxGetMaxKabKotCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                var listKabKot = "";

                $.each(data.list_kab_kot, function (index, val) { 

                    listKabKot += '<option value="'+val.id_kab_kot+'">'+val.nama_kab_kot+'</option>';

                });

                $('.list-kab-kot').append(listKabKot);

            }

        });

        

    });



    //Get data Kecamatan

    $(document).ready(function () {

        tableKec = $('#tableKec').DataTable({

            "ajax":'<?php echo base_url('wilayah/ajaxGetKec') ;?>'

        });

    });

    $(document).ready(function () {

        $.ajax({

            type: "GET",

            url: "<?php echo base_url('wilayah/ajaxGetMaxKecCode') ;?>",

            dataType: "JSON",

            success: function (data) {

                var listKec = "";

                $.each(data.list_kec, function (index, val) { 

                    listKec += '<option value="'+val.id_kec+'">'+val.nama_kecamatan+'</option>';

                });

                $('.list-kec').append(listKec);

            }

        });

    });



    //Kementrian

    $(document).ready(function () {

        tableKementrian = $('#tableKementrian').DataTable({

            "ajax":'<?php echo base_url('wilayah/ajaxGetKementrian') ;?>'

        });

    });



    //Get data Kelurahan

    $(document).ready(function () {

        tableKelurahan = $('#tableKel').DataTable({

            "ajax":'<?php echo base_url('wilayah/ajaxGetKel') ;?>'

        });

    });

    

    //Provinsi

    function addProvinsi(){

        save_method = 'add';

        $('#formProv')[0].reset(); 

        $('.form-group').removeClass('has-error'); 

        $('.help-block').empty();

        $.ajax({

            type: "GET",

            url: "<?= base_url('wilayah/ajaxGetMaxProvCode');?>",

            data: "data",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_prov"]').val(data.prov_code) 

                $('#modalProvinsi').modal('show');

                $('.modal-title').text('Tambah Provinsi');

            }

        });

    }

    function reloadProv(){

        tableProv.ajax.reload();

    }

    function saveProv(){

        $('#btnSaveProv').text('Saving...');

        $('#btnSaveProv').attr('disabled', true);

        var url;

        if(save_method == 'add'){

            url = "<?php echo base_url('wilayah/ajaxAddProvinsi') ;?>";

            msg = "Data provinsi berhasil ditambahkan !";

        } else {

            url = "<?php echo base_url('wilayah/ajaxUpdateProv') ;?>";

            msg = "Data provinsi berhasil diubah !";

        }

        $.ajax({

            type: "POST",

            url: url,

            data: $('#formProv').serialize(),

            dataType: "JSON",

            success: function (data) {

                if(data.status){

                    $('#modalProvinsi').modal('hide');

                    alertify.success(msg);

                    reloadProv();

                    reloadPage();

                } else {

                    for (var i = 0; i < data.inputerror.length; i++) 

                    {

                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');

                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);

                    }

                }

                $('#btnSaveProv').text('Save'); //change button text

                $('#btnSaveProv').attr('disabled',false); //set button enable 

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error saving/update data');

                $('#btnSaveProv').text('Save'); //change button text

                $('#btnSaveProv').attr('disabled',false); //set button enable 



            }

        });

    }

    function editProv(id_prov){

        save_method = 'update';

        $('#formProv')[0].reset();

        $('.form-group').removeClass('has-error'); // clear error class

        $('.help-block').empty(); // clear error string



        $.ajax({

            url : "<?php echo base_url('wilayah/ajaxEditProv')?>/" + id_prov,

            type: "GET",

            dataType: "JSON",

            success: function(data)

            {

                $('[name="id_prov"]').val(data.id_prov);

                $('[name="nama_provinsi"]').val(data.nama_provinsi);

                $('#modalProvinsi').modal('show');

                $('.modal-title').text('Edit provinsi'); // Set title to Bootstrap modal title

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error get data !');

            }

        });

    }

    function deleteProv(id_prov){

        if(confirm('Anda yakin akan menghapus data ?')) {

        $.ajax({

            url: '<?php echo base_url('wilayah/ajaxDeleteProv') ;?>/' + id_prov,

            type: 'POST',

            dataType: 'JSON',

            success: function(data)

            {

                $('#modalProvinsi').modal('hide');

                alertify.success("Berhasil delete data !");

                reloadProv();

                reloadPage();

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error delete data !');

            }

        });

        }

    }



    // Kabupaten Kota

    function addKabKot(){

        save_method = 'add';

        $('#formKabKot')[0].reset(); 

        $('.form-group').removeClass('has-error'); 

        $('.help-block').empty();

        $.ajax({

            type: "GET",

            url: "<?= base_url('wilayah/ajaxGetMaxKabKotCode');?>",

            data: "data",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_kab_kot"]').val(data.kab_kot_code) 

                $('#modalKabKot').modal('show');

                $('.modal-title').text('Tambah Kabupaten-Kota');

            }

        });

    }

    function reloadKabKot(){

        tableKabKot.ajax.reload();

    }

    function saveKabKot(){

        $('#btnSaveKabKot').text('Saving...');

        $('#btnSaveKabKot').attr('disabled', true);

        var url;

        if(save_method == 'add'){

            url = "<?php echo base_url('wilayah/ajaxAddKabKot') ;?>";

            msg = "Data kabupaten-kota berhasil ditambahkan !";

        } else {

            url = "<?php echo base_url('wilayah/ajaxUpdateKabKot') ;?>";

            msg = "Data kabupaten-kota berhasil diubah !";

        }

        $.ajax({

            type: "POST",

            url: url,

            data: $('#formKabKot').serialize(),

            dataType: "JSON",

            success: function (data) {

                if(data.status){

                    $('#modalKabKot').modal('hide');

                    alertify.success(msg);

                    reloadKabKot();

                    reloadPage();

                } else {

                    for (var i = 0; i < data.inputerror.length; i++) 

                    {

                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');

                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);

                    }

                }

                $('#btnSaveKabKot').text('Save'); //change button text

                $('#btnSaveKabKot').attr('disabled',false); //set button enable 

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error saving/update data');

                $('#btnSaveKabKot').text('Save'); //change button text

                $('#btnSaveKabKot').attr('disabled',false); //set button enable 



            }

        });



    }

    function editKabKot(id_kab_kot){

        save_method = 'update';

        $('#formKabKot')[0].reset();

        $('.form-group').removeClass('has-error'); // clear error class

        $('.help-block').empty(); // clear error string



        $.ajax({

            url : "<?php echo base_url('wilayah/ajaxEditKabKot')?>/" + id_kab_kot,

            type: "GET",

            dataType: "JSON",

            success: function(data)

            {

                $('[name="id_kab_kot"]').val(data.id_kab_kot);

                $('[name="nama_kab_kot"]').val(data.nama_kab_kot);

                $('#modalKabKot').modal('show');

                $('.modal-title').text('Edit kabupaten-kota'); // Set title to Bootstrap modal title

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error get data !');

            }

        });

    }

    function deleteKabKot(id_kab_kot){

        if(confirm('Anda yakin akan menghapus data ?')) {

        $.ajax({

            url: '<?php echo base_url('wilayah/ajaxDeleteKabKot') ;?>/' + id_kab_kot,

            type: 'POST',

            dataType: 'JSON',

            success: function(data)

            {

                $('#modalKabKot').modal('hide');

                alertify.success("Berhasil delete data !");

                reloadKabKot();

                reloadPage();

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error delete data !');

            }

        });

        }

    }



    //Kecamatan

    function addKec(){

        save_method = 'add';

        $('#formKecamatan')[0].reset(); 

        $('.form-group').removeClass('has-error'); 

        $('.help-block').empty();

        $.ajax({

            type: "GET",

            url: "<?= base_url('wilayah/ajaxGetMaxKecCode');?>",

            data: "data",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_kec"]').val(data.kec_code) 

                $('#modalKecamatan').modal('show');

                $('.modal-title').text('Tambah kecamatan');

            }

        });

    }

    function reloadKec(){

        tableKec.ajax.reload();

    }

    function saveKec(){

        $('#btnSaveKec').text('Saving...');

        $('#btnSaveKec').attr('disabled', true);

        var url;

        if(save_method == 'add'){

            url = "<?php echo base_url('wilayah/ajaxAddKec') ;?>";

            msg = "Data kecamatan berhasil ditambahkan !";

        } else {

            url = "<?php echo base_url('wilayah/ajaxUpdateKec') ;?>";

            msg = "Data kecamatan berhasil diubah !";

        }

        $.ajax({

            type: "POST",

            url: url,

            data: $('#formKecamatan').serialize(),

            dataType: "JSON",

            success: function (data) {

                if(data.status){

                    $('#modalKecamatan').modal('hide');

                    alertify.success(msg);

                    reloadKec();

                    reloadPage();

                } else {

                    for (var i = 0; i < data.inputerror.length; i++) 

                    {

                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');

                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);

                    }

                }

                $('#btnSaveKec').text('Save'); //change button text

                $('#btnSaveKec').attr('disabled',false); //set button enable 

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error saving/update data');

                $('#btnSaveKec').text('Save'); //change button text

                $('#btnSaveKec').attr('disabled',false); //set button enable 



            }

        });

    }

    function editKec(id_kec){

        save_method = 'update';

        $('#formKecamatan')[0].reset();

        $('.form-group').removeClass('has-error'); // clear error class

        $('.help-block').empty(); // clear error string



        $.ajax({

            url : "<?php echo base_url('wilayah/ajaxEditKec')?>/" + id_kec,

            type: "GET",

            dataType: "JSON",

            success: function(data)

            {

                $('[name="id_kec"]').val(data.id_kec);

                $('[name="nama_kecamatan"]').val(data.nama_kecamatan);

                $('#modalKecamatan').modal('show');

                $('.modal-title').text('Edit kecamatan'); // Set title to Bootstrap modal title

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error get data !');

            }

        });

    }

    function deleteKec(id_kec){

        if(confirm('Anda yakin akan menghapus data ?')) {

        $.ajax({

            url: '<?php echo base_url('wilayah/ajaxDeleteKec') ;?>/' + id_kec,

            type: 'POST',

            dataType: 'JSON',

            success: function(data)

            {

                $('#modalKecamatan').modal('hide');

                alertify.success("Berhasil delete data !");

                reloadKec();

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error delete data !');

            }

        });

        }

    }



    //Kementrian

    function addKementrian(){

        save_method = 'add';

        $('#formKementrian')[0].reset(); 

        $('.form-group').removeClass('has-error'); 

        $('.help-block').empty();

        $.ajax({

            type: "GET",

            url: "<?= base_url('wilayah/ajaxGetMaxKemCode');?>",

            data: "data",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_kementrian"]').val(data.kem_code) 

                $('#modalKementrian').modal('show');

                $('.modal-title').text('Tambah kementrian');

            }

        });

    }

    function reloadKem(){

        tableKementrian.ajax.reload();

    }

    function saveKem(){

        $('#btnSaveKem').text('Saving...');

        $('#btnSaveKem').attr('disabled', true);

        var url;

        if(save_method == 'add'){

            url = "<?php echo base_url('wilayah/ajaxAddKementrian') ;?>";

            msg = "Data kementrian berhasil ditambahkan !";

        } else {

            url = "<?php echo base_url('wilayah/ajaxUpdateKementrian') ;?>";

            msg = "Data kementrian berhasil diubah !";

        }

        $.ajax({

            type: "POST",

            url: url,

            data: $('#formKementrian').serialize(),

            dataType: "JSON",

            success: function (data) {

                if(data.status){

                    $('#modalKementrian').modal('hide');

                    alertify.success(msg);

                    reloadKem();

                    reloadPage();

                } else {

                    for (var i = 0; i < data.inputerror.length; i++) 

                    {

                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');

                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);

                    }

                }

                $('#btnSaveKem').text('Save'); //change button text

                $('#btnSaveKem').attr('disabled',false); //set button enable 

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error saving/update data');

                $('#btnSaveKem').text('Save'); //change button text

                $('#btnSaveKem').attr('disabled',false); //set button enable 



            }

        });

    }

    function editKementrian(id_kementrian){

        save_method = 'update';

        $('#formKementrian')[0].reset();

        $('.form-group').removeClass('has-error'); // clear error class

        $('.help-block').empty(); // clear error string



        $.ajax({

            url : "<?php echo base_url('wilayah/ajaxEditKementrian')?>/" + id_kementrian,

            type: "GET",

            dataType: "JSON",

            success: function(data)

            {

                $('[name="id_kementrian"]').val(data.id_kementrian);

                $('[name="nama_kementrian"]').val(data.nama_kementrian);

                $('#modalKementrian').modal('show');

                $('.modal-title').text('Edit kementrian'); // Set title to Bootstrap modal title

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error get data !');

            }

        });

    }

    function deleteKementrian(id_kementrian){

        if(confirm('Anda yakin akan menghapus data ?')) {

        $.ajax({

            url: '<?php echo base_url('wilayah/ajaxDeleteKementrian') ;?>/' + id_kementrian,

            type: 'POST',

            dataType: 'JSON',

            success: function(data)

            {

                $('#modalKementrian').modal('hide');

                alertify.success("Berhasil delete data !");

                reloadKem();

                reloadPage();

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error delete data !');

            }

        });

        }

    }



    //Kelurahan

    function addKelurahan(){

        save_method = 'add';

        $('#formKelurahan')[0].reset(); 

        $('.form-group').removeClass('has-error'); 

        $('.help-block').empty();

        $.ajax({

            type: "GET",

            url: "<?= base_url('wilayah/ajaxGetMaxKelCode');?>",

            data: "data",

            dataType: "JSON",

            success: function (data) {

                $('[name="id_kel"]').val(data.kel_code) 

                $('#modalKelurahan').modal('show');

                $('.modal-title').text('Tambah kelurahan');

            }

        });

    }

    function reloadKel(){

        tableKelurahan.ajax.reload();

    }

    function saveKel(){

        $('#btnSaveKel').text('Saving...');

        $('#btnSaveKel').attr('disabled', true);

        var url;

        if(save_method == 'add'){

            url = "<?php echo base_url('wilayah/ajaxAddKel') ;?>";

            msg = "Data kelurahan berhasil ditambahkan !";

        } else {

            url = "<?php echo base_url('wilayah/ajaxUpdateKel') ;?>";

            msg = "Data kelurahan berhasil diubah !";

        }

        $.ajax({

            type: "POST",

            url: url,

            data: $('#formKelurahan').serialize(),

            dataType: "JSON",

            success: function (data) {

                if(data.status){

                    $('#modalKelurahan').modal('hide');

                    alertify.success(msg);

                    reloadKel();

                    reloadPage();

                } else {

                    for (var i = 0; i < data.inputerror.length; i++) 

                    {

                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');

                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);

                    }

                }

                $('#btnSaveKel').text('Save'); //change button text

                $('#btnSaveKel').attr('disabled',false); //set button enable 

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error saving/update data');

                $('#btnSaveKel').text('Save'); //change button text

                $('#btnSaveKel').attr('disabled',false); //set button enable 



            }

        });

    }

    function editKel(id_kel){

        save_method = 'update';

        $('#formKelurahan')[0].reset();

        $('.form-group').removeClass('has-error'); // clear error class

        $('.help-block').empty(); // clear error string



        $.ajax({

            url : "<?php echo base_url('wilayah/ajaxEditKel')?>/" + id_kel,

            type: "GET",

            dataType: "JSON",

            success: function(data)

            {

                $('[name="id_kel"]').val(data.id_kel);

                $('[name="nama_kelurahan"]').val(data.nama_kelurahan);

                $('#modalKelurahan').modal('show');

                $('.modal-title').text('Edit kelurahan'); // Set title to Bootstrap modal title

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error get data !');

            }

        });

    }

    function deleteKel(id_kel){

        if(confirm('Anda yakin akan menghapus data ?')) {

        $.ajax({

            url: '<?php echo base_url('wilayah/ajaxDeleteKel') ;?>/' + id_kel,

            type: 'POST',

            dataType: 'JSON',

            success: function(data)

            {

                $('#modalKelurahan').modal('hide');

                alertify.success("Berhasil delete data !");

                reloadKel();

                reloadPage();

            },

            error: function (jqXHR, textStatus, errorThrown)

            {

                alert('Error delete data !');

            }

        });

        }

    }



</script>