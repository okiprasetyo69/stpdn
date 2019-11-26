<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class Wilayah extends CI_Controller {



    public function __construct(){

        parent::__construct();

        $this->load->model('m_user');

        $this->load->model('m_wilayah');      



    }



    public function index()

    {

        $data['title'] = 'Wilayah';

        $data['title2'] = 'Kewilayahan';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Welcome User ' . $data['user']['name'];

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('wilayah/index', $data);

        $this->load->view('templates/footer');

    }



    //ADD

    public function ajaxAddKementrian(){

        $data = array(

            'id_kementrian' => $this->input->post('id_kementrian'),

            'nama_kementrian' => $this->input->post('nama_kementrian')

        );

        $insert = $this->m_wilayah->addKementrian($data);

        echo json_encode(array("status" => true));

    }



    //Provinsi

    public function ajaxAddProvinsi(){

        $data = array(

            'id_prov' => $this->input->post('id_prov'),

            'nama_provinsi' => $this->input->post('nama_provinsi')

        );

        $insert = $this->m_wilayah->addProv($data);

        echo json_encode(array("status" => true));

    }

    public function ajaxGetMaxProvCode(){

        $data['prov_code'] = $this->m_wilayah->getMaxCodeProv();

        $data['list_prov'] = $this->m_wilayah->getProvCode();

        echo json_encode($data);

    }





    //Kabupaten Kota

    public function ajaxAddKabKot(){

        $data = array(

            'id_kab_kot' => $this->input->post('id_kab_kot'),

            'nama_kab_kot' => $this->input->post('nama_kab_kot'),

            'fk_id_prov' => $this->input->post('fk_id_prov')

        );

        $insert = $this->m_wilayah->addKabKot($data);

        echo json_encode(array("status" => true));

    }

    public function ajaxGetMaxKabKotCode(){

        $data['kab_kot_code'] = $this->m_wilayah->getMaxKodeKabKot();

        $data['list_kab_kot'] = $this->m_wilayah->getKabKotCode();

        echo json_encode($data);

    }



    //Kecamatan

    public function ajaxAddKec(){

        $data = array(

            'id_kec' => $this->input->post('id_kec'),

            'nama_kecamatan' => $this->input->post('nama_kecamatan'),

            'fk_id_kab_kot' => $this->input->post('fk_id_kab_kot')

        );

        $insert = $this->m_wilayah->addKec($data);

        echo json_encode(array("status" => true));

    }

    public function ajaxGetMaxKecCode(){

        $data['kec_code'] = $this->m_wilayah->getMaxKodeKec();

        $data['list_kec'] = $this->m_wilayah->getKecCode();

        echo json_encode($data);

    }

    

    //Kelurahan

    public function ajaxAddKel(){

        $data = array(

            'id_kel' => $this->input->post('id_kel'),

            'nama_kelurahan' => $this->input->post('nama_kelurahan'),

            'fk_id_kec' => $this->input->post('fk_id_kec')

        );

        $insert = $this->m_wilayah->addKel($data);

        echo json_encode(array("status" => true));

    }





    //GET

    public function ajaxGetKementrian(){

        $list = $this->m_wilayah->getKementrian();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_kementrian;

            $row[] = 

                    '

                    <a class="badge badge-warning" href="javascript:void(0)" title="Edit" onclick="editKementrian('."'".$result->id_kementrian."'".')">

                        <i class="glyphicon glyphicon-pencil"></i> 

                        Edit

                    </a>

                   

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }

    public function ajaxGetMaxKemCode(){

        $data['kem_code'] = $this->m_wilayah->getMaxKodeKementrian();

        echo json_encode($data);

    }

    public function ajaxGetIdKementrian(){



    }



    // Provinsi

    public function ajaxGetProv(){

        $list = $this->m_wilayah->getProvinsi();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_provinsi;

            $row[] = 

                    '

                    <a class="badge badge-warning" href="javascript:void(0)" title="Edit" onclick="editProv('."'".$result->id_prov."'".')">

                        <i class="glyphicon glyphicon-pencil"></i> 

                        Edit

                    </a>

                   

                    ';

            $data[] = $row;



        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }

    public function ajaxGetIdProv(){



    }

    // Kabupaten-Kota

    public function ajaxGetKabKot(){

        $list = $this->m_wilayah->getKabKot();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_provinsi;

            $row[] = $result->nama_kab_kot;

            $row[] = 

                    '

                    <a class="badge badge-warning" href="javascript:void(0)" title="Edit" onclick="editKabKot('."'".$result->id_kab_kot."'".')">

                        <i class="glyphicon glyphicon-pencil"></i> 

                        Edit

                    </a>

                   

                    ';

            $data[] = $row;



        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }

    public function ajaxGetIdKabKot(){



    }

    // Kecamatan

    public function ajaxGetKec(){

        $list = $this->m_wilayah->getKec();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_provinsi;

            $row[] = $result->nama_kab_kot;

            $row[] = $result->nama_kecamatan;

            $row[] = 

                    '

                    <a class="badge badge-warning" href="javascript:void(0)" title="Edit" onclick="editKec('."'".$result->id_kec."'".')">

                        <i class="glyphicon glyphicon-pencil"></i> 

                        Edit

                    </a>

                   

                    ';

            $data[] = $row;



        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }

    public function ajaxGetIdKec(){



    }

    // Kelurahan

    public function ajaxGetKel(){

        $list = $this->m_wilayah->getKel();

        $data = array();

        $no = 0;

        foreach($list as $result){

            $no++;

            $row = array();

            $row[] = $no;

            $row[] = $result->nama_provinsi;

            $row[] = $result->nama_kab_kot;

            $row[] = $result->nama_kecamatan;

            $row[] = $result->nama_kelurahan;

            $row[] = 

                    '

                    <a class="badge badge-warning" href="javascript:void(0)" title="Edit" onclick="editKel('."'".$result->id_kel."'".')">

                        <i class="glyphicon glyphicon-pencil"></i> 

                        Edit

                    </a>

                  

                    ';

            $data[] = $row;

        }

        header('Content-type: application/json');

        echo json_encode(array('data' => $data));

    }

    public function ajaxGetMaxKelCode(){

        $data['kel_code'] = $this->m_wilayah->getMaxKodeKel();

        echo json_encode($data);

    }

    public function ajaxGetIdKel(){



    }



    //UPDATE

    public function ajaxUpdateKementrian(){

        $data = array(

            'id_kementrian' => $this->input->post('id_kementrian'),

            'nama_kementrian' => $this->input->post('nama_kementrian')

        );

        $this->m_wilayah->updateKementrian(array('id_kementrian' => $this->input->post('id_kementrian')), $data);

        echo json_encode(array("status" => true));

    }

    public function ajaxEditKementrian($id_kementrian){

        $data = $this->m_wilayah->getIdkementrian($id_kementrian);

        echo json_encode($data);

    }

    // Provinsi

    public function ajaxUpdateProv(){

        $data = array(

            'id_prov' => $this->input->post('id_prov'),

            'nama_provinsi' => $this->input->post('nama_provinsi')

        );

        $this->m_wilayah->updateProv(array('id_prov' => $this->input->post('id_prov')), $data);

        echo json_encode(array("status" => true));

    }

    public function ajaxEditProv($id_prov){

        $data = $this->m_wilayah->getIdProv($id_prov);

        echo json_encode($data);

    }



    // Kabupaten-Kota

    public function ajaxUpdateKabKot(){

        $data = array(

            'id_kab_kot' => $this->input->post('id_kab_kot'),

            'nama_kab_kot' => $this->input->post('nama_kab_kot'),

            'fk_id_prov' => $this->input->post('fk_id_prov')

        );

        $this->m_wilayah->updateKabKot(array('id_kab_kot' => $this->input->post('id_kab_kot')), $data);

        echo json_encode(array("status" => true));

    }

    public function ajaxEditKabKot($id_kab_kot){

        $data = $this->m_wilayah->getIdKabKot($id_kab_kot);

        echo json_encode($data);

    }

    // Kecamatan

    public function ajaxUpdateKec(){

        $data = array(

            'id_kec' => $this->input->post('id_kec'),

            'nama_kecamatan' => $this->input->post('nama_kecamatan'),

            'fk_id_kab_kot' => $this->input->post('fk_id_kab_kot')

        );

        $this->m_wilayah->updateKec(array('id_kec' => $this->input->post('id_kec')), $data);

        echo json_encode(array("status" => true));

    }

    public function ajaxEditKec($id_kec){

        $data = $this->m_wilayah->getIdKec($id_kec);

        echo json_encode($data);

    }

    // Kelurahan

    public function ajaxUpdateKel(){

        $data = array(

            'id_kel' => $this->input->post('id_kel'),

            'nama_kelurahan' => $this->input->post('nama_kelurahan'),

            'fk_id_kec' => $this->input->post('fk_id_kec')

        );

        $this->m_wilayah->updateKel(array('id_kel' => $this->input->post('id_kel')), $data);

        echo json_encode(array("status" => true));

    }

    public function ajaxEditKel($id_kel){

        $data = $this->m_wilayah->getIdKel($id_kel);

        echo json_encode($data);

    }



    //DELETE

    public function ajaxDeleteKementrian($id_kementrian){

        $this->m_wilayah->deleteKementrian($id_kementrian);

        echo json_encode(array("status" => TRUE));

    }

    // Provinsi

    public function ajaxDeleteProv($id_prov){

        $this->m_wilayah->deleteProv($id_prov);

        echo json_encode(array("status" => TRUE));

    }

    // Kabupaten-Kota

    public function ajaxDeleteKabKot($id_kab_kot){

        $this->m_wilayah->deleteKabKot($id_kab_kot);

        echo json_encode(array("status" => TRUE));

    }

    // Kecamatan

    public function ajaxDeleteKec($id_kec){

        $this->m_wilayah->deleteKec($id_kec);

        echo json_encode(array("status" => TRUE));

    }

    // Kelurahan

    public function ajaxDeleteKel($id_kel){

        $this->m_wilayah->deleteKel($id_kel);

        echo json_encode(array("status" => TRUE));

    }



}



/* End of file Wilayah.php */

