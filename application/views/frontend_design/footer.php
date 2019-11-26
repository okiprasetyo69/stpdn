        <!-- FOOTER -->

         <!-- Container Begin -->

         <div class="container" style="margin-top:50px;">

            <hr class="featurette-divider">

        

            <p class="float-right">Dev by IT Squad &middot; <a href="#">Back to top</a></p>

            <p>&copy; 2019 STPDN Pamong Praja-03</p>

        </footer>

        </main>

        <!-- Bootstrap core JavaScript-->

        <script src="<?= base_url('assets/') ;?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>



        <!-- Core plugin JavaScript-->

        <script src="<?= base_url('assets/') ;?>vendor/jquery-easing/jquery.easing.min.js"></script>



        <!-- Custom scripts for all pages-->

        <script src="<?= base_url('assets/') ;?>js/sb-admin-2.min.js"></script>



        <!-- Page level plugins -->

        <script src="<?= base_url('assets/') ;?>vendor/datatables/jquery.dataTables.min.js"></script>

        <script src="<?= base_url('assets/') ;?>vendor/datatables/dataTables.bootstrap4.min.js"></script>



        <!-- DatePicker -->

        <script src="<?= base_url("assets/") ;?>datepicker/js/bootstrap-datepicker.js"></script>

        <!-- <script src="<?= base_url("assets/") ;?>moment/min/moment.min.js"></script>

        <script src="<?= base_url('assets/') ;?>bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script> -->



        <!-- Page level custom scripts -->

        <script src="<?= base_url('assets/') ;?>js/demo/datatables-demo.js"></script>



        <!-- Alertify -->

        <script src="<?= base_url('assets/') ;?>alertifyjs/alertify.min.js"></script>



        <!-- WOW Js -->

        <script src="<?= base_url('assets/') ;?>js/wow.js" async></script>



        <!-- baguettebox Js -->

        <script src="<?= base_url('assets/') ;?>js/baguettebox.js"></script>


        <script>
            window.onload = function() {
                baguetteBox.run('.cards-gallery'); 
                new WOW().init();
            };
                
            $(document).ready(function() {
                $('#AnggotaTable').DataTable();
                $('#welcomeModal').modal();
            } );
        </script>

        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/UpUp/1.0.0/upup.min.js"> </script>
        <script> 
            UpUp.start({
                'cache-version': 'v2',
                'content-url': '<?= base_url($this->uri->segment(1));?>',
                'content': 'Cannot reach site. Please check your internet connection.',
                'service-worker-url': '/upup.sw.min.js',
                'assets': [
                    '/assets/img/Lambang_IPDN.png',
                    'css/offline.css'
                ]
            });
        </script>

        <script src="<?= base_url('/service-worker.js');?>"> </script> -->

    </body>

</html>