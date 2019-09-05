<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Api extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Api_Model', 'api_model');
    }

    //Menampilkan data kontak
    function event_get() {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS");
        header("Access-Control-Allow-Headers: Content-Type, x-xsrf-token");

        $response = array(
            'status' => true,
            'data' => $this->api_model->getEvent()->result()
        );

        $this->response($response, 200);
    }

    function count_get() {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS");
        header("Access-Control-Allow-Headers: Content-Type, x-xsrf-token");

        $response = array(
            'status' => true,
            'data' => $this->api_model->getCountEvent()
        );
        $this->response($response, 200);
    }

    function detailevent_get() {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS");
        header("Access-Control-Allow-Headers: Content-Type, x-xsrf-token");

        $id = $this->get('id_penyelenggara');
//        $where = array('a.id' => $id,'a.username'=>$a);
        $where = array('a.id_penyelenggara' => $id);
        $response = array(
            'status' => true,
            'data' => $this->api_model->getEventbyID($where)->result()
        );
        $this->response($response, 200);
    }

    function login_post() {
        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS");
        header("Access-Control-Allow-Headers: Content-Type, x-xsrf-token");

        $param = array(
            'username' => $this->post('username'),
            'password' => $this->post('password')
        );
        $select = $this->api_model->cekLogin($param);
        if ($select->num_rows() > 0) {
            $respon = array(
                'status' => true,
                'data' => $select->row_array()
            );
            $this->response($respon, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

}

?>