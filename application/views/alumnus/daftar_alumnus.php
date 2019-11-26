

            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"><b><?php echo $title2 ;?></b></h1>

                <div class="row">

                    <div class="col-md-6 succes-message"> 

                        <?= $this->session->flashdata('message') ;?>

                    </div>

                </div>

        

                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                Daftar Alumni STPDN-03

                            </div>

                            <div class="card-body">

                                <div class="table-responsive">

                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">

                                        <div class="row">

                                            <div class="col">

                                                <table class="table table-bordered" id="table">

                                                    <thead>

                                                        <tr class="text-center">

                                                            <th>#</th>

                                                            <th>Nama</th>

                                                            <th>Gender</th>

                                                            <th>Alamat</th>

                                                            <th>Kontak</th>

                                                            <th>Email</th>

                                                            <th>Instansi</th>

                                                            <th>Keterangan</th>

                                                            <th>Aksi</th>

                                                        </tr>

                                                    </thead>

                                                    

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



<!-- Modal -->

<div class="modal fade" id="modalDetail" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog modal-lg" role="document">

        <div class="modal-content">

                <div class="modal-header">

                        <h5 class="modal-title">Detail Alumni</h5>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                                <span aria-hidden="true">&times;</span>

                            </button>

                    </div>

            <div class="modal-body">

        

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-success btn-sm" data-dismiss="modal"> <i class="fas fa-undo-alt"> Kembali </i> </button>

            </div>

        </div>

    </div>

</div>





<script type="text/javascript">

    var save_method;

    var table;



    //close alert message flash data

    $(document).ready(function(){

        setTimeout(function() {

            $('.succes-message').fadeOut('fast');

        }, 3000);

    });



        //getDataAlumni

    $(document).ready(function () {

        table = $('#table').DataTable({

            "ajax":'<?php echo base_url('alumnus/ajaxGetDataAlumni') ;?>'

        });

    });



    function reloadTable(){

        table.ajax.reload();

    }



    function detailAlumni(id_alumni){

        $.ajax({

            type: "GET",

            url: "<?= base_url('alumnus/ajaxDetailAlumni');?>/" + id_alumni,

            data: "data",

            dataType: "JSON",

            success: function (data) {

                //console.log(data);

                $('.modal-body').html(`

                    <div class="container-fluid">

                        <div class="row mb-3">

                            <div class="col text-center">

                                <img src="<?= base_url('assets/img/anggota/');?>`+data.detail_alumni.photo +`" class="figure-img img-fluid rounded " id="photo" alt="Responsive image">

                            </div>

                        </div>

                        <div class="row mb-3">

                            <div class="col-sm-6">

                                <ul class="list-group">

                                    <li class="list-group-item nip"><h6> Nama : <b> `+ data.detail_alumni.nama +` </b></h6></li>

                                    <li class="list-group-item nip"><h6>TTL : <b> `+ data.detail_alumni.tempat_lahir +`, `+ new Date(data.detail_alumni.tgl_lahir ).toLocaleDateString('en-GB')+` </b></h6></li>

                                    <li class="list-group-item nip"><h6>NIP : <b>`+ data.detail_alumni.nip +` </b></h6></li>

                                    <li class="list-group-item"><h6>NPP : <b>`+ data.detail_alumni.npp +` </b></h6></li>

                                    <li class="list-group-item"><h6>Pangkat : <b>`+ data.detail_alumni.nama_pangkat +`, `+ data.detail_alumni.golongan + `/`+ data.detail_alumni.ruang +` </b></h6></li>

                                    <li class="list-group-item"><h6>Jabatan : <b>`+ data.detail_alumni.jabatan +` </b></h6></li>

                                </ul>

                            </div>

                            <div class="col-sm-6">

                                <ul class="list-group">

                                    <li class="list-group-item"><h6>Instansi : <b>`+ data.detail_alumni.instansi +` </b></h6></li>

                                    <li class="list-group-item"><h6>Kementrian : <b>`+ data.detail_alumni.nama_kementrian +` </b></h6></li>

                                    <li class="list-group-item"><h6>Provinsi : <b>`+ data.detail_alumni.nama_provinsi +` </b></h6></li>

                                    <li class="list-group-item"><h6>Kab/Kota : <b>`+ data.detail_alumni.nama_kab_kot +` </b></h6></li>

                                    <li class="list-group-item"><h6>Kecamatan : <b>`+ data.detail_alumni.nama_kecamatan +` </b></h6></li>

                                    <li class="list-group-item"><h6>Kelurahan : <b>`+ data.detail_alumni.nama_kelurahan +` </b></h6></li>

                                </ul>

                            </div>

                        </div>

                    </div>

                `);

                $('#modalDetail').modal('show');

            }

        });

    }



    function deleteAlumni(id_alumni){



        if(confirm('Are you sure delete this data ?')) {

        $.ajax({

            url: '<?php echo base_url('alumnus/ajaxDeleteAlumni') ;?>/' + id_alumni ,

            type: 'POST',

            dataType: 'JSON',

            success: function(data)

            {   

                // console.log(data);

                $('#modalDetail').modal('hide');

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