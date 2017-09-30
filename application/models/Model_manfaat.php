<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_manfaat extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM manfaat")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM manfaat WHERE id_m='$id'")->result();
        }
	}

}
