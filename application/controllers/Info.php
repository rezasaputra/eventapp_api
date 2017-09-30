<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Info extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_info', '', TRUE);
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

    function all_info($id='')
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
        		$data = $this->Model_info->tampil_data($id);

        		if(count($data)>0)
                {
                    $data_info = array();
                    foreach ($data as $row => $val) {
                        $data_info[$row] = array(
                            'id_info'=> $val->id_info,
                            'gambar_info'=> $this->get_ip().'assets/uploads/galeri/'.$val->gambar_info,
                            'ket_info'=> $val->ket_info,
                            'tanggal'=> $val->tanggal );
                    }
                    $json = $this->MyModel->success($data_info);
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