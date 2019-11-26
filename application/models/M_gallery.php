<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class M_gallery extends CI_Model {



    var $table = 'gallery';



    public function getData(){

        $this->db->select('*');

        $this->db->where('kategori', 'Album Pendidikan');

        $query = $this->db->get($this->table);

		return $query->result();

    }

    public function getBanner(){
        $this->db->select('*');

        $this->db->where('kategori', 'Banner');

        $query = $this->db->get($this->table);

		return $query->result();
    }
    
    public function getBannerHome(){
        $this->db->select('*');

        $this->db->where('kategori', 'Banner');

        $query = $this->db->get($this->table);

		return $query->result();
    }



    public function getIdGallery($id_gal){

        $this->db->select('*');

        $this->db->where('id_gal', $id_gal);

        $query = $this->db->get($this->table);

        return $query->result();

    }



    public function addGallery($data){

        $this->db->insert($this->table, $data);

		return $this->db->insert_id();

    }



    public function getMaxGalCode(){

        $q = $this->db->query("select MAX(id_gal) as kd_max from gallery");

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



    public function getFileById($id_gal){

        $this->db->select('*');

        $this->db->where('id_gal', $id_gal);

        $query = $this->db->get($this->table);

		return $query->row();

    }



    public function getDataKenangan(){

        $this->db->select('*');

        $this->db->where('kategori', 'Album Kenangan');

        $query = $this->db->get($this->table);

		return $query->result();

    }



    public function getAlbumPendidikan(){

        $this->db->select('*');

        $this->db->where('kategori', 'Album Pendidikan');

        $query = $this->db->get($this->table);

		return $query->result();

    }

    public function getGalAlbumPendidikan($id_gal){
        $this->db->select('*');
        $this->db->where('kategori', 'Album Pendidikan');
        $this->db->where('id_gal', $id_gal);
        $query = $this->db->get($this->table);
		return $query->row();
    }

    public function getGalAlbumKenangan($id_gal){
        $this->db->select('*');
        $this->db->where('kategori', 'Album Kenangan');
        $this->db->where('id_gal', $id_gal);
        $query = $this->db->get($this->table);
		return $query->row();
    }



    public function updateGallery($where, $data){

        $this->db->update($this->table, $data, $where);

        return $this->db->affected_rows();

    }



    public function deleteGallery($id_gal){

        $this->db->where('id_gal', $id_gal);

		$this->db->delete($this->table);

    }

}



/* End of file M_gallery.php */

