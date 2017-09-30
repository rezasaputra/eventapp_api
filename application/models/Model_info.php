<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_info extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM info")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM info WHERE id_info='$id'")->result();
        }
	}

}
