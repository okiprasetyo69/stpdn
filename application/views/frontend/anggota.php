<div class="container-fluid wow bounceIn">

    <h3 class="font-weight-bold display-35 mt-4 mb-4 text-center"> <?= $title;?></h3>

    <div class="row">

        <div class="col">

            <div class="card shadow mb-4">

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

                                                <th>Instansi</th>

                                                <th>Provinsi</th>

                                                <th>Kab/Kota</th>

                                                <th>Gender</th>

                                                <th>Tgl Lahir</th>

                                                <th>Ultah</th>

                                                <th>Kondisi</th>

                                                <th>Detail</th>

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



<!-- Modal Detail -->

<div class="modal fade" id="modalDetail" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">

    <div class="modal-dialog modal-lg" role="document">

        <div class="modal-content">

                <div class="modal-header">

                        <h5 class="modal-title">Detail Alumni</h5>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">

                                <span aria-hidden="true">&times;</span>

                            </button>

                    </div>

            <div class="modal-body list-anggota">

        

            </div>

            <div class="modal-footer">

                <button type="button" class="btn btn-success btn-sm" data-dismiss="modal"> <i class="fas fa-undo-alt"> </i> Kembali </button>

            </div>

        </div>

    </div>

</div>



<script type="text/javascript">

    var table;

    $(document).ready(function () {

        table = $('#table').DataTable({

            "ajax":'<?php echo base_url('anggota/ajaxGetDataAnggota') ;?>'

        });

    });



    function detailAnggota(id_alumni){

        $.ajax({

            type: "GET",

            url: "<?= base_url('anggota/ajaxDetailAnggota');?>/" + id_alumni,

            data: "data",

            dataType: "JSON",

            success: function (data) {

                console.log(data);

                $('.list-anggota').html(`

                    <div class="container-fluid">

                        <div class="row mb-3">

                            <div class="col text-center">

                            <img src="<?= base_url('assets/img/anggota/');?>`+data.detail_alumni.photo +`" class="figure-img img-fluid rounded " id="photo" alt="Responsive image">

                            </div>

                        </div>

                        <div class="row mb-3">

                            <div class="col-sm-6">

                                <ul class="list-group">

                                    <li class="list-group-item"><h6> Nama : <b>`+ data.detail_alumni.nama +` </b></h6></li>

                                    <li class="list-group-item"><h6> TTL : <b>`+ data.detail_alumni.tempat_lahir +`, ` + new Date(data.detail_alumni.tgl_lahir).toLocaleDateString('en-GB') +` </b></<h6></li>

                                    <li class="list-group-item"><h6> Alamat : </h6>
                                    <p><b>`+ data.detail_alumni.alamat +` </b></p></li>

                                    <li class="list-group-item"><h6> E-mail : <b>`+ data.detail_alumni.email +` </b></h6></li>

                                    <li class="list-group-item"><h6> Kontak : <b>`+ data.detail_alumni.mobile_phone +` </b></h6></li>

                                    <li class="list-group-item"><h6> Provinsi : <b>`+ data.detail_alumni.nama_provinsi +` </b></h6></li>

                                </ul>

                            </div>

                            <div class="col-sm-6">

                                <ul class="list-group">

                                    <li class="list-group-item nip"><h6> NIP : <b>`+ data.detail_alumni.nip +` </b></h6></li>

                                    <li class="list-group-item"><h6>NPP : <b>`+ data.detail_alumni.npp +` </b></h6></li>

                                    <li class="list-group-item"><h6> Pangkat : <b>`+ data.detail_alumni.nama_pangkat +`, `+ data.detail_alumni.golongan + `/`+ data.detail_alumni.ruang +` </b></h6></li>

                                    <li class="list-group-item"><h6> Jabatan : <b>`+ data.detail_alumni.jabatan +` </b></h6></li>

                                    <li class="list-group-item"><h6> Kementrian : <b>`+ data.detail_alumni.nama_kementrian +` </b></h6></li>

                                    <li class="list-group-item"><h6> Kab/Kota : <b>`+ data.detail_alumni.nama_kab_kot +` </b></h6></li>
                                </ul>

                            </div>

                        </div>

                    </div>

                `);

                $('#modalDetail').modal('show');

            }

        });

    }

</script>