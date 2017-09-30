<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kategori extends CI_Model {

     function tampil_data($id='')
    {
        if($id=='')
        {
            return $this->db->query("SELECT * FROM Master_kat")->result();
        } else {
            return $this->db->query("SELECT * FROM Master_kat WHERE id_kat='$id'")->result();
        }
    }

}
