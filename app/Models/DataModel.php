<?php

namespace App\Models;

use CodeIgniter\Model;

class DataModel extends Model
{
    protected $table = "data";
    protected $primaryKey = "id_user";
    protected $returnType = "object";
    protected $useTimestamps = true;
    protected $allowedFields = ['id_user', 'nama', 'jenis_kelamin', 'tempat_lahir', 'tanggal_lahir', 'no_telp', 'email', 'foto', 'alamat'];
}
