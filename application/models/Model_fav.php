<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_fav extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM favorite INNER JOIN buat_acara ON favorite.id_acara=buat_acara.id_acara")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM favorite INNER JOIN buat_acara ON favorite.id_acara=buat_acara.id_acara WHERE favorite.id_user='$id'")->result();
        }
	}

    function pesan($data='')
    {
         $query = $this->db->insert('favorite', $data);
        if ($query) {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Data has been insert'
                )
            );
        } else {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Data insert error'
                )
            );
        }
    }

    function listfav($id='')
    {
         $query = $this->db->query("SELECT * FROM favorite INNER JOIN buat_acara ON favorite.id_acara=buat_acara.id_acara WHERE favorite.id_user='$id'")->result();
        if ($query) {
            return array(
                'response' => $query,
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Data tampil'
                )
            );
        } else {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Data kosong'
                )
            );
        }
    }

    function cek_data($id_usr='',$id_acara='')
    {
       $check=$this->db->query("SELECT * FROM favorite WHERE id_user='$id_usr' AND id_acara='$id_acara'")->row();
       if ($check) {

            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Data Sudah ada'
                )
            );
        } else {
            $data = array(
                    'id_user' =>$id_usr,
                    'id_acara' =>$id_acara);

            $insert = $this->db->insert('favorite', $data);
            if($insert)
            {
                return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Insert sukses '
                )
            );
            }
        }
    }

    function delete($id_user='', $id_acara='')
    {
       $query=$this->db->query("DELETE FROM favorite WHERE id_acara='$id_acara' AND id_user='$id_user'");
       if ($query) {

            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Delete Sukses !'
                )
            );
        } else {
            
                return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Eror Delete '
                )
            );
        }
    }

}
