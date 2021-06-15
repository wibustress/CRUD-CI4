<?php
 
namespace App\Database\Migrations;
 
use CodeIgniter\Database\Migration;
 
class Pegawai extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id_user'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'nama'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '255',
			],
			'jenis_kelamin'       => [
				'type'              => 'ENUM',
				'constraint'        => "'pria','wanita'",
			],
			'no_telp' => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'email' => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
			],
			'alamat' => [
				'type'           => 'VARCHAR',
				'constraint'     => '255',
			],
			'created_at' => [
				'type'           => 'DATETIME',
				'null'           => true,
			],
			'updated_at' => [
				'type'           => 'DATETIME',
				'null'           => true,
			]
		]);
		$this->forge->addPrimaryKey('id_user');
		$this->forge->createTable('data');
	}
 
	//--------------------------------------------------------------------
 
	public function down()
	{
		$this->forge->dropTable('data');
	}
}