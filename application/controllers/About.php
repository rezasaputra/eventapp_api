<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_about', '', TRUE);
        // header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: OPTIONS, GET, PUT, POST, DELETE');
        header('Access-Control-Allow-Headers: Content-Type, Client-Service, Auth-Key');
    }

    function get_ip()
    {
        $pc_ip = 'http://resto.gmedia.bz/';
        return $pc_ip;
    }

    function all_about($id='')
    {
    	$method = $_SERVER['REQUEST_METHOD'];
    	if ($method != 'GET') 
    	{
    		$this->MyModel->bad_request();
    	} else 
    	{
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
        		$data = $this->Model_about->tampil_data($id);

        		if(count($data)>0)
                {
                    $data_book = array();
                    foreach ($data as $row => $val) {
                        $data_book[$row] = array(
                            'id_about'=> $val->id_about,
                            'judul_about'=> $val->judul_about,
                            'gambar_about'=> $this->get_ip().'/assets/uploads/galeri/'.$val->gambar_about,
                            'ket_about'=> $val->ket_about,
                            'tanggal'=> $val->tanggal );
                    }
                    $json = $this->MyModel->success($data_book);
                }
                else
                {
                    $json = $this->MyModel->data_not_found();
                }

                json_output(200, $json);
            }
    	}
    }
       
}