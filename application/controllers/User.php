<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class User extends CI_Controller {



    public function __construct(){

        parent::__construct();

        is_logged_in();

        $this->load->library('form_validation');

        $this->load->library('encryption');

        $this->load->model('m_alumnus');

    }



    // public function index()

    // {   

    //     $data['title'] = 'Daftar Alumni STPDN-03';

    //     $this->load->view('frontend_design/header2');

    //     $this->load->view('frontend/anggota', $data);

    //     $this->load->view('frontend_design/footer');

        

    // }



    public function index()
    {   

        $data['title'] = 'My Profile';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Welcome User ' . $data['user']['name'];

        $this->load->view('templates/header', $data);

        $this->load->view('templates/sidebar', $data);

        $this->load->view('templates/topbar', $data);

        $this->load->view('user/index', $data);

        $this->load->view('templates/footer');

    }

    

    public function edit(){

        $data['title'] = 'Edit Profile';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        //echo 'Welcome User ' . $data['user']['name'];

        $this->form_validation->set_rules('name', 'Full Name', 'trim|required');
        
        if($this->form_validation->run() == false){

            $this->load->view('templates/header', $data);

            $this->load->view('templates/sidebar', $data);

            $this->load->view('templates/topbar', $data);

            $this->load->view('user/edit', $data);

            $this->load->view('templates/footer');

        } else{

            $email = $this->input->post('email');

            $name = $this->input->post('name');


            //check image upload

            $upload_image = $_FILES['image']['name'];

            //var_dump($upload_image); die;

            if($upload_image){

                $config['allowed_types'] = 'gif|jpg|png';

                $config['max_size'] = '2048';

                $config['upload_path'] = './assets/img/profile/';


                $this->load->library('upload', $config);


                if ($this->upload->do_upload('image')){

                    $old_image = $data['user']['image'];

                    if($old_image != 'default.jpg'){

                        unlink(FCPATH . 'assets/img/profile/' . $old_image );

                    }

                    $new_image = $this->upload->data('file_name');

                    $this->db->set('image', $new_image);

                }

                else{

                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">' . $this->upload->display_errors() . '</div>');

                    //echo $this->upload->display_errors();

                }

            }

            $this->db->set('name', $name);

            $this->db->where('email', $email);

            $this->db->update('user');

            $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Your profile has been updated !</div>');

            redirect('user');

        }

    }


    public function changePassword()
    {   

        $data['title'] = 'Change Password';

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('current_password', 'Current Password', 'trim|required');

        $this->form_validation->set_rules('new_password1', 'New Password', 'trim|required|min_length[3]|matches[new_password2]');

        $this->form_validation->set_rules('new_password2', 'Confirm Password', 'trim|required|min_length[3]|matches[new_password1]');


        if ($this->form_validation->run() == FALSE) {

            # code...

            $this->load->view('templates/header', $data);

            $this->load->view('templates/sidebar', $data);

            $this->load->view('templates/topbar', $data);

            $this->load->view('user/changepassword', $data);

            $this->load->view('templates/footer');

        } else {

            # code...

            $current_password = $this->input->post('current_password');

            $new_password = $this->input->post('new_password1');

            if( !password_verify($current_password, $data['user']['password'])){

                $this->session->set_flashdata('message','<div class="alert alert-danger" role="alert">Wrong current password !</div>');

                redirect('user/changePassword');

            } else{

                if($current_password == $new_password){

                    $this->session->set_flashdata('message','<div class="alert alert-danger" role="alert">New password cannot same be the same as current password !</div>');

                    redirect('user/changePassword');

                } else{

                    //New password valid

                    $password_hash = password_hash($new_password, PASSWORD_DEFAULT);

                    $this->db->set('password', $password_hash);

                    $this->db->where('email', $this->session->userdata('email'));

                    $this->db->update('user');

                    $this->session->set_flashdata('message','<div class="alert alert-success" role="alert">Password changed !</div>');

                    redirect('user/changePassword');

                }

            }

        }

    }

}



/* End of file User.php */

