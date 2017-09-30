<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_Model {

    function create_data($data='')
    {
        $query = $this->db->insert('user_client', $data);
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
            return $this->db->query("SELECT * FROM user_client")->result();
        } else {
            return $this->db->query("SELECT * FROM user_client WHERE id_user='$id'")->result();
        }
    }

    function change_pass($username='',$oldpassword='',$newpassword='')
    {
        $data = $this->db->query("UPDATE user_client SET password = '$newpassword' WHERE email_user = '$username' AND password = '$oldpassword'");
        
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
        $data = $this->db->query("DELETE FROM user_client WHERE id_user = '$id'");
        
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
