<?php
class Barang_model extends CI_Controller
{
  public function getAllbarang()
  {
    $query = $this->db->get('tbarang');
    return $query->result_array();
  }
  
  public function search_data_barang($keyword){
    $this->db->select('*');
    $this->db->from('tbarang');
    $this->db->like('nama_barang',$keyword);
    $this->db->or_like('id_barang',$keyword);
    $this->db->or_like('kode_barang',$keyword);
    $this->db->or_like('kategori_barang',$keyword);
    $this->db->or_like('deskripsi_barang',$keyword);
    $this->db->or_like('harga_beli',$keyword);
    $this->db->or_like('harga_jual',$keyword);
    $this->db->or_like('stok_barang',$keyword);
    $this->db->or_like('suplier_barang',$keyword);
    $this->db->or_like('tanggal_masuk',$keyword);
    return $this->db->get()->result();
  }
}
