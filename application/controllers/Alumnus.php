<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

date_default_timezone_set('Asia/Jakarta');



class Alumnus extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_user');

        $this->load->model('m_alumnus');

        $this->load->library('form_validation');

        

    }



    public function index()

    {

        $data['title'] = 'Register';

        $data['title2'] = 'Register Alumni STPDN-03';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('alumnus/index', $data);

        $this->load->view('templates/footer');

    }



    public function ajaxGetKemCode(){

        $data['list_kem'] = $this->m_alumnus->getKementrianCode();

        echo json_encode($data);

    }

    public function ajaxGetProvCode(){

        $data['list_prov'] = $this->m_alumnus->listProv();

        echo json_encode($data);

    }

    public function ajaxGetKabKotCode(){

        $data['list_kab_kot'] = $this->m_alumnus->listKabKot();

        echo json_encode($data);

    }

    public function ajaxGetKecCode(){

        $data['list_kec'] = $this->m_alumnus->listKec();

        echo json_encode($data);

    }

    public function ajaxGetKelCode(){

        $data['list_kel'] = $this->m_alumnus->listKel();

        echo json_encode($data);

    }

    public function ajaxPangkatCode(){

        $data['list_pangkat'] = $this->m_alumnus->getPangkatCode();

        echo json_encode($data);

    }

    public function ajaxAlumniCode(){

        $data['alumni_code'] = $this->m_alumnus->getMaxAlumniCode();

        echo json_encode($data);

    }



    public function addAlumni(){

        $data['title'] = 'Register';

        $data['title2'] = 'Register Alumni STPDN-03';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();



        $this->form_validation->set_rules('nama', 'Nama', 'trim|required');

        // $this->form_validation->set_rules('tempat_lahir', 'Tempat Lahir', 'trim|required');

        $this->form_validation->set_rules('tgl_lahir', 'Tanggal Lahir', 'trim|required');

        $this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'trim|required');

        // $this->form_validation->set_rules('alamat', 'Alamat', 'trim|required');

        // $this->form_validation->set_rules('mobile_phone', 'Kontak', 'trim|required');

        // $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');

        // $this->form_validation->set_rules('photo', 'Photo', 'trim|required');

        $this->form_validation->set_rules('nip', 'NIP', 'trim|required');

        $this->form_validation->set_rules('npp', 'NPP', 'trim|required');

        $this->form_validation->set_rules('fk_id_kementrian', 'Kementrian', 'trim|required');

        $this->form_validation->set_rules('fk_id_prov', 'Provinsi', 'trim|required');

        $this->form_validation->set_rules('fk_id_kab_kot', 'Kabupaten-Kota', 'trim|required');

        $this->form_validation->set_rules('fk_id_kec', 'Kecamtan', 'trim|required');

        $this->form_validation->set_rules('fk_id_kel', 'Kelurahan', 'trim|required');

        $this->form_validation->set_rules('fk_id_pangkat', 'Pangkat', 'trim|required');

        // $this->form_validation->set_rules('jabatan', 'Jabatan', 'trim|required');

        // $this->form_validation->set_rules('instansi', 'Instansi', 'trim|required');

        $this->form_validation->set_rules('meninggal', 'Meninggal', 'trim|required');

        

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('templates/header', $data);

            $this->load->view('templates/sidebar', $data);

            $this->load->view('templates/topbar', $data);

            $this->load->view('alumnus/index', $data);

            $this->load->view('templates/footer');

        } else {

            $tgl_lahir = $this->input->post('tgl_lahir');

            $tgl_lahir = empty($tgl_lahir) ? date('Y-m-d') : $tgl_lahir;

            $tgl_lahir = explode("-", $tgl_lahir);

            $tgl_lahir = $tgl_lahir[2]."-".$tgl_lahir[1]."-".$tgl_lahir[0];

        

            $photo = $this->_uploadPhoto();

            $dataAlumni = [

                'id_alumni' => $this->input->post('id_alumni'),

                'nama' => $this->input->post('nama'),

                'tempat_lahir' => $this->input->post('tempat_lahir'),

                'tgl_lahir' => $tgl_lahir,

                'jenis_kelamin' => $this->input->post('jenis_kelamin'),

                'mobile_phone' => $this->input->post('mobile_phone'),

                'alamat' => $this->input->post('alamat'),

                'email' => $this->input->post('email'),

                'photo' => $photo,

                'nip' => $this->input->post('nip'),

                'npp' => $this->input->post('npp'),

                'fk_id_kementrian' => $this->input->post('fk_id_kementrian'),

                'fk_id_prov' =>  $this->input->post('fk_id_prov'),

                'fk_id_kab_kot' => $this->input->post('fk_id_kab_kot'),

                'fk_id_kec' =>  $this->input->post('fk_id_kec'),

                'fk_id_kel' => $this->input->post('fk_id_kel'),

                'fk_id_pangkat' => $this->input->post('fk_id_pangkat'),

                'jabatan' =>$this->input->post('jabatan'),

                'instansi' => $this->input->post('instansi'),

                'meninggal' => $this->input->post('meninggal'),

            ];

            //var_dump($data);die;

            $this->m_alumnus->addAlumnus($dataAlumni);

            $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data anggota berhasil ditambahkan !</div>');

            redirect( base_url('/alumnus/ajaxGetAlumni')); 

        }



    

    }



    public function ajaxGetAlumni(){

        $data['title'] = 'My Profile';

        $data['title2'] = 'Daftar Alumni STPDN-03';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('alumnus/daftar_alumnus', $data);

        $this->load->view('templates/footer');

    }



    public function ajaxGetDataAlumni(){

        $list = $this->m_alumnus->getAlumni();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama;

            $row[] = $result->jenis_kelamin;

            $row[] = $result->alamat;

            $row[] = $result->mobile_phone;

            $row[] = $result->email;

            $row[] = $result->instansi;

            $row[] = $result->meninggal;

            $row[] = 

                    '

                    <a class="badge badge-warning" href="javascript:void(0)" title="Detail" onclick="detailAlumni('."'".$result->id_alumni."'".')">

                        <i class="fas fa-portrait"></i> 

                        Detail

                    </a>

                    <a class="badge badge-primary" href="'.base_url('alumnus/ajaxEditAlumni/'.$result->id_alumni).'" title="Edit">

                        <i class="fas fa-edit"></i> 

                        Edit

                    </a>

                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteAlumni('."'".$result->id_alumni."'".')">

                        <i class="fas fa-trash-alt"></i> 

                        Delete

                    </a>

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }





    public function ajaxEditAlumni($id_alumni){

        //Get Data by ID    

        $list = $this->m_alumnus->getIdAlumni($id_alumni);

        $data['detail'] = $list[0];

        //var_dump($data['detail']);die;



        $data['title'] = 'Edit';

        $data['title2'] = 'Edit Alumni STPDN-03';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('alumnus/edit', $data);

        $this->load->view('templates/footer');

    }



    public function updateAlumni(){

        $id_alumni = $this->input->post('id_alumni');

        $data['detail'] = $this->m_alumnus->getFileById($id_alumni);

        $photo_lama = $data['detail']->photo;

        

        $tgl_lahir = $this->input->post('tgl_lahir');



        $tgl_lahir = empty($tgl_lahir) ? date('Y-m-d') : $tgl_lahir;

        $tgl_lahir = explode("-", $tgl_lahir);

        $tgl_lahir = $tgl_lahir[2]."-".$tgl_lahir[1]."-".$tgl_lahir[0];

    



        $data = [

            'id_alumni' => $this->input->post('id_alumni'),

            'nama' => $this->input->post('nama'),

            'tempat_lahir' => $this->input->post('tempat_lahir'),

            'tgl_lahir' => $tgl_lahir,

            'jenis_kelamin' => $this->input->post('jenis_kelamin'),

            'mobile_phone' => $this->input->post('mobile_phone'),

            'alamat' => $this->input->post('alamat'),

            'email' => $this->input->post('email'),

            'nip' => $this->input->post('nip'),

            'npp' => $this->input->post('npp'),

            'fk_id_kementrian' => $this->input->post('fk_id_kementrian'),

            'fk_id_prov' =>  $this->input->post('fk_id_prov'),

            'fk_id_kab_kot' => $this->input->post('fk_id_kab_kot'),

            'fk_id_kec' =>  $this->input->post('fk_id_kec'),

            'fk_id_kel' => $this->input->post('fk_id_kel'),

            'fk_id_pangkat' => $this->input->post('fk_id_pangkat'),

            'jabatan' =>$this->input->post('jabatan'),

            'instansi' => $this->input->post('instansi'),

            'meninggal' => $this->input->post('meninggal'),

        ];

        

        $upload_image = date('dmYHis').'-'.$_FILES['photo']['name'];

        if($upload_image){

            $config['allowed_types'] = 'gif|jpg|jpeg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/anggota/';

            $config['file_name'] = $upload_image;



            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {

                $old_image = $photo_lama;

                //var_dump($old_image);die;

                if($old_image){

                    unlink(FCPATH . 'assets/img/anggota/' . $old_image);

                }

                $new_image = $this->upload->data('file_name');

                $this->db->set('photo', $new_image);

            } else{

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');

            }

        }

        //var_dump($data);die;

        $this->m_alumnus->updateAlumni(array('id_alumni' => $id_alumni), $data);

        $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data anggota berhasil diubah !</div>');

        redirect( base_url('/alumnus/ajaxGetAlumni')); 

    }

    



    private function _uploadPhoto(){

        $upload_photo =  date('dmYHis').'-'.$_FILES['photo']['name'];

        if($upload_photo){

            $config['allowed_types'] = 'gif|jpg|jpeg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/anggota/';

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



    public function ajaxDetailAlumni($id_alumni){

        $data['detail_alumni'] = $this->m_alumnus->getDetailAlumni($id_alumni);

        echo json_encode($data);

    }

    public function ajaxDeleteAlumni($id_alumni){

        $file_photo = $this->m_alumnus->getFileById($id_alumni);

        if($file_photo->photo != null ){

            $path_to_file = './assets/img/anggota/'.$file_photo->photo;

            unlink($path_to_file);

        }

        $this->m_alumnus->deleteAlumni($id_alumni);

        echo json_encode(array("status" => TRUE));

    }

}



/* End of file Alumnus.php */

