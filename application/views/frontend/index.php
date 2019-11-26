       <!-- Wrap the rest of the page in another container to center all the content. -->
        <!-- Carousel Section -->
            <div id="carouselSlide" class="animated fadeIn carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <!-- <li data-target="#carouselSlide" data-slide-to="0" class="active"></li> -->
                    <?php 
                        foreach($banner as $i => $banners){?>
                            <li data-target="#carouselSlide "data-slide-to="<?php echo $i; ?>"<?php echo !$i ? ' class="active"' : ''; ?>></li>
                        <?php
                        }
                    ?>
                    
                    <!-- <li data-target="#carouselSlide" data-slide-to="2"></li>
                    <li data-target="#carouselSlide" data-slide-to="3"></li> -->
                </ol>
                <!-- slide show -->
                <div class="carousel-inner">
                    <?php 
                        $counter = 0;
                        foreach($banner as $bn){
                            ?> 
                                <div class="carousel-item <?= ($counter == 0) ? "active" : "" ?>">
                                    <div class="darken-slide list-banner">
                                        <img src="<?=base_url("assets/img/gallery/".$bn->photo); ?>" class="d-block w-100" alt="Responsive image">
                                        <div class="carousel-caption d-md-block">
                                        <h1 class="display-50"><?= $bn->nama_kegiatan;?></h1>
                                        <p class="display-20"><?= $bn->keterangan ;?></p>
                                        </div>
                                    </div> 
                                </div>
                            <?php
                            $counter++;
                        }
                    ?>
                </div>
                <!-- control -->
                <a class="carousel-control-prev" href="#carouselSlide" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselSlide" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        <!-- Container Begin -->
        <section id="welcome "> 
        <!-- Modal Welcome-->
        <div class="modal fade animated slideInDown " id="welcomeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered text-center" role="document">
                <div class="modal-content">
                    <div class="modal-header  m-auto">
                        <h2 class=" text-primary" id="exampleModalLongTitle">SELAMAT DATANG</h2>
                    </div>
                    <div class="modal-body p-3 info-berita">
                        <!-- content -->
                    </div>
                    <div class="modal-footer p-2">
                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fas fa-times"></i> Tutup</button>
                    </div>
                </div>
            </div>
        </div>
        </section>
        <!-- /end of container -->

        <!-- PAMONG PRAJA 03 -->
        <section id="pp03" >
        <div class="card full-width bg-gradientOrange text-white text-center pt-4 pb-4">
        <div class="container">       
                    <div class="card-body wow fadeInUp">
                    <h3 class="card-title font-weight-bold display-35" >PAMONG PRAJA 03 TAHUN 1994</h3>
                    <section class="wow slideInLeft" data-wow-duration="2s"> 
                    <div class="row mb-5 mt-5">
                        <div class="col-6">   
                        <img src="<?=base_url("assets/img/src/"); ?>pamong_praja.JPG" class="card-img" alt="...">
                        </div>
                        <div class="col-6">   
                        <img src="<?=base_url("assets/img/src/"); ?>IPDN.jpg" class="card-img" alt="...">
                        </div>
                    </div>
                    </section>
                    
                    <p class="card-text font-weight-light display-20">Kami putra putri Indonesia siap berbakti bagi negara nusa dan bangsa jaya abadi.
                    </p> 
                    <p class="card-text font-weight-light display-20">Bekal ilmu untuk beramal bagi bangsaku dengan dasar Ambeg Paramarta kami bekerja.
                    </p>
                    <p class="card-text font-weight-light display-20">Sikaptegas dan tegar siap sedia menyebar ke seluruh Nusantara.
                    </p> 
                    <p class="card-text font-weight-light display-20">Angkatan muda Tunas Pamong Praja insan tauladan bangsa.
                    </p> 
                    <p class="card-text font-weight-light display-20">Institut Pemerintah Dalam Negri menyebar keseluruh Nusantara.
                    </p> 
                    <p class="card-text font-weight-light display-20">Pancasila dasar jiwa raga kami kubangun Nusa Bansa.
                    </p>
                    <p class="card-text ">
                    <a class="nav-link" href="<?=  base_url('pp03') ;?>">
                    <button type="button" class="btn btn-light btn-lg btn-radius-25 font-weight-bold">
                        Lihat Selengkapnya <i class="fas fa-chevron-right"></i>
                    </button></p></a>
                </div>
        </div>
        </div>
        </section>
        
       <!-- KEGIATAN -->
       <section id="kegiatan_alumni" >
        <div class="card full-width bg-gradientWhitey text-black text-center pt-4 pb-4">
        <div class="container">       
                <div class="card-body wow fadeInUp">
                    <h3 class="card-title font-weight-bold display-35" >KEGIATAN ALUMNI</h3>
                    <section class="wow slideInUp" data-wow-duration="2s"> 
                    <div class="row mb-4 mt-4 last-kegiatan">
                        <!-- GET latest kegiatan -->
                    </div>
                    </section>
                    <hr class="featurette-divider">
                    <h4 class="text-right"><span class="badge badge-primary mt-1 mb-1">2 Kegiatan Sebelumnya</span></h4>
                    <div class="row mb-3 wow slideInLeft rand-kegiatan" data-wow-duration="2s">
                        <!-- GET preview kegiatan -->
                    </div>
                    
                    <p class="card-text ">
                    <a class="nav-link" href="<?=  base_url('kegiatan') ;?>">
                    <button type="button" class="btn btn-dark btn-lg btn-radius-25 font-weight-bold">
                        Lihat Selengkapnya <i class="fas fa-chevron-right"></i>
                    </button></p></a>
                </div>
        </div>
        </div>
        </section>

        <!-- ANGGOTA -->
        <section id="anggota" class="bg-gradientGreeny pt-5 pb-5" >
        <div class="container">
        <section class="wow fadeInUp">
            <h3 class="font-weight-bold  text-center display-35">ANGGOTA ANGKATAN</h3>
            <br>
            <p class="font-weight-light text-center display-20"> 
                Demi Tuhan Yang Maha Esa Nusa dan Bangsa Aku bersumpah setia.
            </p>
            <p class="font-weight-light text-center display-20"> 
                Untuk mengabdi dan melindungi serta mengayomi bangsaku negeriku.
            </p>
            <p class="font-weight-light text-center display-20"> 
               Tanah airku Indonesia kuserahkan seluruh jiwa ragaku.
            </p>
            <p class="font-weight-light text-center display-20"> 
               Kukerahkan seluruh dayaku untuk Pertiwi.
            </p>
            <p class="font-weight-light text-center display-20"> 
               Terimalah baktiku. Terimalah pengabdianku.
            </p> 
            <p class="font-weight-light text-center display-20"> 
               Abdi Praja. Dharma Satya.
            </p>
            <p class="font-weight-light text-center display-20"> 
               Nagara Bhakti.
            </p>
                <hr class="featurette-divider">
        </section>
        <div class="wow slideInLeft row justify-content-center list-anggota" data-wow-duration="2s">    
            <!-- Loop Content -->
        </div>

        <div class="row justify-content-center mt-3">
        <a class="nav-link" href="<?=  base_url('auth') ;?>">
            <button type="button" class="btn btn-light btn-lg btn-radius-25 font-weight-bold">
                Lihat Selengkapnya <i class="fas fa-chevron-right"></i>
            </button>
        </a>
        </div>
        
        </div>
        </div>
        </section>
        
