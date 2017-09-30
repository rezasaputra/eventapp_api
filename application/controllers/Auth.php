<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller
{
    
    function __construct()
    {
        parent::__construct();
        $this->load->model('MyModel', '', TRUE);
        // header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: OPTIONS, GET, PUT, POST, DELETE');
        header('Access-Control-Allow-Headers: Content-Type, Client-Service, Auth-Key');
    }
    
    function login()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') 
        {
            $this->MyModel->bad_request();
        } 
        else 
        {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params   = json_decode(file_get_contents('php://input'), TRUE);
                $username = $params['username'];
                $password = $params['password'];
                
                $response = $this->MyModel->login($username, $password);
                
                json_output(200, $response);
            }
        }
    }

    function create_user()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') 
        {
            $this->MyModel->bad_request();
        } 
        else 
        {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params   = json_decode(file_get_contents('php://input'), TRUE);
                $uid = $params['uid'];
                $nama_depan = $params['nama_depan'];
                $nama_belakang = $params['nama_belakang'];
                $url_gambar = $params['url_gambar'];
                $username = $params['username'];
                $password = $params['password'];
                $firebase_id = $params['firebase_id'];
                $login_method = $params['login_method'];

                $check_exist = $this->db->query("SELECT * FROM pelanggan WHERE username='$username'")->row();
                if($check_exist){
                    $response = array(
                            'response' => '',
                            'metadata' => array(
                                'status'    => 400,
                                'message'   => 'Username already exist'
                            )
                        );
                } else {
                    $data = array(
                        'uid' => $uid,
                        'nama_depan' => $nama_depan,
                        'nama_belakang' => $nama_belakang,
                        'url_gambar' => $url_gambar,
                        'username' => $username,
                        'password' => $password,
                        'firebase_id' => $firebase_id,
                        'login_method' => $login_method);

                    $response = $this->MyModel->create($data);   
                }

                json_output(200,$response);
            }
        }
    }
	
	function change_password()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'PUT')
        {
			$this->MyModel->bad_request();
		} 
        else 
        {
			$check_auth_client = $this->MyModel->check_auth_client();
			if ($check_auth_client == true) 
            {
				$params   = json_decode(file_get_contents('php://input'), TRUE);
				$username = $params['username'];
				$oldpassword = $params['oldpassword'];
				$newpassword = $params['newpassword'];

				$response = $this->MyModel->change_password($username, $oldpassword, $newpassword);
				
				json_output(200, $response);
			}
		}
	}

    function change_firebase()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'PUT')
        {
            $this->MyModel->bad_request();
        } 
        else 
        {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params   = json_decode(file_get_contents('php://input'), TRUE);
                $username = $params['username'];
                $firebase_id = $params['firebase_id'];

                $response = $this->MyModel->change_firebase_id($username, $firebase_id);
                
                json_output(200, $response);
            }
        }
    }

    function user_detail()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') 
        {
            $this->MyModel->bad_request();
        } 
        else 
        {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params   = json_decode(file_get_contents('php://input'), TRUE);
                $username = $params['username'];

                $data = $this->MyModel->get_detail_user($username);

                if(count($data)>0)
                {
                    $json = $this->MyModel->success($data);

                } else {
                    $json = $this->MyModel->data_not_found();
                }
                
                json_output(200, $json);
            }
        }
    }
    
}
