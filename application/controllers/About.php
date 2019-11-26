<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class About extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_about');

        $this->load->library('form_validation');

    }

    public function index()

    {

        $data['title'] = 'About STPDN-03';

        $data['title2'] = 'Tentang Kami STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Welcome User ' . $data['user']['name'];

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('about/index', $data);

        $this->load->view('templates/footer');

    }



    public function ajaxGetAbout(){

        $list = $this->m_about->getData();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->judul;

            $row[] = $result->deskripsi;

            $row[] = date("d-m-Y", strtotime($result->tgl_about));

            $row[] = 

                    '

                    <img src="'.base_url('assets/img/gallery/').$result->photo.'" width="100"  height="75" class="img-thumbnail" />

                    ';

            $row[] = '

                    <a class="badge badge-primary" href="'.base_url('about/editAbout/'.$result->id_about).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteAbout('."'".$result->id_about."'".')">

                        <i class="fas fa-trash-alt"></i> 

                        Delete

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }



    public function addAbout(){

        $this->form_validation->set_rules('judul', 'Judul', 'trim|required');

        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'trim|required');

        $this->form_validation->set_rules('tgl_about', 'Tanggal Tentang', 'trim|required');

        //$this->form_validation->set_rules('photo', 'Photo', 'trim|required');

        

        if ($this->form_validation->run() == FALSE) {

            $this->index();

        } else {

            $id_about = $this->input->post('id_about');

            $judul = $this->input->post('judul');

            $deskripsi = $this->input->post('deskripsi');

            $tgl_about = $this->input->post('tgl_about');

            $tgl_about = empty($tgl_about) ? date('Y-m-d') : $tgl_about;

            $tgl_about = explode("-", $tgl_about);

            $tgl_about = $tgl_about[2]."-".$tgl_about[1]."-".$tgl_about[0];

            $photo = $this->_uploadPhoto();

            $data = array(

                'id_about' => $id_about,

                'judul' => $judul,

                'deskripsi' => $deskripsi,

                'tgl_about' => $tgl_about,

                'photo' => $photo

            );

            $this->m_about->addAbout($data);

            $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data kegiatan berhasil ditambahkan !</div>');

            redirect( base_url('about')); 

        }

    }



    public function editAbout($id_about){

        $list = $this->m_about->getIdAbout($id_about);

        $data['detail'] = $list[0];

        $data['title'] = 'About';

        $data['title2'] = 'Edit Tentang Alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('about/edit', $data);

        $this->load->view('templates/footer');

        

    }



    public function ajaxUpdateAbout(){

        $this->form_validation->set_rules('judul', 'Judul', 'trim|required');

        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'trim|required');

        $this->form_validation->set_rules('tgl_about', 'Tanggal Tentang', 'trim|required');

        $id_about = $this->input->post('id_about');
        $data['detail'] = $this->m_about->getFileById($id_about);
        $photo_lama = $data['detail']->photo;

        //var_dump($photo_lama);die;

        $judul = $this->input->post('judul');

        $deskripsi = $this->input->post('deskripsi');

        $tgl_about = $this->input->post('tgl_about');

        $tgl_about = empty($tgl_about) ? date('Y-m-d') : $tgl_about;

        $tgl_about = explode("-", $tgl_about);

        $tgl_about = $tgl_about[2]."-".$tgl_about[1]."-".$tgl_about[0];

        $data = array(

            'id_about' => $id_about,

            'judul' => $judul,

            'deskripsi' => $deskripsi,

            'tgl_about' => $tgl_about

        );

        $upload_image = date('dmYHis').'-'.$_FILES['photo']['name'];

        if($upload_image){

            $config['allowed_types'] = 'gif|jpg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/gallery/';

            $config['file_name'] = $upload_image;



            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {

                $old_image = $photo_lama;

                //var_dump($old_image);die;

                if($old_image){

                    unlink(FCPATH . 'assets/img/gallery/' . $old_image);

                }

                $new_image = $this->upload->data('file_name');

                $this->db->set('photo', $new_image);

            } else{

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');

            }

        }

        //var_dump($data);die;

        $this->m_about->updateAbout(array('id_about' => $id_about), $data);

        $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data kegiatan berhasil diubah !</div>');

        redirect(base_url('about')); 

    }



    public function ajaxAboutCode(){

        $data['about_code'] = $this->m_about->getMaxAboutCode();

        echo json_encode($data);

    }



    private function _uploadPhoto(){

        $upload_photo =  date('dmYHis').'-'.$_FILES['photo']['name'];

        if($upload_photo){

            $config['allowed_types'] = 'gif|jpg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/gallery/';

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



    public function ajaxDeleteAbout($id_about){

        $file_photo = $this->m_about->getFileById($id_about);

        if($file_photo->photo != null ){

            $path_to_file = './assets/img/gallery/'.$file_photo->photo;

            unlink($path_to_file);

        }

        $this->m_about->deleteAbout($id_about);

        echo json_encode(array("status" => TRUE));

    }



}



/* End of file About.php */