<!-- Modal Anggota -->
<div class="modal fade" id="modalAnggota" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Info Detail Alumni</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <div class="modal-body info-anggota">
                <div class="container-fluid">
                    <!-- Content -->
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Kegiatan -->
<div class="modal fade" id="modalKegiatan" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
                <div class="modal-header">
                        <h5 class="modal-title">Info Kegiatan</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
            <div class="modal-body info-kegiatan">
                <div class="container-fluid">
                    <!-- Content -->
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    //berita
    $.ajax({
        type: "POST",
        url: "<?= base_url('/home/ajaxGetBerita');?>",
        dataType: "JSON",
        success: function (data) {
            var listBerita = '';
            $.each(data.berita, function (index, val) { 
                $('.info-berita').html(`
                    <div class="modal-body info-berita">
                        <ul class="list-group full-width mb-3">
                        <li class="list-group-item active"><i class="fas fa-info-circle"></i>  Info Utama</li>
                            <li class="list-group-item">Pengumuman : `+ val.nama_kegiatan +`</li>
                            <li class="list-group-item">Keterangan : `+ val.keterangan +`</li>
                            <li class="list-group-item">Tanggal : `+ new Date(val.tgl_kegiatan).toLocaleDateString('en-GB') +`</li>
                            <li class="list-group-item">Lokasi : `+ val.tempat +`</li>
                        </ul>
                        <p> 
                            <img src="<?= base_url('assets/img/kegiatan/') ;?>`+val.photo+`" class="card-img img-thumbnail contain-img" alt="..."> 
                        </p>
                    </div>
                `);
                        
            });
        }
    });


    //Last Acivity
    $.ajax({
        type: "POST",
        url: "<?= base_url('home/ajaxLastKegiatan');?>",
        dataType: "JSON",
        success: function (data) {
            lastKegiatan = '';
            $.each(data.last_keg, function (index, val) { 
                lastKegiatan += `
                            <div class="card full-width shadow-sm">
                                <div class="card-header text-center text-white bg-dark">
                                    <h4><div class="float-left"> `+ val.nama_kegiatan+ ` </div><span class="badge badge-danger float-lg-right mt-1">Reuni Terbaru !</span></h4>
                                </div>
                                <div class="card-body">
                                    <!-- card body content -->
                                    <div class="row">
                                        <div class="col-sm-4 d-flex justify-content-center">
                                            <img src="<?= base_url('assets/img/kegiatan/') ;?>`+val.photo+`" alt="Card Image" class="card-img contain-img">
                                        </div>
                                        <div class="col-sm-8 mt-2 text-left">
                                            <p class="card-text font-weight-light text-truncate">
                                            Koordinator : `+ val.koordinator +`<br>
                                            No.HP : `+ val.kontak +`<br>
                                            Lokasi : `+ val.tempat +`<br>
                                            Tanggal : `+ new Date(val.tgl_kegiatan).toLocaleDateString('en-GB')  +` <br>
                                            Waktu : `+ val.waktu +`
                                            <hr>
                                            Deskripsi : `+ val.keterangan +`</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            `;
            });
            $('.last-kegiatan').append(lastKegiatan);
        }
    });

    //anggota
    $.ajax({
        type: "POST",
        url: "<?= base_url('/home/ajaxGetRandAnggota');?>",
        dataType: "JSON",
        success: function (data) {
            var listAnggota = '';
            $.each(data.rnd_anggota, function (index, val) { 
                listAnggota += 
                    `
                    <div class="card mb-3">
                        <div class="row no-gutters">
                            <div class="d-flex justify-content-center col-md-4">
                                <img src="<?= base_url('assets/img/anggota/') ;?>`+val.photo+`" class="card-img" alt="...">
                            </div>
                            <div class="col-md-8">
                            <div class="card-body ">
                                <h5 class="card-title"> `+ val.nama + `</h5>
                                <p class="card-text font-weight-light text-truncate">
                                    Jenis Kelamin : `+ val.jenis_kelamin +`<br>
                                    Provinsi : `+val.nama_provinsi+`<br>
                                    E-mail : `+ val.email +`
                                <p class="card-text c">
                                    <small class="text-muted">
                                    <button type="button" class="btn btn-outline-primary font-weight-bold" onclick="infoAlumni(`+val.id_alumni+`)">
                                        Kontak Info
                                    </button>
                                    </small>
                                </p>
                            </div>
                            </div>
                        </div>
                    </div> 
                    `;
            });
            $('.list-anggota').append(listAnggota);
        }
    });

    //Rand Activity
    $.ajax({
        type: "POST",
        url: "<?= base_url('/home/ajaxGetRandKegiatan');?>",
        dataType: "JSON",
        success: function (data) {
            randKegiatan = '';
            $.each(data.rnd_kegiatan, function (index, val) { 
                randKegiatan += `
                                <div class="col col-sm-6">
                                    <div class="card shadow-sm mt-2 mb-2">
                                        <div class="card-header text-center ">
                                            <h4>`+val.nama_kegiatan+`</h4>
                                        </div>
                                        <div class="card-body">
                                            <!-- card body content -->
                                            <div class="row">
                                                <div class="col-sm-4 d-flex justify-content-center">
                                                    <img src="<?= base_url('assets/img/kegiatan/') ;?>`+ val.photo+ `" alt="Card Image" class="card-img contain-img">
                                                </div>
                                                <div class="col-sm-8 mt-2 text-left">
                                                    <p class="card-text font-weight-light text-truncate">
                                                    Koordinator : `+ val.koordinator+`<br>
                                                    No.HP : `+ val.kontak +`<br>
                                                    Lokasi : `+ val.tempat +`<br>
                                                    Tanggal : `+ new Date(val.tgl_kegiatan).toLocaleDateString('en-GB') +`<br>
                                                    Waktu : `+ val.waktu +`</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                `;
            });
            $('.rand-kegiatan').append(randKegiatan);
        }
    });

    //Info Alumni
    function infoAlumni(id_alumni){
        $.ajax({
        url : "<?php echo base_url('home/ajaxGetIdAnggota')?>/" + id_alumni,
        type: "GET",
        data: "data",
        dataType: "JSON",
        success: function (data) {
            $('.info-anggota').html(`
                    <div class="container-fluid">
                        <div class="row mb-3">
                            <div class="col text-center">
                                <img src="<?= base_url('assets/img/anggota/');?>`+ data.detail_alumni.photo + `" class="figure-img img-fluid rounded " id="photo" alt="Responsive image">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <ul class="list-group">
                                    <li class="list-group-item nip"><h6>Nama : <b> `+ data.detail_alumni.nama +` </b></h6></li>
                                    <li class="list-group-item nip"><h6>TTL : <b>` + data.detail_alumni.tempat_lahir +', '+ new Date(data.detail_alumni.tgl_lahir).toLocaleDateString('en-GB') + `</b></h6></li>
                                    <li class="list-group-item"><h6>Pangkat : <b>`+ data.detail_alumni.nama_pangkat +`, `+ data.detail_alumni.golongan + `/`+ data.detail_alumni.ruang +` </b></h6></li>
                                </ul>
                            </div>
                            <div class="col-sm-6">
                                <ul class="list-group">
                                    <li class="list-group-item"><h6>Instansi : <b>`+ data.detail_alumni.instansi +` </b></h6></li>
                                    <li class="list-group-item"><h6>Provinsi : <b>`+ data.detail_alumni.nama_provinsi +` </b></h6></li>
                                    <li class="list-group-item"><h6>Kab/Kota : <b>`+ data.detail_alumni.nama_kab_kot +` </b></h6></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                `);
            $('#modalAnggota').modal('show');
            $('.modal-title').text('Info Alumni'); 
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error get data');
            }
        });
    }
</script>
