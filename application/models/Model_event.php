<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_event extends CI_Model {

    function create_event($data='')
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

    function tampil_event($id='')
    {
        if($id=='')
        {
            return $this->db->query("SELECT * FROM buat_acara")->result();
        } else {
            return $this->db->query("SELECT * FROM buat_acara WHERE id_acara='$id'")->result();
        }
    }


    function tampil_event_kat($id_kat='')
    {
        if($id_kat=='')
        {
            return $this->db->query("SELECT * FROM buat_acara")->result();
        } else {
            return $this->db->query("SELECT * FROM buat_acara WHERE id_kategori='$id_kat'")->result();
        }
    }

    function get_event($id_user='')
    {
        if($id_user=='')
        {
            return $this->db->query("SELECT * FROM buat_acara")->result();
        } else {
            return $this->db->query("SELECT * FROM buat_acara WHERE id_user='$id_user'")->result();
        }
    }

    

    function delete($id='')
    {
        $data = $this->db->query("DELETE FROM buat_acara WHERE id_acara = '$id'");
        
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

}
