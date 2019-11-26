
            <!-- Begin Page Content -->
            <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>
                <div class="row">
                    <div class="col">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary"> 
                                    Edit tentang STPDN-03
                                </h6>
                            </div>
                            <div class="card-body">
                                <?php echo form_open_multipart('about/ajaxUpdateAbout'); ?>
                                    <div class="form-group row"> 
                                        <div class="col-sm-10">
                                            <input type="hidden" class="form-control" id="id_about" name="id_about" placeholder="ID About" value="<?php echo $detail->id_about ;?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Judul</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="judul"  name="judul" placeholder="Judul" value="<?php echo $detail->judul ;?>">
                                            <?= form_error('judul','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Deskripsi</label>
                                        <div class="col-sm-10">
                                            <textarea type="text" name="deskripsi" class="form-control" id="deskripsi"><?= $detail->deskripsi;?></textarea>
                                            <?= form_error('deskripsi','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Tanggal</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="tgl_about"  name="tgl_about" placeholder="Tanggal" value="<?php echo date("d-m-Y", strtotime($detail->tgl_about)) ;?>">
                                            <?= form_error('tgl_about','<small class="text-danger pl-3">','</small>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-2">Foto</div>
                                        <div class="col sm-10">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <img src="<?= base_url('assets/img/gallery/').$detail->photo ;?>" class="img-thumbnail">
                                                </div>
                                                <div class="col-sm-9">
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="photo" name="photo" multiple="multiple">
                                                        <label class="custom-file-label" for="image">Pilih foto tentang</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row justify-content-end">
                                        <div class="col-sm-10">
                                            <button type="submit" name="edit_about" class="btn btn-success  btn-sm pull-right">
                                                <i class="fas fa-edit"> 
                                                Ubah Data</i>
                                            </button>
                                            <a href="<?= base_url('about');?>" name="kembali" class="btn btn-primary btn-sm pull-right">
                                                <i class="fas fa-undo">
                                                Kembali </i>
                                            </a>
                                        </div>
                                    </div>
                                <?php echo form_close(); ?>
                                <!-- form -->
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
    
</script>