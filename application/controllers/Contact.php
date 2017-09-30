<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_contact', '', TRUE);
        // header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: OPTIONS, GET, PUT, POST, DELETE');
        header('Access-Control-Allow-Headers: Content-Type, Client-Service, Auth-Key');
    }

    function all_contact($id='')
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
        		$data = $this->Model_contact->tampil_data($id);

        		if(count($data)>0)
                {
                    $json = $this->MyModel->success($data);
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