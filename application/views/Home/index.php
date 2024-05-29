<div class="card border border-primary">
  <div class="card-header bg-primary text-white">List Data Barang</div>
  <div class="card-body">
    <div class="button-container">
      <form action="<?php echo site_url('Home/search_barang'); ?>" method="post">
        <input class="form-control" type="text" value="<?php echo isset($keyword) ? $keyword : '' ?>" name="keyword" placeholder="Cari Nama Barang">
        <button class="btn btn-primary mt-2" type="submit">Cari</button>
        <button class="btn btn-success mt-2" onclick="window.location.href='<?php echo base_url('beranda'); ?>'" type="button">Reset</button>
      </form>
    </div>
    <div class="table-responsive">
      <table class="table table-bordered table-hover mt-3">
        <thead>
          <tr class="table-primary">
            <th class="text-center">ID Barang</th>
            <th class="text-center">Kode Barang</th>
            <th class="text-center">Nama Barang</th>
            <th class="text-center">Kategori Barang</th>
            <th class="text-center">Deskripsi Barang</th>
            <th class="text-center">Harga Beli</th>
            <th class="text-center">Harga Jual</th>
            <th class="text-center">Stok Barang</th>
            <th class="text-center">Supplier Barang</th>
            <th class="text-center">Tanggal Masuk</th>
          </tr>
        </thead>
        <?php foreach ($barang as $br) { ?>
          <tbody>
            <tr>
              <td><?php echo $br['id_barang']; ?></td>
              <td><?php echo $br['kode_barang']; ?></td>
              <td><?php echo $br['nama_barang']; ?></td>
              <td><?php echo $br['kategori_barang']; ?></td>
              <td><?php echo $br['deskripsi_barang']; ?></td>
              <td><?php echo $br['harga_beli']; ?></td>
              <td><?php echo $br['harga_jual']; ?></td>
              <td><?php echo $br['stok_barang']; ?></td>
              <td><?php echo $br['supplier_barang']; ?></td>
              <td><?php echo $br['tanggal_masuk']; ?></td>
            </tr>
          </tbody>
        <?php } ?>
      </table>
    </div>
  </div>
</div>