<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class Admin extends CI_Controller {



    public function __construct(){

        parent::__construct();

        is_logged_in(); 
        $this->load->model('m_user');
        

    }



    public function index()

    {

        $data['title'] = 'Administrator';

        $data['title2'] = 'Dashboard';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array(); 

        

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar',$data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('admin/index', $data);

        $this->load->view('templates/footer');

    }



    public function role()

    {

        $data['title'] = 'Administrator';

        $data['title2'] = 'Role';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get_where('user_role')->result_array();

        

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar',$data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('admin/role', $data);

        $this->load->view('templates/footer');

    }



    public function roleAccess($role_id)

    {

        $data['title'] = 'Administrator';

        $data['title2'] = 'Role Access';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get_where('user_role', ['id' => $role_id])->row_array();



        $this->db->where('id !=', 1);

        $data['menu'] = $this->db->get('user_menu')->result_array();

        

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar',$data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('admin/role-access', $data);

        $this->load->view('templates/footer');

    }

    

    public function changeAccess(){

        $menu_id = $this->input->post('menuId');

        $role_id = $this->input->post('roleId');

        $data = [

            'role_id' => $role_id,

            'menu_id' => $menu_id

        ];

        $result = $this->db->get_where('user_access_menu', $data);

        if($result->num_rows() < 1){

            echo json_encode($this->db->insert('user_access_menu', $data));

        } else{

            echo json_encode($this->db->delete('user_access_menu', $data)); 

        }

        $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Access Changed ! </div>');

    }

    public function ajaxGetUser(){
        
        $data['title'] = 'Administrator';

        $data['title2'] = 'Management User';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array(); 


        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar',$data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('admin/management-user', $data);

        $this->load->view('templates/footer');
    }

    public function ajaxGetDataUser(){
        $list = $this->m_user->getData();
        //var_dump($list);die;
        $data = array();
        $no = 0;
        foreach($list as $result){
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $result->name;
            $row[] = $result->email;
            $row[] = ' 
                        <img src="'.base_url('assets/img/profile/').$result->image.'" width="100"  height="75" class="img-thumbnail" />
                    ';
            $row[] = $result->role;
            $row[] = $result->is_active;
            $row[] = date('d F Y', $result->date_created);
            $row[] = 
                    '
                    <a class="badge badge-warning" href="'.base_url('admin/ubahPassword/'.$result->id).'" title="Ubah Password>
                        <i class="fas fa-portrait"></i> 
                        Ubah Password
                    </a>
                    <a class="badge badge-primary" href="'.base_url('admin/editUser/'.$result->id).'" title="Edit">
                        <i class="fas fa-edit"></i> 
                        Edit
                    </a>
                    <a class="badge badge-danger" href="javascript:void(0)" title="Hapus" onclick="deleteUser('."'".$result->id."'".')">
                        <i class="fas fa-trash-alt"></i> 
                        Delete
                    </a>
                    ';
            $data[] = $row;
        }
        header('Content-type: application/json');
        echo json_encode(array('data' => $data));
    }

    public function ajaxAddUser(){

        $this->form_validation->set_rules('name', 'Name', 'trim|required');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[user.email]',[
            'is_unique' => 'This email has already registered !'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'trim|required|min_length[3]|matches[password2]',[

            'mathces' => 'password dont match !',

            'min_length' => 'password to short'        ]);

        $this->form_validation->set_rules('password2', 'Password', 'trim|required|matches[password1]');

        if($this->form_validation->run() == false){
            $this->ajaxGetUser();
        } else{
            $name = $this->input->post('name', true);
            $email = $this->input->post('email', true);
            $image = $this->_uploadPhoto();
            $role_id = $this->input->post('role_id');
            $is_active = $this->input->post('is_active');
            $data = [

                'name' => htmlspecialchars($name) ,

                'email' => htmlspecialchars($email) ,

                'image' => $image,

                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),

                'role_id' => $role_id,

                'is_active' => $is_active,

                'date_created' => time()

            ];
            $this->m_user->addUser($data);
            $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data user berhasil ditambahkan !</div>');
            redirect( base_url('/admin/ajaxGetUser')); 
        }

    }


    public function ubahPassword(){

        // $list = $this->m_user->getIdUser($id);

        // $data['users'] = $list[0];
        $data['title'] = 'Ubah Password';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('admin/changepassword', $data);

        $this->load->view('templates/footer');
    }

    public function changePassword(){
        // $id = $this->input->post('id_user');

        // $list = $this->m_user->getIdUser($id);
        // $data['detail_users'] = $list[0];

        // $password_user = $data['detail_users']->password;
        
        //var_dump($password_user); die;
        $data['title'] = 'Ubah Password';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('current_password', 'Current Password', 'trim|required');

        $this->form_validation->set_rules('new_password1', 'New Password', 'trim|required|min_length[3]|matches[new_password2]');

        $this->form_validation->set_rules('new_password2', 'Confirm Password', 'trim|required|min_length[3]|matches[new_password1]');


        if ($this->form_validation->run() == FALSE) {

            # code...
            $this->ubahPassword();

        } else {

            # code...

            $current_password = $this->input->post('current_password');

            $new_password = $this->input->post('new_password1');

            if( !password_verify($current_password, $data['user']['password'])){

                $this->session->set_flashdata('message','<div class="alert alert-danger" role="alert">Wrong current password !</div>');

                redirect('admin/ubahPassword');

            } else{

                if($current_password == $new_password){

                    $this->session->set_flashdata('message','<div class="alert alert-danger" role="alert">New password cannot same be the same as current password !</div>');

                    redirect('admin/ubahPassword');

                } else{

                    //New password valid

                    $password_hash = password_hash($new_password, PASSWORD_DEFAULT);

                    $this->db->set('password', $password_hash);

                    $this->db->where('email', $this->session->userdata('email'));

                    $this->db->update('user');

                    $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Password changed !</div>');

                    redirect('admin/ubahPassword');

                }

            }

        }
    }

    public function editUser($id){

        $list = $this->m_user->getIdUser($id);

        $data['detail'] = $list[0];

        $data['title'] = 'User';

        $data['title2'] = 'Edit user alumni STPDN-03 ';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('admin/edituser', $data);

        $this->load->view('templates/footer');
    }

    public function ajaxUpdateUser(){

        $id = $this->input->post('id');

        $data['dtl_user'] = $this->m_user->getFileById($id);
        $photo_lama = $data['dtl_user']->image;
        //var_dump($photo_lama);die;

        $name = $this->input->post('name');
        $email = $this->input->post('email');
        $role_id = $this->input->post('role_id');
        $is_active = $this->input->post('is_active');
        $data = array(
            'id' => $id,
            'name' => $name,
            'email' => $email,
            'role_id' => $role_id,
            'is_active' => $is_active,
        );
        $upload_image = date('dmYHis').'-'.$_FILES['image']['name'];

        if($upload_image){

            $config['allowed_types'] = 'gif|jpg|jpeg|png';

            $config['max_size'] = '2048';

            $config['upload_path'] = './assets/img/profile/';

            $config['file_name'] = $upload_image;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('image')) {

                $old_image = $photo_lama;


                if($old_image){

                    unlink(FCPATH . 'assets/img/profile/' . $old_image);

                }

                $new_image = $this->upload->data('file_name');

                $this->db->set('image', $new_image);

            } else{

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');

            }

        }
        $this->m_user->updateUser(array('id' => $id), $data);

        $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Data user berhasil diubah !</div>');

        redirect( base_url('/admin/ajaxGetUser')); 

    }

    public function ajaxDeleteUser($id){
        $file_photo = $this->m_user->getFileById($id);

        if($file_photo->image != null ){

            $path_to_file = './assets/img/profile/'.$file_photo->image;

            unlink($path_to_file);

        }

        $this->m_user->deleteUser($id);

        echo json_encode(array("status" => TRUE));
    }

    public function ajaxGetRole(){
        $data['list_role'] = $this->m_user->getRole();
        echo json_encode($data);
    }

    public function ajaxUserCode(){
        $data['user_code'] = $this->m_user->getMaxUserCode();
        echo json_encode($data);
    }

    private function _uploadPhoto(){
        $upload_photo =  date('dmYHis').'-'.$_FILES['image']['name'];
        if($upload_photo){
            $config['allowed_types'] = 'gif|jpg|jpeg|png';
            $config['max_size'] = '2048';
            $config['upload_path'] = './assets/img/profile/';
            $config['overwrite'] = TRUE;
            $config['file_name'] = $upload_photo;

            $this->load->library('upload', $config);
            if ($this->upload->do_upload('image')) {
                $new_image = $this->upload->data();
                return $new_image["file_name"];
            } else{
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');
            }
        }
    }

}



/* End of file Controllername.php */

