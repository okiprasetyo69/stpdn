<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Anggota extends CI_Controller {

    public function __construct(){
        parent::__construct();
        //is_logged_in();
        $this->load->model('m_alumnus');
        $this->load->library('form_validation');
        $this->load->library('encryption');
    }

    public function index()
    {
        $data['title'] = 'Daftar Alumni STPDN-03';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('frontend/anggota', $data);
        $this->load->view('templates/footer');
        
    }

    public function ajaxGetDataAnggota(){
        $list = $this->m_alumnus->getAnggota();
        $data = array();
        $no = 0;
        foreach($list as $result){
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $result->nama;
            $row[] = $result->instansi;
            $row[] = $result->nama_provinsi;
            $row[] = $result->nama_kab_kot;
            $row[] = $result->jenis_kelamin;
            $row[] = date("d-m-y", strtotime($result->tgl_lahir));
            $row[] = date("F", strtotime($result->tgl_lahir));
            $row[] = $result->meninggal;
            $row[] = 
                    '
                    <a class="badge badge-secondary badge-sm text-center" href="javascript:void(0)" title="Detail" onclick="detailAnggota('."'".$result->id_alumni."'".')">
                        <i class="fas fa-eye"></i>
                    </a>
                    ';
            $data[] = $row;
        }
        header('Content-type: application/json');
        echo json_encode(array('data' => $data));
    }

    public function ajaxDetailAnggota($id_alumni){
        $data['detail_alumni'] = $this->m_alumnus->getDetailAlumni($id_alumni);
        echo json_encode($data);
    }

}

/* End of file Home.php */
