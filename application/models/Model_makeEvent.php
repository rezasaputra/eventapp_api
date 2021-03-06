<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_makeEvent extends CI_Model {

    function create_data($data='')
    {
        $query = $this->db->insert('buat_acara', $data);
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

    function tampil_data($id='')
    {
        if($id=='')
        {
            return $this->db->query("SELECT * FROM buat_acara")->result();
        } else {
            return $this->db->query("SELECT * FROM buat_acara WHERE id_user='$id'")->result();
        }
    }

    



    function change_pass($username='',$oldpassword='',$newpassword='')
    {
        $data = $this->db->query("UPDATE buat_acara SET password = '$newpassword' WHERE email_user = '$username' AND password = '$oldpassword'");
        
        if($data)
        {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Success updated password'
                )
            );
        }
        else
        {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Error update password'
                )
            );
        }
    } 

    function delete($id='')
    {
        $data = $this->db->query("DELETE FROM buat_acara WHERE id_user = '$id'");
        
        if($data)
        {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Success delete user'
                )
            );
        }
        else
        {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Error delete user'
                )
            );
        }
        
    }

    function search_data($cari='')
    {
        if($cari=='') {
            $respon = array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Keyword Cannot be null'
                )
            );
        } else {

            $query = $this->db->query("SELECT * FROM buat_acara WHERE judul_acara LIKE '%$cari%'")->result();
            if(COUNT($query) == 0){
                $respon = array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Data Not Found'
                )
            );
            } else {
                $respon = array(
                'response' => $query,
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Succes Search Data'
                )
            );
            }
        }
        return $respon;
    }

    function search_data_kat($cari='',$kat='')
    {
        if($cari=='') {
            $respon = array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Keyword Cannot be null'
                )
            );
        } else {

            $query = $this->db->query("SELECT * FROM buat_acara WHERE judul_acara LIKE '%$cari%' AND id_kategori='$kat'")->result();
            if(COUNT($query) == 0){
                $respon = array(
                'response' => '',
                'metadata' => array(
                    'status'    => 400,
                    'message'   => 'Data Not Found'
                )
            );
            } else {
                $respon = array(
                'response' => $query,
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Succes Search Data'
                )
            );
            }
        }
        return $respon;
    }

}