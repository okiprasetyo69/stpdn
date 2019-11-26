<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class M_wilayah extends CI_Model {

    var $tableKementrian    = 'kementrian';
    var $tableProv          = 'provinsi';
    var $tableKabKot        = 'kabupaten_kota';
    var $tableKec           = 'kecamatan';
    var $tableKel           = 'kelurahan';

    //Get data
    public function getKementrian(){
        $query = $this->db->get($this->tableKementrian);
        return  $query->result();
    }
    public function getIdkementrian($id_kementrian){
        $this->db->from($this->tableKementrian);
		$this->db->where('id_kementrian', $id_kementrian);
		$query = $this->db->get();
		return $query->row();
    }
    public function getMaxKodeKementrian(){
        $q = $this->db->query("select MAX(id_kementrian) as kd_max from kementrian");
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

    //Provinsi
    public function getProvinsi(){
        $query = $this->db->get($this->tableProv);
        return  $query->result();
    }
    public function getIdProv($id_prov){
        $this->db->from($this->tableProv);
		$this->db->where('id_prov', $id_prov);
		$query = $this->db->get();
		return $query->row();
    }
    public function getMaxCodeProv(){
        $q = $this->db->query("select MAX(id_prov) as kd_max from provinsi");
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
    public function getProvCode(){
        $this->db->select('id_prov, nama_provinsi');
        $query = $this->db->get($this->tableProv);
        return $query->result();
    }


    //Kabupaten Kota
    public function getKabKot(){
        $this->db->select('b.id_kab_kot, a.nama_provinsi, b.nama_kab_kot');
        $this->db->join('kabupaten_kota b', 'a.id_prov = b.fk_id_prov', 'join');        
        $query = $this->db->get('provinsi a');
        return  $query->result();
    }
    public function getIdKabKot($id_kab_kot){
        $this->db->from($this->tableKabKot);
		$this->db->where('id_kab_kot', $id_kab_kot);
		$query = $this->db->get();
		return $query->row();
    }
    public function getMaxKodeKabKot(){
        $q = $this->db->query("select MAX(id_kab_kot) as kd_max from kabupaten_kota");
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
    public function getKabKotCode(){
        $this->db->select('id_kab_kot, nama_kab_kot');
        $query = $this->db->get($this->tableKabKot);
        return $query->result();
    }

    //Kecamatan
    public function getKec(){
        $this->db->select('c.id_kec, a.nama_provinsi, b.nama_kab_kot, c.nama_kecamatan');
        $this->db->join('kabupaten_kota b', 'a.id_prov = b.fk_id_prov', 'JOIN');        
        $this->db->join('kecamatan c', 'c.fk_id_kab_kot = b.id_kab_kot', 'JOIN');
        $query = $this->db->get('provinsi a');
        return  $query->result();
    }
    public function getIdKec($id_kec){
        $this->db->from($this->tableKec);
		$this->db->where('id_kec', $id_kec);
		$query = $this->db->get();
		return $query->row();
    }
    public function getMaxKodeKec(){
        $q = $this->db->query("select MAX(id_kec) as kd_max from kecamatan");
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
    public function getKecCode(){
        $this->db->select('id_kec, nama_kecamatan');
        $query = $this->db->get($this->tableKec);
        return $query->result();
    }

    //Kelurahan
    public function getKel(){
        $this->db->select('d.id_kel, a.nama_provinsi, b.nama_kab_kot, c.nama_kecamatan, d.nama_kelurahan');
        $this->db->join('kabupaten_kota b', 'a.id_prov = b.fk_id_prov', 'JOIN');        
        $this->db->join('kecamatan c', 'c.fk_id_kab_kot = b.id_kab_kot', 'JOIN');
        $this->db->join('kelurahan d', 'd.fk_id_kec = c.id_kec', 'JOIN');
        $query = $this->db->get('provinsi a');
        return  $query->result();
    }
    public function getIdKel($id_kel){
        $this->db->from($this->tableKel);
		$this->db->where('id_kel', $id_kel);
		$query = $this->db->get();
		return $query->row();
    }
    public function getMaxKodeKel(){
        $q = $this->db->query("select MAX(id_kel) as kd_max from kelurahan");
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

    //Add data
    public function addKementrian($data){
        $this->db->insert($this->tableKementrian, $data);
		return $this->db->insert_id();
    }
    public function addProv($data){
        $this->db->insert($this->tableProv, $data);
		return $this->db->insert_id();
    }
    public function addKabKot($data){
        $this->db->insert($this->tableKabKot, $data);
		return $this->db->insert_id();
    }
    public function addKec($data){
        $this->db->insert($this->tableKec, $data);
		return $this->db->insert_id();
    }
    public function addKel($data){
        $this->db->insert($this->tableKel, $data);
		return $this->db->insert_id();
    }   

    //Update data
    public function updateKementrian($where, $data){
        $this->db->update($this->tableKementrian, $data, $where);
		return $this->db->affected_rows();
    }
    public function updateProv($where, $data){
        $this->db->update($this->tableProv, $data, $where);
		return $this->db->affected_rows();
    }
    public function updateKabKot($where, $data){
        $this->db->update($this->tableKabKot, $data, $where);
		return $this->db->affected_rows();
    }
    public function updateKec($where, $data){
        $this->db->update($this->tableKec, $data, $where);
		return $this->db->affected_rows();
    }
    public function updateKel($where, $data){
        $this->db->update($this->tableKel, $data, $where);
		return $this->db->affected_rows();
    }

    //Delete data   
    public function deleteKementrian($id_kementrian){
        $this->db->where('id_kementrian', $id_kementrian);
		$this->db->delete($this->tableKementrian);
    }
    public function deleteProv($id_prov){
        $this->db->where('id_prov', $id_prov);
		$this->db->delete($this->tableProv);
    }
    public function deleteKabKot($id_kab_kot){
        $this->db->where('id_kab_kot', $id_kab_kot);
		$this->db->delete($this->tableKabKot);
    }
    public function deleteKec($id_kec){
        $this->db->where('id_kec', $id_kec);
		$this->db->delete($this->tableKec);
    }
    public function deleteKel($id_kel){
        $this->db->where('id_kel', $id_kel);
		$this->db->delete($this->tableKel);
    }

}

/* End of file M_wilayah.php */
