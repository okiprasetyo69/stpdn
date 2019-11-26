<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class Home extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_alumnus');
        $this->load->model('m_kegiatan');
        $this->load->model('m_gallery');
        $this->load->library('form_validation');
        $this->load->library('encryption');

    }



    public function index()

    {
        $data['banner'] = $this->m_gallery->getBannerHome();

        $this->load->view('frontend_design/header');

        $this->load->view('frontend/index', $data);

        $this->load->view('frontend_design/footer');

        

    }



    public function ajaxGetRandAnggota(){

        $data['rnd_anggota'] = $this->m_alumnus->getRandomAnggota();

        echo json_encode($data);

    }

    public function ajaxGetIdAnggota($id_alumni){

        $data['detail_alumni'] = $this->m_alumnus->getDetailAlumni($id_alumni);

        echo json_encode($data);

    }

    public function ajaxGetBerita(){
        $data['berita'] = $this->m_kegiatan->getBerita();
        echo json_encode($data);
    }

    public function ajaxGetRandKegiatan(){
        $data['rnd_kegiatan'] = $this->m_kegiatan->getRandomKegiatan();
        echo json_encode($data);
    }

    public function ajaxGetDetailKeg($id_keg){
        $data['dtl_keg'] = $this->m_kegiatan->getIdKegiatan($id_keg);
        echo json_encode($data);
    }

    public function ajaxLastKegiatan(){
        $data['last_keg'] = $this->m_kegiatan->getLastKegiatan();
        echo json_encode($data);
    }

    public function ajaxGetBanner(){
        
        echo json_encode($data);
    }

}



/* End of file Home.php */

