<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class M_kegiatan extends CI_Model {



    var $table = 'kegiatan';



    public function getData(){

        $query = $this->db->get($this->table);

        return $query->result();

    }


    public function getIdKegiatan($id_keg){

        $this->db->select('*');

        $this->db->where('id_keg', $id_keg);

        $query = $this->db->get($this->table);

        return $query->row();

    }

    public function getRandomKegiatan(){
        $this->db->select('*');
        $this->db->where('kategori', 'Dokumentasi Kegiatan');
        $this->db->order_by('rand()');
        $this->db->limit(2);
        $query = $this->db->get($this->table);
        return  $query->result();
        
    }


    public function addKegiatan($data){

        $this->db->insert($this->table, $data);

		return $this->db->insert_id();

    }



    public function getMaxKegCode(){

        $q = $this->db->query("select MAX(id_keg) as kd_max from kegiatan");

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



    public function getFileById($id_keg){

        $this->db->select('*');

        $this->db->where('id_keg', $id_keg);

        $query = $this->db->get($this->table);

		return $query->row();

    }

    public function getBerita(){
        $this->db->select('*');
        $this->db->where('kategori', 'Berita');
        $query = $this->db->get($this->table);
		return $query->result();
    }

    public function getKegiatan(){
        $this->db->select('*');
        $this->db->where('kategori', 'Dokumentasi Kegiatan');
        $query = $this->db->get($this->table);
		return $query->result();
    }

    public function getLastKegiatan(){
        $this->db->select('*');
        $this->db->where('kategori', 'Dokumentasi Kegiatan');
        $this->db->order_by('tgl_kegiatan', 'desc');
        $this->db->limit(1);
        $query = $this->db->get($this->table);
		return $query->result();
    }

    public function updateKegiatan($where, $data){

        $this->db->update($this->table, $data, $where);

        return $this->db->affected_rows();

    }



    public function deleteKegiatan($id_keg){

        $this->db->where('id_keg', $id_keg);

		$this->db->delete($this->table);

    }



}



/* End of file M_kegiatan.php */

