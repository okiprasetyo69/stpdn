<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class Pp03 extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_gallery');

        $this->load->model('m_about');

        

    }



    public function index()

    {

        $this->load->view('frontend_design/header');

        $this->load->view('frontend/pp03');

        $this->load->view('frontend_design/footer');

    }



    public function ajaxGetKenangan(){

        $data['list_kenangan'] = $this->m_gallery->getDataKenangan();

        echo json_encode($data);

    }



    public function ajaxGetAlbumPendidikan(){

        $data['list_pendidikan'] = $this->m_gallery->getAlbumPendidikan();

        echo json_encode($data);

    }

    public function ajaxGetIdAlbumPendidikan($id_gal){
        $data['dtl_pendidikan'] = $this->m_gallery->getGalAlbumPendidikan($id_gal);
        echo json_encode($data);
    }

    public function ajaxGetIdAlbumKenangan($id_gal){
        $data['dtl_kenangan'] = $this->m_gallery->getGalAlbumKenangan($id_gal);
        echo json_encode($data);
    }

    public function ajaxGetAbout(){

        $data['about'] = $this->m_about->getData();

        echo json_encode($data);

    }



}



/* End of file Home.php */

