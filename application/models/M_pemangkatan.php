<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pemangkatan extends CI_Model {

    var $table = 'pangkat';

    public function getData(){
        $query = $this->db->get($this->table);
        return  $query->result();
    }
    public function getMaxCodePangkat(){
        $q = $this->db->query("select MAX(id_pangkat) as kd_max from pangkat");
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
    public function addPangkat($data){
        $this->db->insert($this->table, $data);
		return $this->db->insert_id();
    }
    public function updatePangkat($where, $data){
        $this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
    }
    public function deletaPangkat($id_pangkat){
        $this->db->where('id_pangkat', $id_pangkat);
		$this->db->delete($this->table);
    }
    public function getIdPangkat($id_pangkat){
        $this->db->from($this->table);
		$this->db->where('id_pangkat', $id_pangkat);
		$query = $this->db->get();
		return $query->row();
    }

}

/* End of file M_pemangkatan.php */
