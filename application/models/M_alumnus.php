<?php 

defined('BASEPATH') OR exit('No direct script access allowed');



class M_alumnus extends CI_Model {



    var $tableAlumni = 'alumni';

    var $tableKem = 'kementrian';

    var $tableProv = 'provinsi';

    var $tableKabKot = 'kabupaten_kota';

    var $tableKec = 'kecamatan';

    var $tableKel = 'kelurahan';

    var $tablePangkat = 'pangkat';



    //Get

    public function getKementrianCode(){

        $this->db->select('id_kementrian, nama_kementrian');

        $query = $this->db->get($this->tableKem);

        return $query->result();

    }

    public function getProvCode(){

        $this->db->select('a.id_prov, b.id_kab_kot, c.id_kec ,d.id_kel, a.nama_provinsi, b.nama_kab_kot, c.nama_kecamatan, d.nama_kelurahan');

        $this->db->join('kabupaten_kota b', 'a.id_prov = b.fk_id_prov', 'left');        

        $this->db->join('kecamatan c', 'c.fk_id_kab_kot = b.id_kab_kot', 'left');

        $this->db->join('kelurahan d', 'd.fk_id_kec = c.id_kec', 'left');        

        $query = $this->db->get('provinsi a');

        return  $query->result();

    }

    public function listProv(){

        $this->db->select('id_prov, nama_provinsi');

        $query = $this->db->get($this->tableProv);

        return $query->result();

    }

    public function listKabKot(){

        $this->db->select('id_kab_kot, nama_kab_kot');

        $query = $this->db->get($this->tableKabKot);

        return $query->result();

    }

    public function listKec(){

        $this->db->select('id_kec, nama_kecamatan');

        $query = $this->db->get($this->tableKec);

        return $query->result();

    }

    public function listKel(){

        $this->db->select('id_kel, nama_kelurahan');

        $query = $this->db->get($this->tableKel);

        return $query->result();

    }



    public function getPangkatCode(){

        $this->db->select('id_pangkat, nama_pangkat, golongan, ruang');

        $query = $this->db->get($this->tablePangkat);

        return $query->result();

    }

