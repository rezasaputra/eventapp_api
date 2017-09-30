<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        // $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_client', '', TRUE);
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

    function get_login_id()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'POST') 
        {
            $this->MyModel->bad_request();
        } else 
        {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
                $params   = json_decode(file_get_contents('php://input'), TRUE);
                $uid = $params['id_fb'];
                $email = $params['email'];
                
                $response = $this->Model_client->cek_login($uid, $email);
                
                json_output(200, $response);
            }
        }
    }

    function all_client($id='')
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
        		$data = $this->Model_client->tampil_data($id);

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

    function create_client()
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
                
                $id_user=$params['uid'];
                $username= $params['username'];
                $password= $params['password'];
                $email = $params['email_user'];
                $nm_user= $params['nm_user'];
                $gambar= $params['gmb_user'];
                $no_hp= $params['no_hp'];
                // $tanggal =$params['tanggal'];
                
                $data = array(
                    'uid' =>$id_user,
                    'username' =>$username,
                    'password' =>$password,
                    'email_user' => $email,
                    'nm_user' => $nm_user,
                    'gmb_user' => $gambar,
                    'no_hp' => $no_hp);

                $response=$this->Model_client->create_data($data);

                json_output(200, $response);
            }
        }
    }



    function change_password()
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if ($method != 'PUT') 
        {
            $this->MyModel->bad_request();
        } else {
            $check_auth_client = $this->MyModel->check_auth_client();
            if ($check_auth_client == true) 
            {
               $params  = json_decode(file_get_contents('php://input'), TRUE);

                $username= $params['username'];
                $oldpassword= $params['oldpassword'];
                $newpassword= $params['newpassword'];

                $data = $this->Model_client->change_pass($username, $oldpassword, $newpassword);

                json_output(200, $data);
            }
        }
    }

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