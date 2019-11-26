
            <!-- Begin Page Content -->
            <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800 text-center"><b><?= $title2 ;?></b></h1>
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Daftar Pangkat Golongan dan Ruang</h6>
                            </div>
                            <div class="card-body">
                                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalPemangkatan" onclick="addPemangkatan()">
                                    <i class="fas fa-fw fa-plus-circle"></i>
                                    Add Data
                                </button>
                                <br>
                                <br>
                                <div class="table-responsive">
                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                        <div class="row">
                                            <div class="col">
                                                <table class="table table-bordered dataTable" id="table">
                                                    <thead>
                                                        <tr class="text-center">
                                                            <th scope="col">#</th>
                                                            <th scope="col">Nama Pangkat</th>
                                                            <th scope="col">Golongan</th>
                                                            <th scope="col">Ruang</th>
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
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

<div class="modal fade" id="modalPemangkatan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Pangkat</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <form action="#" method="" id="formPangkat" class="form-horizontal" accept-charset="utf-8">
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="form-group">
                        <input type="hidden" class="form-control" id="id_pangkat" name="id_pangkat" placeholder="id pangkat">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="nama_pangkat" name="nama_pangkat" placeholder="Nama pangkat">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="golongan" name="golongan" placeholder="Nama Golongan">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="ruang" name="ruang" placeholder="Ruang">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-window-close"> Close </i></button>
                <button type="submit" class="btn btn-primary" id="btnSavePangkat" onclick="savePangkat()"><i class="far fa-save"> Save </i></button>s
            </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    var table;
    var save_method;

    $(document).ready(function () {
        table = $('#table').DataTable({
            "ajax":'<?php echo base_url('pemangkatan/ajaxGetPangkat') ;?>'
        });
    });
    
    function reloadTable(){
        table.ajax.reload();
    }

    function addPemangkatan(){
        save_method = 'add';
        $('#formPangkat')[0].reset(); 
        $('.form-group').removeClass('has-error'); 
        $('.help-block').empty();
        
        $.ajax({
        url : "<?php echo base_url('pemangkatan/ajaxGetMaxPangkatCode')?>",
        type: "GET",
        data: "data",
        dataType: "JSON",
        success: function (data) {
            
            $('[name="id_pangkat"]').val(data.pangkat_code) 
            $('#modalPemangkatan').modal('show');
            $('.modal-title').text('Tambah pemangkatan'); 
        }
        });
    }

    function savePangkat(){
        $('#btnSavePangkat').text('Saving...');
        $('#btnSavePangkat').attr('disabled', true);
        var url;

        if (save_method == 'add') {
            url = "<?php echo base_url('pemangkatan/ajaxAddPangkat')?>";
            msg = "New data has been added !";
        } else {
            url = "<?php echo base_url('pemangkatan/ajaxUpdatePangkat')?>";
            msg = "Data has been updated !";
        }
        $.ajax({
            type: "POST",
            url: url,
            data: $('#formPangkat').serialize(),
            dataType: "JSON",
            success: function (data) {
                if(data.status){
                    $('#modalPemangkatan').modal('hide');
                    alertify.success(msg);
                    reloadTable();
                } else {
                    for (var i = 0; i < data.inputerror.length; i++) 
                    {
                        $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');
                        $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
                    }
                }
                $('#btnSavePangkat').text('Save'); //change button text
                $('#btnSavePangkat').attr('disabled',false); //set button enable 
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error saving/update data');
                $('#btnSavePangkat').text('Save'); //change button text
                $('#btnSavePangkat').attr('disabled',false); //set button enable 

            }
        });
    }

    function editPangkat(id_pangkat){
        save_method = 'update';
        $('#formPangkat')[0].reset();
        $('.form-group').removeClass('has-error'); // clear error class
        $('.help-block').empty(); // clear error string

        $.ajax({
            url : "<?php echo base_url('pemangkatan/ajaxEditPangkat')?>/" + id_pangkat,
            type: "GET",
            dataType: "JSON",
            success: function(data)
            {
                $('[name="id_pangkat"]').val(data.id_pangkat);
                $('[name="nama_pangkat"]').val(data.nama_pangkat);
                $('[name="golongan"]').val(data.golongan);
                $('[name="ruang"]').val(data.ruang);
                $('#modalPemangkatan').modal('show');
                
                $('.modal-title').text('Edit Pangkat'); // Set title to Bootstrap modal title
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error get data !');
            }
        });
    }

    function deletePangkat(id_pangkat){
        if(confirm('Are you sure delete this data ?')) {
        $.ajax({
            url: '<?php echo base_url('pemangkatan/ajaxDeletePangkat') ;?>/' + id_pangkat,
            type: 'POST',
            dataType: 'JSON',
            success: function(data)
            {
                $('#modalPemangkatan').modal('hide');
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