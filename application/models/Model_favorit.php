<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_favorit extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM favorit INNER JOIN master_menu ON favorit.idm=master_menu.idm")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM favorit INNER JOIN master_menu ON favorit.idm=master_menu.idm WHERE favorit.idf='$id'")->result();
        }
	}

    function get_data_menu($menu='')
    {
        return $this->db->query("SELECT * FROM master_menu INNER JOIN gmb_menu ON master_menu.idm=gmb_menu.idm WHERE nm_menu='$menu'")->result();
    }

}
