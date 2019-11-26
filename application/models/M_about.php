<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_about extends CI_Model {

    var $table = 'about';

    public function getData(){
        $query = $this->db->get($this->table);
        return $query->result();
    }

    public function addAbout($data){
        $this->db->insert($this->table, $data);
		return $this->db->insert_id();
    }

    public function updateAbout($where, $data){
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }

    public function deleteAbout($id_about){
        $this->db->where('id_about', $id_about);
		$this->db->delete($this->table);
    }

    public function getMaxAboutCode(){
        $q = $this->db->query("select MAX(id_about) as kd_max from about");
        $kd = "";
		if($q->num_rows()>0)
		{
			foreach($q->result() as $k)
			{
				$tmp = ((int)$k->kd_max) + 1;
				$kd = $tmp;
			}
		}
		return $kd;
    }

    public function getFileById($id_about){
        $this->db->select('*');
        $this->db->where('id_about', $id_about);
        $query = $this->db->get($this->table);
		return $query->row();
    }
    public function getIdAbout($id_about){
        $this->db->select('*');
        $this->db->where('id_about', $id_about);
        $query = $this->db->get($this->table);
        return $query->result();
    }

    public function getAbout(){
        $query = $this->db->get($this->table);
        return $query->result();
    }
}

/* End of file M_about.php */

