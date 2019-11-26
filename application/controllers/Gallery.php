<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class Gallery extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_gallery');

        $this->load->library('form_validation');

        $this->load->library('encryption'); 

        

    }

    public function index()

    {

        $data['title'] = 'Gallery';

        $data['title2'] = 'Gallery Alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Welcome User ' . $data['user']['name'];

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('gallery/index', $data);

        $this->load->view('templates/footer');

    }



    public function ajaxGetDataGallery(){

        $list = $this->m_gallery->getAlbumPendidikan();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_kegiatan;

            $row[] = $result->keterangan;

            $row[] = date("d-m-Y", strtotime($result->tgl_kegiatan));

            $row[] = $result->kategori;

            $row[] = 

                    '

                    <img src="'.base_url('assets/img/gallery/').$result->photo.'" width="100"  height="75" class="img-thumbnail" />

                    ';

            $row[] = '

                    <a class="badge badge-primary" href="'.base_url('gallery/editGallery/'.$result->id_gal).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteGallery('."'".$result->id_gal."'".')">

                        <i class="fas fa-trash-alt"></i> 

                        Delete

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }

    public function ajaxGetKenangan(){
        $list = $this->m_gallery->getDataKenangan();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_kegiatan;

            $row[] = $result->keterangan;

            $row[] = date("d-m-Y", strtotime($result->tgl_kegiatan));

            $row[] = $result->kategori;

            $row[] = 

                    '

                    <img src="'.base_url('assets/img/gallery/').$result->photo.'" width="100"  height="75" class="img-thumbnail" />

                    ';

            $row[] = '

                    <a class="badge badge-primary" href="'.base_url('gallery/editGallery/'.$result->id_gal).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteGallery('."'".$result->id_gal."'".')">

                        <i class="fas fa-trash-alt"></i> 

                        Delete

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));
    }

    public function ajaxGetBanner(){
        $list = $this->m_gallery->getBanner();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_kegiatan;

            $row[] = $result->keterangan;

            $row[] = date("d-m-Y", strtotime($result->tgl_kegiatan));

            $row[] = $result->kategori;

            $row[] = 

                    '

                    <img src="'.base_url('assets/img/gallery/').$result->photo.'" width="100"  height="75" class="img-thumbnail" />

                    ';

            $row[] = '

                    <a class="badge badge-primary" href="'.base_url('gallery/editGallery/'.$result->id_gal).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteGallery('."'".$result->id_gal."'".')">

                        <i class="fas fa-trash-alt"></i> 

                        Delete

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));
    }



    public function editGallery($id_gal){

        $list = $this->m_gallery->getIdGallery($id_gal);

        $data['detail'] = $list[0];

        $data['title'] = 'Gallery';

        $data['title2'] = 'Edit Gallery Alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('gallery/edit', $data);

        $this->load->view('templates/footer');

    }



    public function ajaxGalleryCode(){

        $data['gallery_code'] = $this->m_gallery->getMaxGalCode();

        echo json_encode($data);

    }



    public function ajaxAddGallery(){

        $data['title'] = 'Gallery';

        $data['title2'] = 'Edit Gallery Kegiatan Alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('nama_kegiatan', 'Nama Kegiatan', 'trim|required');

        $this->form_validation->set_rules('keterangan', 'Keterangan', 'trim|required');

        $this->form_validation->set_rules('tgl_kegiatan', 'Tanggal Kegiatan', 'trim|required');

        $this->form_validation->set_rules('kategori', 'Kategori', 'trim|required');

        //$this->form_validation->set_rules('photo', 'Photo', 'trim|required');

        

        if ($this->form_validation->run() == FALSE) {

            $this->index();

        } else {

            $id_gal = $this->input->post('id_gal');

            $nama_kegiatan = $this->input->post('nama_kegiatan');

            $keterangan = $this->input->post('keterangan');

            $kategori = $this->input->post('kategori');

            $tgl_kegiatan = $this->input->post('tgl_kegiatan');

            $tgl_kegiatan = empty($tgl_kegiatan) ? date('Y-m-d') : $tgl_kegiatan;

            $tgl_kegiatan = explode("-", $tgl_kegiatan);

            $tgl_kegiatan = $tgl_kegiatan[2]."-".$tgl_kegiatan[1]."-".$tgl_kegiatan[0];

            $photo = $this->_uploadPhoto();

            $data = array(

                'id_gal' => $id_gal,

                'nama_kegiatan' => $nama_kegiatan,

                'keterangan' => $keterangan,

                'tgl_kegiatan' => $tgl_kegiatan,

                'photo' => $photo,

                'kategori' => $kategori,

            );

            $this->m_gallery->addGallery($data);

            $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data gallery berhasil ditambahkan !</div>');

            redirect( base_url('gallery')); 

        }

    }



    public function ajaxUpdateGallery(){

        $id_gal = $this->input->post('id_gal');

        $data['dtl_gal'] = $this->m_gallery->getFileById($id_gal);
        $photo_lama = $data['dtl_gal']->photo;

        $nama_kegiatan = $this->input->post('nama_kegiatan');

        $keterangan = $this->input->post('keterangan');

        $tgl_kegiatan = $this->input->post('tgl_kegiatan');

        $tgl_kegiatan = empty($tgl_kegiatan) ? date('Y-m-d') : $tgl_kegiatan;

        $tgl_kegiatan = explode("-", $tgl_kegiatan);

        $tgl_kegiatan = $tgl_kegiatan[2]."-".$tgl_kegiatan[1]."-".$tgl_kegiatan[0];

        $kategori = $this->input->post('kategori');

        $data = array(

            'id_gal' => $id_gal,

            'nama_kegiatan' => $nama_kegiatan,

            'keterangan' => $keterangan,

            'tgl_kegiatan' => $tgl_kegiatan,

            'kategori'  => $kategori

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

        $this->m_gallery->updateGallery(array('id_gal' => $id_gal), $data);

        $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data gallery berhasil diubah !</div>');

        redirect( base_url('/gallery')); 

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



    public function ajaxDeleteGallery($id_gal){

        $file_photo = $this->m_gallery->getFileById($id_gal);

        if($file_photo->photo != null ){

            $path_to_file = './assets/img/gallery/'.$file_photo->photo;

            unlink($path_to_file);

        }

        $this->m_gallery->deleteGallery($id_gal);

        echo json_encode(array("status" => TRUE));

    }



}



/* End of file Gallery.php */

