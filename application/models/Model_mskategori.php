<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_mskategori extends CI_Model {

    function select_grup($grup='')
    {
        if($grup=='')
        {
            return $this->db->query("SELECT * FROM master_kategori")->result();
        } else 
        {
            return $this->db->query("SELECT * FROM master_kategori WHERE grup_mskategori='$grup'")->result();
        }
    }

}
