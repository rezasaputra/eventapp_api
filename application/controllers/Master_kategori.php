<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_kategori extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('MyModel', '', TRUE);
        $this->load->model('Model_mskategori', '', TRUE);
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

    function select_by_grup_kategori()
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

                if ($params['grup_mskategori'] == '') {
                    $json = array(
                        'response' => '',
                            'metadata' => array(
                                'status'    => 400,
                                'message'   => 'Group can\'t empty'
                            )
                        );
                } else {

                    $data = $this->Model_mskategori->select_grup($params['grup_mskategori']);

                    if(count($data)>0)
                    {
                        $data_grup = array();
                        foreach ($data as $rows => $value) {
                            $data_grup[$rows]= array(
                                "id_kat"=>$value->id_kat,
                                "nm_mskategori"=>$value->nm_mskategori,
                                "grup_mskategori"=>$value->grup_mskategori,
                                "gmb_mskategori"=>$this->get_ip()."assets/uploads/galeri/".$value->gmb_mskategori,
                                "tanggal"=>$value->tanggal,
                                );
                        }
                        $json = $this->MyModel->success($data_grup);
                    } else 
                    {
                        $json = $this->MyModel->data_not_found();
                    }

                    json_output(200, $json);
                }

            }
        }
    }
       
}