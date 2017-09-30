<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_about extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM about_us")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM about_us WHERE id_about='$id'")->result();
        }
	}

}
