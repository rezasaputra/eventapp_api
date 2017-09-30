<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_client extends CI_Model {

    function create_data($data='')
    {
        $query = $this->db->insert('user', $data);
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

    function cek_login($id='', $email='')
    {
        $query = $this->db->query("SELECT * FROM user WHERE uid='$id' AND email_user='$email'")->row();
        if($query) 
        {             
            $respon = array(
                'response' => '',
                'metadata' => array(
                    'status'        => 200,
                    'message'       => 'Successfully login'
                )
            );
        } 
        else 
        {
            $respon = array(
                'response'  => '',
                'metadata'  => array(
                    'status'    => 400,
                    'message'   => 'Anda Belum Terdaftar'
                ));
        }
        return $respon;
    }

    function change_prof($id='', $newname='', $newemail='',$newnomor='',$actualpath='',$username='', $password='')
    {
        $data = $this->db->query("UPDATE user SET nm_user = '$newname', gmb_user = '$actualpath', email_user = '$newemail', no_hp = '$newnomor' ,username='$username',password='$password' WHERE uid ='$id'");
        
        if($data)
        {
            return array(
                'response' => '',
                'metadata' => array(
                    'status'    => 200,
                    'message'   => 'Success updated profile'
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

    function tampil_data($id='')
    {
        if($id=='')
        {
            return $this->db->query("SELECT * FROM user")->result();
        } else {
            return $this->db->query("SELECT * FROM user WHERE uid='$id'")->result();
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
