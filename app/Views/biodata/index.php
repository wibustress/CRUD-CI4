<?= $this->extend('template/template'); ?>
<?= $this->section('content'); ?>
<title>Pangkalan Data</title>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h3>Data Mahasiswa</h3>
        </div>
        <div class="card-body">
            <?php if (!empty(session()->getFlashdata('message'))) : ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <?php echo session()->getFlashdata('message'); ?>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <?php endif; ?>
            <a href="<?= base_url('/biodata/create'); ?>" class="btn btn-primary">Tambah</a>
            <hr />
            <table class="table table-bordered">
                <tr>
                    <th>No</th>
                    <th>Foto</th>
                    <th>Nama</th>
                    <th>Jenis Kelamin</th>
                    <th>Kota Kelahiran</th>
                    <th>Tanggal Lahir</th>
                    <th>No Telp</th>
                    <th>Email</th>
                    <th>Alamat</th>
                    <th>Action</th>
                </tr>
                <?php
                // $no = 1;
                foreach ($data as $row) {
                ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td><img width="150px" class="img-thumbnail" src="<?= base_url() . "/uploads/" . $row->foto; ?>"></td>
                        <td><?= $row->nama; ?></td>
                        <td><?= $row->jenis_kelamin; ?></td>
                        <td><?= $row->tempat_lahir; ?></td>
                        <td><?= $row->tanggal_lahir; ?></td>
                        <td><?= $row->no_telp; ?></td>
                        <td><?= $row->email; ?></td>
                        <td><?= $row->alamat; ?></td>
                        <td>
                            <a title="Edit" href="<?= base_url("biodata/edit/$row->id_user"); ?>" class="btn btn-info">Edit</a>
                            <a title="Delete" href="<?= base_url("biodata/delete/$row->id_user") ?>" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ?')">Delete</a>
                        </td>
                    </tr>
                <?php
                }
                ?>
            </table>
            <?= $pager->links('data', 'pagers') ?>
        </div>
    </div>
</div>
<?= $this->endSection('content'); ?>