<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lokasi extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_lokasi', '', TRUE);
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

    function post_lokasi()
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
                $usercheck = $params['username'];
                $check_exist = $this->db->query("SELECT * FROM lokasi WHERE username='$usercheck'")->row();

                $username = $params['username'];
                $latitude = $params['latitude'];
                $longitude = $params['longitude'];
                $keterangan = $params['keterangan'];

                if($check_exist)
                {
                    $data = array(
                        'username'=>$username,
                        'latitude'=>$latitude,
                        'longitude'=>$longitude,
                        'keterangan'=>$keterangan);

                    $response = $this->Model_lokasi->create_loc($data, $username); 

                } else {

                    $data = array(
                        'username'=>$username,
                        'latitude'=>$latitude,
                        'longitude'=>$longitude,
                        'keterangan'=>$keterangan);

                    $response = $this->Model_lokasi->create_loc($data); 
                }
				
				if($response == true){
					
					$response = $this->MyModel->success("");
				}else{
					
					$response = array(

                        'response'  => '',

                        'metadata'  => array(

                            'status'    => 400,

                            'message'   => 'Failed to update data'

                            )

                        );
				}

                json_output(200, $response);
            }
        }
    }
       
}