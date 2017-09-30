<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_contact extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM contact_us")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM contact_us WHERE idc='$id'")->result();
        }
	}

}
