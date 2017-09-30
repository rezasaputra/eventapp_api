<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_menu extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM master_menu")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM master_menu WHERE idm='$id'")->result();
        }
	}

    function get_data_gmb($id='')
    {
        if($id=='')
        {
            return $this->db->query("SELECT * FROM master_menu INNER JOIN gmb_menu ON master_menu.idm=gmb_menu.idm")->result();
        } else {
            return $this->db->query("SELECT * FROM master_menu INNER JOIN gmb_menu ON master_menu.idm=gmb_menu.idm WHERE gmb_menu.idm='$id'")->result();
        }
    }

    function tampil_by_grup_menu($grup_id='')
    {
        if($grup_id=='')
        {
            return $this->db->query("SELECT * FROM master_menu")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM master_menu WHERE id_kat='$grup_id'")->result();
        }
    }

    function keyword($name='')
    {
        if($name=='')
        {
            return $this->db->query("SELECT * FROM master_menu")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM master_menu WHERE nm_menu LIKE '%$name%'")->result();
        }
    }

}
