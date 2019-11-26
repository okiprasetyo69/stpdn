<div id="kegiatan" class="container mt-4 mb-4 animated fadeIn" >
    <!-- section of about us -->
<h3 class="font-weight-bold display-35 text-center mb-4">Daftar Kegiatan Alumni</h3>
    <div class="row doc-kegiatan">
        <!-- content -->
    </div>
</div>

<!-- Modal -->
<div class="modal fade p-0" id="modalKegiatan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-lg modal-dialog" role="document">
        <div class="modal-content">
            <!-- DATA -->
        </div>
    </div>
</div>

<script type="text/javascript"> 
    $.ajax({
        type: "POST",
        url: "<?= base_url('kegiatan/ajaxDocKegiatan');?>",
        dataType: "JSON",
        success: function (data) {
            var docKegiatan = '';
            $.each(data.doc_kegiatan, function (index, val) { 
                docKegiatan += `
                            <div class="col col-sm-6">
                                <div class="card shadow-sm mt-4 mb-4 mr-2 ml-3">
                                    <div class="card-header text-center">
                                        <h4>`+ val.nama_kegiatan+`</h4>
                                    </div>
                                    <div class="card-body ">
                                        <!-- card body content -->
                                        <div class="row">
                                            <div class="col-sm-4 d-flex justify-content-center">
                                                <img src="<?= base_url('assets/img/kegiatan/') ;?>`+val.photo+`" alt="Card Image" class="card-img">
                                            </div>
                                            <div class="col-sm-8 mt-2">
                                                <p class="card-text font-weight-light text-truncate">
                                                Koordinator : `+ val.koordinator+`<br>
                                                No.HP : `+ val.kontak +`<br>
                                                Lokasi : `+ val.tempat +`<br>
                                                Tanggal : `+ new Date(val.tgl_kegiatan).toLocaleDateString('en-GB') +` <br>
                                                Waktu : `+ val.waktu +`</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="button" class="btn btn-outline-primary font-weight-bold  float-right" onclick=detailKegiatan(`+ val.id_keg +`)>
                                            Selengkapnya
                                        </button>
                                    </div>
                                </div>
                            </div>
                            `;
            });
            $('.doc-kegiatan').append(docKegiatan);
        }
    });

    function detailKegiatan(id_keg){
        $.ajax({
            type: "GET",
            url: "<?= base_url('kegiatan/ajaxGetDetailKeg');?>/" + id_keg,
            data: "data",
            dataType: "JSON",
            success: function (data) {
                $('.modal-content').html(`
                    <div class="modal-header">
                        <h5>`+ data.dtl_keg.nama_kegiatan +`</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row d-flex justify-content-center">
                                    <img src="<?= base_url('assets/img/kegiatan/') ;?>`+data.dtl_keg.photo+`" alt="Card Image" class=" card-img img-thumbnail contain-img mb-3">
                            </div>
                            <div class="row">
                                <ul class="list-group full-width mb-3">
                                    <li class="list-group-item active"><i class="fas fa-info-circle"></i>  Info Utama</li>
                                    <li class="list-group-item"><b>Koordinator </b> `+ data.dtl_keg.koordinator+`</li>
                                    <li class="list-group-item"><b> No.HP </b>`+ data.dtl_keg.kontak +`</li>
                                    <li class="list-group-item"><b> Lokasi </b> `+ data.dtl_keg.tempat +`</li>
                                    <li class="list-group-item"><b> Tanggal </b> `+ new Date(data.dtl_keg.tgl_kegiatan).toLocaleDateString('en-GB') +`</li>
                                    <li class="list-group-item"><b> Waktu </b> `+ data.dtl_keg.waktu +`</li>
                                </ul>
                                <ul class="list-group full-width">
                                    <li class="list-group-item active"><i class="fas fa-book-open"></i>  Rincian Kegiatan</li>
                                    <li class="list-group-item">`+ data.dtl_keg.keterangan+`</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                `);
                $('#modalKegiatan').modal('show');
                $('.modal-title').text('Keterangan kegiatan');
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error get data');
            }
        });
    }
</script>