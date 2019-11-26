<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class Kegiatan extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_kegiatan');

        $this->load->library('form_validation');

        $this->load->library('encryption');

    }



    public function index(){

        $data['title'] = 'Kegiatan Alumni STPDN-03';

        $this->load->view('frontend_design/header');

        $this->load->view('frontend/kegiatan', $data);

        $this->load->view('frontend_design/footer');

    }



    public function kegiatan()

    {

        $data['title'] = 'Kegiatan';

        $data['title2'] = 'Kegiatan Alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Welcome User ' . $data['user']['name'];

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('kegiatan/index', $data);

        $this->load->view('templates/footer');

    }

    public function ajaxDocKegiatan(){
        $data['doc_kegiatan'] = $this->m_kegiatan->getKegiatan();
        echo json_encode($data);
    }

    public function ajaxGetDetailKeg($id_keg){
        $data['dtl_keg'] = $this->m_kegiatan->getIdKegiatan($id_keg);
        echo json_encode($data);
    }

    public function ajaxGetPengumuman(){
        $list = $this->m_kegiatan->getBerita();
        $data = array();
        $no = 0;
        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_kegiatan;

            $row[] = $result->keterangan;

            $row[] = date("d-m-Y", strtotime($result->tgl_kegiatan));

            $row[] = 

                    '

                        <img src="'.base_url('assets/img/kegiatan/').$result->photo.'" width="100"  height="75" class="img-thumbnail" />

                    ';

            $row[] = $result->kategori;

            $row[] = $result->tempat;

            $row[] = '

                    <a class="badge badge-primary" href="'.base_url('kegiatan/editKegiatan/'.$result->id_keg).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));
        

    }


    public function ajaxGetDataKegiatan(){

        $list = $this->m_kegiatan->getData();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_kegiatan;

            $row[] = $result->keterangan;

            $row[] = date("d-m-Y", strtotime($result->tgl_kegiatan));

            $row[] = 

                    '

                        <img src="'.base_url('assets/img/kegiatan/').$result->photo.'" width="100"  height="75" class="img-thumbnail" />

                    ';

            $row[] = $result->kategori;

            $row[] = $result->tempat;

            $row[] = '

                    <a class="badge badge-primary" href="'.base_url('kegiatan/editKegiatan/'.$result->id_keg).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteKegiatan('."'".$result->id_keg."'".')">

                        <i class="fas fa-trash-alt"></i> 

                        Delete

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }



    public function editKegiatan($id_keg){

        $list = $this->m_kegiatan->getIdKegiatan($id_keg);
        //var_dump($list);die;
        $data['detail'] = $list;

        $data['title'] = 'Kegiatan';

        $data['title2'] = 'Edit Kegiatan Alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('kegiatan/edit', $data);

        $this->load->view('templates/footer');

    }



    public function ajaxKegiatanCode(){

        $data['kegiatan_code'] = $this->m_kegiatan->getMaxKegCode();

        echo json_encode($data);

    }



    public function ajaxAddKegiatan(){

        $this->form_validation->set_rules('nama_kegiatan', 'Nama Kegiatan', 'trim|required');

        $this->form_validation->set_rules('keterangan', 'Keterangan', 'trim|required');

        $this->form_validation->set_rules('tgl_kegiatan', 'Tanggal Kegiatan', 'trim|required');

        $this->form_validation->set_rules('kategori', 'Kategori', 'trim|required');

        $this->form_validation->set_rules('tempat', 'tempat', 'trim|required');

        //$this->form_validation->set_rules('photo', 'Photo', 'trim|required');

        

        if ($this->form_validation->run() == FALSE) {

            $this->index();

        } else {

            $id_keg = $this->input->post('id_keg');

            $nama_kegiatan = $this->input->post('nama_kegiatan');

            $koordinator = $this->input->post('koordinator');

            $kontak = $this->input->post('kontak');

            $keterangan = $this->input->post('keterangan');

            $tempat = $this->input->post('tempat');
            
            $tgl_kegiatan = $this->input->post('tgl_kegiatan');
            
            $tgl_kegiatan = empty($tgl_kegiatan) ? date('Y-m-d') : $tgl_kegiatan;
            
            $tgl_kegiatan = explode("-", $tgl_kegiatan);
            
            $tgl_kegiatan = $tgl_kegiatan[2]."-".$tgl_kegiatan[1]."-".$tgl_kegiatan[0];
            
            $waktu = $this->input->post('waktu');

            $photo = $this->_uploadPhoto();

            $kategori = $this->input->post('kategori');

            $data = array(

                'id_keg' => $id_keg,

                'nama_kegiatan' => $nama_kegiatan,

                'koordinator' => $koordinator,

                'kontak' => $kontak,

                'keterangan' => $keterangan,

                'tgl_kegiatan' => $tgl_kegiatan,
                
                'waktu' => $waktu,
                
                'photo' => $photo,

                'tempat' => $tempat,
                
                'kategori' => $kategori,
                
            );

            $this->m_kegiatan->addKegiatan($data);

            $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data kegiatan berhasil ditambahkan !</div>');

            redirect( base_url('kegiatan')); 

        }

    }



    public function ajaxUpdateKegiatan(){

        $id_keg = $this->input->post('id_keg');

        $data['dtl_keg'] = $this->m_kegiatan->getFileById($id_keg);

        $photo_lama = $data['dtl_keg']->photo;

        $nama_kegiatan = $this->input->post('nama_kegiatan');

        $koordinator = $this->input->post('koordinator');

        $kontak = $this->input->post('kontak');

        $keterangan = $this->input->post('keterangan');

        $tempat = $this->input->post('tempat');

        $tgl_kegiatan = $this->input->post('tgl_kegiatan');

        $tgl_kegiatan = empty($tgl_kegiatan) ? date('Y-m-d') : $tgl_kegiatan;

        $tgl_kegiatan = explode("-", $tgl_kegiatan);

        $tgl_kegiatan = $tgl_kegiatan[2]."-".$tgl_kegiatan[1]."-".$tgl_kegiatan[0];

        $waktu = $this->input->post('waktu');

        $kategori = $this->input->post('kategori');

        $data = array(

            'id_keg' => $id_keg,

            'nama_kegiatan' => $nama_kegiatan,

            'koordinator' => $koordinator,

            'kontak' => $kontak,

            'keterangan' => $keterangan,

            'tgl_kegiatan' => $tgl_kegiatan,

            'waktu' => $waktu,

            'tempat' => $tempat,

            'kategori' => $kategori

        );

        $upload_image = date('dmYHis').'-'.$_FILES['photo']['name'];

        if($upload_image){

            $config['allowed_types'] = 'gif|jpg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/kegiatan/';

            $config['file_name'] = $upload_image;



            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {

                $old_image = $photo_lama;

                //var_dump($old_image);die;

                if($old_image){

                    unlink(FCPATH . 'assets/img/kegiatan/' . $old_image);

                }

                $new_image = $this->upload->data('file_name');

                $this->db->set('photo', $new_image);

            } else{

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');

            }

        }

        //var_dump($data);die;

        $this->m_kegiatan->updateKegiatan(array('id_keg' => $id_keg), $data);

        $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data kegiatan berhasil diubah !</div>');

        redirect(base_url('kegiatan')); 

    }



    private function _uploadPhoto(){

        $upload_photo =  date('dmYHis').'-'.$_FILES['photo']['name'];

        if($upload_photo){

            $config['allowed_types'] = 'gif|jpg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/kegiatan/';

            $config['overwrite'] = TRUE;

            $config['file_name'] = $upload_photo;



            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {

                $new_image = $this->upload->data();

                return $new_image["file_name"];

            } else{

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');

            }

        }

    }



    public function ajaxDeleteKegiatan($id_gal){

        $file_photo = $this->m_kegiatan->getFileById($id_gal);

        if($file_photo->photo != null ){

            $path_to_file = './assets/img/kegiatan/'.$file_photo->photo;

            unlink($path_to_file);

        }

        $this->m_kegiatan->deleteKegiatan($id_gal);

        echo json_encode(array("status" => TRUE));

    }

}



/* End of file Kegiatan.php */

