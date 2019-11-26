<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemangkatan extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('m_user');
        $this->load->model('m_pemangkatan');      

    }
    public function index()
    {
        $data['title'] = 'Pemangkatan';
        $data['title2'] = 'Pangkat Golongan dan Ruang';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        //echo 'Welcome User ' . $data['user']['name'];
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pemangkatan/index', $data);
        $this->load->view('templates/footer');
    }

    public function ajaxGetPangkat(){
        $list = $this->m_pemangkatan->getData();
        $data = array();
        $no = 0;
        foreach($list as $result){
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $result->nama_pangkat;
            $row[] = $result->golongan;
            $row[] = $result->ruang;
            $row[] = 
                    '
                    <a class="badge badge-warning" href="javascript:void(0)" title="Edit" onclick="editPangkat('."'".$result->id_pangkat."'".')">
                        <i class="glyphicon glyphicon-pencil"></i> 
                        Edit
                    </a>
                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deletePangkat('."'".$result->id_pangkat."'".')">
                        <i class="glyphicon glyphicon-trash"></i> 
                        Delete
                    </a>
                    ';
            $data[] = $row;
        }
        header('Content-type: application/json');
        echo json_encode(array('data' => $data));
    }

    public function ajaxGetMaxPangkatCode(){
        $data['pangkat_code'] = $this->m_pemangkatan->getMaxCodePangkat();
        echo json_encode($data);
    }

    public function ajaxAddPangkat(){
        $data = array(
            'id_pangkat' => $this->input->post('id_pangkat'),
            'nama_pangkat' => $this->input->post('nama_pangkat'),
            'golongan' => $this->input->post('golongan'),
            'ruang' => $this->input->post('ruang')
        );
        $insert = $this->m_pemangkatan->addPangkat($data);
        echo json_encode(array("status" => true));
    }
    public function ajaxUpdatePangkat(){
        $data = array(
            'id_pangkat' => $this->input->post('id_pangkat'),
            'nama_pangkat' => $this->input->post('nama_pangkat'),
            'golongan' => $this->input->post('golongan'),
            'ruang' => $this->input->post('ruang')
        );
        $this->m_pemangkatan->updatePangkat(array('id_pangkat' => $this->input->post('id_pangkat')), $data);
        echo json_encode(array("status" => true));
    }
    public function ajaxEditPangkat($id_pangkat){
        $data = $this->m_pemangkatan->getIdPangkat($id_pangkat);
        echo json_encode($data);
    }
    public function ajaxDeletePangkat($id_pangkat){
        $this->m_pemangkatan->deletaPangkat($id_pangkat);
        echo json_encode(array("status" => TRUE));
    }

}

/* End of file Pemangkatan.php */
