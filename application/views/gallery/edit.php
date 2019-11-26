

            <!-- Begin Page Content -->

            <div class="container-fluid">



            <!-- Page Heading -->

            <h1 class="h3 mb-4 text-gray-800 text-center"> <b><?= $title2 ;?></b></h1>

                <div class="row">

                    <div class="col">

                        <div class="card shadow mb-4">

                            <div class="card-header py-3">

                                <h6 class="m-0 font-weight-bold text-primary"> 

                                    Edit gallery STPDN-03

                                </h6>

                            </div>

                            <div class="card-body">

                                <?php echo form_open_multipart('gallery/ajaxUpdateGallery'); ?>

                                    <div class="form-group row"> 

                                        <div class="col-sm-10">

                                            <input type="hidden" class="form-control" id="id_gal" name="id_gal" placeholder="ID Gallery" value="<?php echo $detail->id_gal ;?>">

                                            

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Nama Kegiatan</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="nama_kegiatan"  name="nama_kegiatan" value="<?= $detail->nama_kegiatan;?>">

                                            <?= form_error('nama_kegiatan','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Keterangan</label>

                                        <div class="col-sm-10">

                                            <textarea type="text" name="keterangan" class="form-control" id="keterangan" ><?= $detail->keterangan ;?></textarea>

                                            <?= form_error('keterangan','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Tanggal</label>

                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" id="tgl_kegiatan"  name="tgl_kegiatan"  value="<?= date("d-m-Y", strtotime($detail->tgl_kegiatan));?>">

                                            <?= form_error('tgl_kegiatan','<small class="text-danger pl-3">','</small>'); ?>

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

                                                        <label class="custom-file-label" for="image">Pilih foto</label>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="form-group row">

                                        <label for="name" class="col-sm-2 col-form-label">Kategori</label>

                                        <div class="col-sm-10">

                                            <select class="form-control" name="kategori" id="kategori"> 

                                                <option value="Album Kenangan">Album Kenangan</option>

                                                <option value="Album Pendidikan">Album Pendidikan</option>

                                                <option value="Banner">Banner</option>

                                            </select>

                                            <?= form_error('jenis_kelamin','<small class="text-danger pl-3">','</small>'); ?>

                                        </div>

                                    </div>

                                    <div class="form-group row justify-content-end">

                                        <div class="col-sm-10">

                                            <button type="submit" name="edit_gallery" class="btn btn-success  btn-sm pull-right">

                                                <i class="fas fa-edit"> 

                                                Ubah Data</i>

                                            </button>

                                            <a href="<?= base_url('gallery');?>" name="kembali" class="btn btn-primary btn-sm pull-right">

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