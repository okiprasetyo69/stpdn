<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class M_user extends CI_Model {

    var $table = 'user';

    public function getData(){
        $this->db->select('a.id , a.name, a.email, a.image, b.role, a.is_active, a.date_created');
        $this->db->join('user_role b', 'a.role_id = b.id', 'join');        
        $query = $this->db->get('user a');
        return  $query->result();
    }

    public function addUser($data){
        $this->db->insert($this->table, $data);
		return $this->db->insert_id();
    }

    public function getRole(){
        $this->db->select('id, role');
        $query = $this->db->get('user_role');
        return $query->result();
    }

    public function getMaxUserCode(){
        $q = $this->db->query("select MAX(id) as kd_max from user");

        $kd = "";

		if($q->num_rows()>0)

		{

			foreach($q->result() as $k)

			{

				$tmp = ((int)$k->kd_max)+1;

				$kd = $tmp;

			}

		}

		return $kd;
    }

    public function getIdUser($id){
        $this->db->select('*');

        $this->db->where('id', $id);

        $query = $this->db->get($this->table);

        return $query->result();
    }

    public function getEmailUser($id){
        $this->db->select('email');
        $this->db->where('id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();
    }

    public function getFileById($id){
        $this->db->select('*');

        $this->db->where('id', $id);

        $query = $this->db->get($this->table);

        return $query->row();
    }

    public function updateUser($where, $data){

        $this->db->update($this->table, $data, $where);

        return $this->db->affected_rows();

    }

    public function deleteUser($id){

        $this->db->where('id', $id);

		$this->db->delete($this->table);

    }
}



/* End of file M_user.php */

