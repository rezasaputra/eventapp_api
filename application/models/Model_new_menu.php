<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_new_menu extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM new_menu INNER JOIN master_menu ON new_menu.idm=master_menu.idm")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM new_menu INNER JOIN master_menu ON new_menu.idm=master_menu.idm WHERE new_menu.idn='$id'")->result();
        }
	}

    function get_data_menu($menu='')
    {
        return $this->db->query("SELECT * FROM master_menu INNER JOIN gmb_menu ON master_menu.idm=gmb_menu.idm WHERE nm_menu='$menu'")->result();
    }

}
