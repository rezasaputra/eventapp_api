<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_lokasi extends CI_Model {

	function create_loc($data='', $username = '')
    {
        
        // flag 1 = insert
        // flag 2 = update
        
        if($username == ""){
            $query = $this->db->insert('lokasi', $data);
        }else{
            $query = $this->db->where('username',$username)->update('lokasi', $data);
        }    
        
        if($query){
            return true;
        }
    }

}
