<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_promo extends CI_Model {

	function tampil_data($id='')
	{
		if($id=='')
        {
            return $this->db->query("SELECT * FROM promo")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM promo WHERE idp='$id'")->result();
        }
	}

     function tampil_aktif($id='')
     {
        if($id=='')
        {

        return $this->db->query("SELECT * FROM promo a WHERE NOW() >= a.`promo_start` AND NOW() <= a.`promo_end` ")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM promo a WHERE NOW() >= a.`promo_start` AND NOW() <= a.`promo_end` AND a.`idp` = '$id' ")->result();
        }
     }

}
