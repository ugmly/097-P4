<?php

class Home extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Barang_model');
  }


  public function index()
  {
    $data['title'] = 'Data Barang';
    $data['active_menu'] = 'data_barang';
    $data['barang'] = $this->Barang_model->GetAllBarang();
    $data['content'] = $this->load->view('Home/index', $data, true);
    $this->load->view('template/template', $data);
  }

  public function search_barang()
  {
    $keyword = $this->input->post('keyword');
    $data['title'] = 'Data Barang';
    $data['active_menu'] = 'data_barang';
    $data['barang'] = $this->Barang_model->search_data_barang($keyword);
    $data['keyword'] = $keyword;
    $data['content'] = $this->load->view('Home/index', $data, true);
    $this->load->view('template/template', $data);
  }

  public function tentang()
  {
  $data['title'] = 'About Page';
  $data['active_menu'] = 'tentang';
  $data['content'] = $this->load->view('beranda/tentang', '', true);
  $this->load->view('template/template', $data);
  }

}
