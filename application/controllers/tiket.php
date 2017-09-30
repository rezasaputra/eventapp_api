<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tiket extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        // $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_tiket', '', TRUE);
        // header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: OPTIONS, GET, PUT, POST, DELETE');
        header('Access-Control-Allow-Headers: Content-Type, Client-Service, Auth-Key');
    }

    // function get_ip()
    // {
    //     $pc_ip = 'http://resto.gmedia.bz/';
    //     return $pc_ip;
    // }
    //show

    function get_base() 
    {
        $base_url ="http://localhost/event_api/assets/";
        return $base_url;
    }

    function all_tiket($id='')
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
        		$data = $this->Model_tiket->tampil_data($id);


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

   
    function listtiket()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') 
        {
            $this->MyModel->bad_request();
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params  = json_decode(file_get_contents('php://input'), TRUE);
                
                $id_user=$params['id_user'];

                $response=$this->Model_tiket->listtiket($id_user);

                json_output(200, $response);
            }
        }   
    }

    //Create
    function create_tiket()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') 
        {
            $this->MyModel->bad_request();
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params  = json_decode(file_get_contents('php://input'), TRUE);
                
                $id_user=$params['id_user'];
                $id_acara= $params['id_acara'];

                $response=$this->Model_tiket->cek_data($id_user,$id_acara);

                json_output(200, $response);
            }
        }
    }


 

    //Delete
    function delete_user($id='')
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'DELETE') 
        {
            $this->MyModel->bad_request();
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $data = $this->Model_client->delete($id);

                json_output(200, $data);
            }
        }
    }
    
       
}