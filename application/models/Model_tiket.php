<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_tiket extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM pendaftar INNER JOIN buat_acara ON pendaftar.id_acara=buat_acara.id_acara")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM pendaftar INNER JOIN buat_acara ON pendaftar.id_acara=buat_acara.id_acara WHERE pendaftar.id_user='$id'")->result();
        }
	}

    function listtiket($id='')
    {
        $query = $this->db->query("SELECT * FROM pendaftar INNER JOIN buat_acara ON pendaftar.id_acara=buat_acara.id_acara WHERE pendaftar.id_user='$id'")->result();
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

    function pesan($data='')
    {
         $query = $this->db->insert('pendaftar', $data);
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

    function cek_data($id_usr='',$id_acara='')
    {
       $check=$this->db->query("SELECT * FROM pendaftar WHERE id_user='$id_usr' AND id_acara='$id_acara'")->row();
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
                    'id_acara' =>$id_acara,
                    'status_bayar'=>0);

            $insert = $this->db->insert('pendaftar', $data);
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

}
