<div class="container mt-4 mb-4 animated fadeIn">
    <!-- section of about us -->
    <div class="col list-about">
        
    </div>
        <!-- section of kenangan -->
    <section id="kenangan" class="gallery-block cards-gallery wow slideInUp ">
        <hr class="featurette-divider">
        <h3 class="font-weight-bold display-35 text-center mb-4"> Album Kenangan</h3>
        <div class="row wow fadeInUp list-kenangan" data-wow-delay=".5s">
                <!-- Content -->
            
        </div>  
    </section>
    <!-- section of pendidikan -->
    <section id="pendidikan" class="gallery-block cards-gallery wow fadeInUp" data-wow-delay=".5s">
        <hr class="featurette-divider">
        <h3 class="font-weight-bold display-35 text-center mb-4"> Album Masa Pendidikan</h3>
        <div class="row list-pendidikan">
            <!-- Content -->
        </div>  
    </section>
<!-- end of container -->
</div>


<!-- Modal Kenangan -->
<div class="modal fade pr-0" id="modalKenangan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-xl modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body photo-kenangan">
                
            </div>
            <div class="modal-footer pt-2 pb-2 pr-3">
                <button type="button" class="btn btn-outline-primary" data-dismiss="modal"><i class="fas fa-times"></i> Tutup</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal Pendidikan -->
<div class="modal fade pr-0" id="modalPendidikan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-xl modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body photo-pendidikan">
                
            </div>
            <div class="modal-footer pt-2 pb-2 pr-3">
                <button type="button" class="btn btn-outline-primary" data-dismiss="modal"><i class="fas fa-times"></i> Tutup</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript"> 
    //kenangan
    $.ajax({
        type: "POST",
        url: "<?= base_url('/pp03/ajaxGetKenangan');?>",
        dataType: "JSON",
        success: function (data) {
            var listKenangan = "";
            $.each(data.list_kenangan, function (index, val) { 
                listKenangan += 
                    `
                    <div class="col-md-6 col-lg-4">
                        <div class="card border-0 transform-on-hover">
                            <a class="lightbox" style="cursor:pointer;">
                                <img src="<?= base_url('assets/img/gallery/') ;?>`+val.photo+`" data-echo="<?= base_url('assets/img/gallery/') ;?>`+ val.photo +`" alt="Card Image" class="card-img-top" onclick="previewKenangan(`+ val.id_gal+`)">
                            </a>
                            <div class="card-body">
                                <h6>`+ val.nama_kegiatan +`</h6>
                                <h6> Tanggal : `+ new Date(val.tgl_kegiatan).toLocaleDateString('en-GB') + `</h6>
                                <p class="text-muted card-text"> Deskripsi : `+val.keterangan+`</p>
                            </div>
                        </div>
                    </div>
                    `;
            });
            $('.list-kenangan').append(listKenangan);
        }
    });
    
    $.ajax({
        type: "POST",
        url: "<?= base_url('/pp03/ajaxGetAlbumPendidikan');?>",
        dataType: "JSON",
        success: function (data) {
            var listPendidikan = "";
            $.each(data.list_pendidikan, function (index, val) { 
                listPendidikan += `
                <div class="col-md-6 col-lg-4">
                    <div class="card border-0 transform-on-hover">
                        <a class="lightbox"  style="cursor:pointer;">
                            <img src="<?= base_url('assets/img/gallery/') ;?>`+val.photo+`" data-echo="<?= base_url('assets/img/gallery/') ;?>`+ val.photo +`" alt="Card Image" class="card-img-top" onclick="previewPendidikan(`+ val.id_gal+`)">
                        </a>
                        <div class="card-body">
                            <h6>`+ val.nama_kegiatan +`</h6>
                            <h6> Tanggal : `+ new Date(val.tgl_kegiatan).toLocaleDateString('en-GB') + `</h6>
                            <p class="text-muted card-text"> Deskripsi : `+val.keterangan+`</p>
                        </div>
                    </div>
                </div>
                `;
            });
            $('.list-pendidikan').append(listPendidikan);
        }
    });


    $.ajax({
        type: "POST",
        url: "<?= base_url('pp03/ajaxGetAbout');?>",
        dataType: "JSON",
        success: function (data) {
            var listAbout = "";
            $.each(data.about, function (index, val) { 
                listAbout += `
                <h3 class="font-weight-bold display-35 text-center mb-4"> `+ val.judul +` </h3>
                    <div class="row">
                        <div id="pp03" class="col-sm-3 mb-4 pr-4 pl-4 wow fadeInLeft" data-wow-delay="1s">
                            <img src="<?= base_url('assets/img/gallery/') ;?>`+ val.photo + `" class="card-img" alt="...">   
                        </div>
                        <div class="col-sm-9">
                                `+ val.deskripsi +`
                        </div>
                        <div class="col-sm-3 text-center">
                            <b>Tanggal : `+ new Date(val.tgl_about).toLocaleDateString('en-GB') + ` </b>
                        </div>    
                    </div>
                `;
            });
            $('.list-about').append(listAbout);
        }
    });

    function previewPendidikan(id_gal){
        //alert(id_gal);
        $.ajax({
            type: "GET",
            url: "<?= base_url('/pp03/ajaxGetIdAlbumPendidikan');?>/" + id_gal,
            data: "data",
            dataType: "JSON",
            success: function (data) {
                //console.log(data);
                $('.photo-pendidikan').html(`
                        <img src="<?= base_url('assets/img/gallery/') ;?>`+ data.dtl_pendidikan.photo +`" class="card-img" alt="...">
                `);
                $('#modalPendidikan').modal('show');
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error get data');
            }
        });
    }

    function previewKenangan(id_gal){
        //alert(id_gal);
        $.ajax({
            type: "GET",
            url: "<?= base_url('/pp03/ajaxGetIdAlbumKenangan');?>/" + id_gal,
            data: "data",
            dataType: "JSON",
            success: function (data) {
                //console.log(data);
                $('.photo-kenangan').html(`
                        <img src="<?= base_url('assets/img/gallery/') ;?>`+ data.dtl_kenangan.photo +`" class="card-img" alt="...">
                `);
                $('#modalKenangan').modal('show');
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error get data');
            }
        });
    }
    
</script>