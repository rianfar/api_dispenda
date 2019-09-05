<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Api_Model extends CI_Model {

    public function getEvent() {
        return $this->db->get('event');
    }

    public function getCountEvent() {
        $sql = $this->db->get('event');
        $total = $sql->num_rows();
        return $total;
    }

    public function getEventbyID($id) {
        $this->db->select('a.id, a.id_acara, a.nama_acara, a.npwp');
//        $this->db->select('*');
        $this->db->from('event as a');
        $this->db->join('mst_user as b', 'b.user_id=a.id_penyelenggara');
        $this->db->where($id);
//        $this->db->where(array($id,$a,$b));
        return $this->db->get();
    }

    public function cekLogin($param) {
//        $sql = $this->db->query('select * from mst_user where username = "' . $param['username'] . '" and password = MD5("' . $param['password'] . '")');
        $this->db->select('*');
        $this->db->from('mst_user');
        $this->db->where('username', $param['username']);
        $this->db->where('password', md5($param['password']));

        return $this->db->get();
    }

}