    public function getMaxAlumniCode(){

        $q = $this->db->query("select MAX(id_alumni) as kd_max from alumni");

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

    public function addAlumnus($dataAlumni){

        $this->db->insert($this->tableAlumni, $dataAlumni);

		return $this->db->insert_id();

    }

    public function getAlumni(){

        $query = $this->db->get($this->tableAlumni);

        return  $query->result();

    }



    public function getIdAlumni($id_alumni){

        $this->db->select('a.id_alumni, a.nama, a.tempat_lahir, a.tgl_lahir ,a.jenis_kelamin, a.alamat, a.email, a.mobile_phone, a.meninggal ,a.photo , a.nip, a.npp, b.id_pangkat, b.nama_pangkat, b.golongan, b.ruang, a.jabatan, a.instansi, c.id_kementrian, c.nama_kementrian, d.id_prov, d.nama_provinsi, e.id_kab_kot,e.nama_kab_kot, f.id_kec, f.nama_kecamatan, g.id_kel, g.nama_kelurahan');

        $this->db->join('pangkat b', 'a.fk_id_pangkat = b.id_pangkat', 'left');

        $this->db->join('kementrian c', 'c.id_kementrian = a.fk_id_kementrian', 'left');

        $this->db->join('provinsi d', 'd.id_prov = a.fk_id_prov', 'left');

        $this->db->join('kabupaten_kota e', 'e.id_kab_kot = a.fk_id_kab_kot', 'left');

        $this->db->join('kecamatan f', 'f.id_kec = a.fk_id_kec', 'left');

        $this->db->join('kelurahan g', 'g.id_kel = a.fk_id_kel', 'left');

        $this->db->where('id_alumni', $id_alumni);

        $query = $this->db->get('alumni a');

        return $query->result();

    }

    public function getDetailAlumni($id_alumni){

        $this->db->select('a.id_alumni, a.nama, a.tempat_lahir, a.tgl_lahir ,a.jenis_kelamin, a.alamat, a.email, a.mobile_phone, a.meninggal ,a.photo , a.nip, a.npp, b.nama_pangkat, b.golongan, b.ruang, a.jabatan, a.instansi, c.id_kementrian, c.nama_kementrian, d.nama_provinsi, e.nama_kab_kot, f.nama_kecamatan, g.nama_kelurahan');

        $this->db->join('pangkat b', 'a.fk_id_pangkat = b.id_pangkat', 'left');

        $this->db->join('kementrian c', 'c.id_kementrian = a.fk_id_kementrian', 'left');

        $this->db->join('provinsi d', 'd.id_prov = a.fk_id_prov', 'left');

        $this->db->join('kabupaten_kota e', 'e.id_kab_kot = a.fk_id_kab_kot', 'left');

        $this->db->join('kecamatan f', 'f.id_kec = a.fk_id_kec', 'left');

        $this->db->join('kelurahan g', 'g.id_kel = a.fk_id_kel', 'left');

        $this->db->where('id_alumni', $id_alumni);

        $query = $this->db->get('alumni a');

        return  $query->row();

    }

    public function getAnggota(){

        $this->db->select('a.id_alumni, a.nama, a.tgl_lahir, a.alamat, a.mobile_phone, a.email, a.photo , a.nip, a.npp, a.meninggal, a.jenis_kelamin ,b.nama_pangkat, b.golongan, b.ruang, a.jabatan, a.instansi, c.nama_kementrian, d.nama_provinsi, e.nama_kab_kot, f.nama_kecamatan, g.nama_kelurahan');

        $this->db->join('pangkat b', 'a.fk_id_pangkat = b.id_pangkat', 'left');

        $this->db->join('kementrian c', 'c.id_kementrian = a.fk_id_kementrian', 'left');

        $this->db->join('provinsi d', 'd.id_prov = a.fk_id_prov', 'left');

        $this->db->join('kabupaten_kota e', 'e.id_kab_kot = a.fk_id_kab_kot', 'left');

        $this->db->join('kecamatan f', 'f.id_kec = a.fk_id_kec', 'left');

        $this->db->join('kelurahan g', 'g.id_kel = a.fk_id_kel', 'left');

        $query = $this->db->get('alumni a');

        return  $query->result();

    }



    public function getRandomAnggota(){

        $this->db->select('a.id_alumni, a.nama, a.tgl_lahir, a.alamat, a.mobile_phone, a.email, a.photo , a.nip, a.npp, a.meninggal, a.jenis_kelamin ,b.nama_pangkat, b.golongan, b.ruang, a.jabatan, a.instansi, c.nama_kementrian, d.nama_provinsi, e.nama_kab_kot, f.nama_kecamatan, g.nama_kelurahan');

        $this->db->join('pangkat b', 'a.fk_id_pangkat = b.id_pangkat', 'left');

        $this->db->join('kementrian c', 'c.id_kementrian = a.fk_id_kementrian', 'left');

        $this->db->join('provinsi d', 'd.id_prov = a.fk_id_prov', 'left');

        $this->db->join('kabupaten_kota e', 'e.id_kab_kot = a.fk_id_kab_kot', 'left');

        $this->db->join('kecamatan f', 'f.id_kec = a.fk_id_kec', 'left');

        $this->db->join('kelurahan g', 'g.id_kel = a.fk_id_kel', 'left');

        $this->db->order_by('rand()');

        $this->db->limit(4);

        $query = $this->db->get('alumni a');

        return  $query->result();

    }



    public function getIdUser($email){

        $query = $this->db->get_where($this->tableAlumni, array('email' => $email));

        return $query->row_array();

    }



    public function getFileById($id_alumni){

        $this->db->select('*');

        $this->db->where('id_alumni', $id_alumni);

        $query = $this->db->get($this->tableAlumni);

		return $query->row();

    }

    public function getPhotoAlumni($photo){

        $query = $this->db->get_where($this->tableAlumni, array('photo' => $photo));

        return $query->row_array();

    }



    public function updateAlumni($where, $data){

        $this->db->update($this->tableAlumni, $data, $where);

        return $this->db->affected_rows();

    }



    public function deleteAlumni($id_alumni){

        $this->db->where('id_alumni', $id_alumni);

		$this->db->delete($this->tableAlumni);

    }



}



/* End of file M_alumnus.php */

