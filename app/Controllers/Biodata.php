<?php

namespace App\Controllers;

use App\Models\DataModel;

class Biodata extends BaseController
{
    protected $data;

    function __construct()
    {
        $this->data = new DataModel();
        $session = session();
    }

    public function index()
    {
        //Pager
        $data['data'] = $this->data->paginate(5, 'data');
        $data['pager'] = $this->data->pager;
        $data['no'] = no($this->request->getVar('page_data'), 5);
        return view('biodata/index', $data);
    }

    public function create()
    {
        return view('biodata/create');
    }

    public function store()
    {
        if (!$this->validate([
            'foto' => [
                'rules' => 'uploaded[foto]|mime_in[foto,image/jpg,image/jpeg,image/png]|max_size[foto,1024]',
                'errors' => [
                    'uploaded' => 'Foto harus diisi!',
                    'mime_in' => 'File yang diupload bukan foto',
                    'max_size' => 'Ukuran foto terlalu besar'
                ]
            ],
            'nama' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Nama harus diisi!'
                ]
            ],
            'jenis_kelamin' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Jenis harus diisi!'
                ]
            ],
            'tempat_lahir' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Tempat harus diisi!'
                ]
            ],
            'tanggal_lahir' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Tanggal lahir harus diisi!'
                ]
            ],
            'no_telp' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'No. Telp harus diisi!'
                ]
            ],
            'email' => [
                'rules' => 'required|valid_email',
                'errors' => [
                    'required' => 'Email harus diisi!',
                    'valid_email' => 'Email Harus Valid'
                ]
            ],
            'alamat' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Alamat harus diisi!'
                ]
            ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back()->withInput();
        }

        $berkas = new DataModel();
        $file = $this->request->getFile('foto');
        if ($file->isValid() && !$file->hasMoved()) {
            $imageName = $file->getRandomName();
            $file->move('uploads/', $imageName);
        }

        // $berkas->insert([
        $data = [
            'foto' => $imageName,
            'nama' => $this->request->getVar('nama'),
            'jenis_kelamin' => $this->request->getVar('jenis_kelamin'),
            'tempat_lahir' => $this->request->getVar('tempat_lahir'),
            'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
            'no_telp' => $this->request->getVar('no_telp'),
            'email' => $this->request->getVar('email'),
            'alamat' => $this->request->getVar('alamat'),
        ];
        $berkas->insert($data);
        session()->setFlashdata('message', 'Tambah Biodata Berhasil');
        return redirect()->to(base_url('/biodata'));
    }

    function edit($id)
    {
        $dataPegawai = $this->data->find($id);
        if (empty($dataPegawai)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Biodata Tidak ditemukan !');
        }
        $data['data'] = $dataPegawai;
        return view('biodata/edit', $data);
    }

    public function update($id)
    {
        if (!$this->validate([
            'nama' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Harus diisi'
                ]
            ],
            'jenis_kelamin' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Harus diisi'
                ]
            ],
            'tempat_lahir' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Harus diisi'
                ]
            ],
            'no_telp' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Harus diisi'
                ]
            ],
            'email' => [
                'rules' => 'required|valid_email',
                'errors' => [
                    'required' => '{field} Harus diisi',
                    'valid_email' => 'Email Harus Valid'
                ]
            ],
            'alamat' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Harus diisi'
                ]
            ],

        ])) {
            session()->setFlashdata('error', $this->validator->listErrors());
            return redirect()->back();
        }
        // NTAH ERROR
        $products = new DataModel();
        $prod_item = $products->find($id);
        $old_img_name = $prod_item->foto;
        //echo $prod_item->foto;

        $berkass = new DataModel();
        $file = $this->request->getFile('foto');
        if ($file->isValid() && !$file->hasMoved()) {
            if (file_exists("uploads/" . $old_img_name)) {
                unlink("uploads/" . $old_img_name);
            }
            $imageName = $file->getRandomName();
            $file->move('uploads/', $imageName);
        } else {
            $imageName = $prod_item->foto;
        }

        $data = [
            'foto' => $imageName,
            'nama' => $this->request->getVar('nama'),
            'jenis_kelamin' => $this->request->getVar('jenis_kelamin'),
            'tempat_lahir' => $this->request->getVar('tempat_lahir'),
            'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
            'no_telp' => $this->request->getVar('no_telp'),
            'email' => $this->request->getVar('email'),
            'alamat' => $this->request->getVar('alamat'),
        ];
        $berkass->update($id, $data);
        session()->setFlashdata('message', 'Update Biodata Berhasil');
        return redirect()->to(base_url('/biodata'));


        // $file = $this->request->getFile('foto');
        // if ($file->isValid() && !$file->hasMoved()) {

        //     if (file_exists("uploads/" . $old_img_name)) {
        //         unlink("uploads/" . $old_img_name);
        //     }
        //     $imageName = $file->getRandomName();
        //     $file->move('uploads/', $imageName);
        // } else {
        //     $imageName = $prod_item->foto;
        // }

        // $data = [
        //     'foto' => $imageName,
        //     'nama' => $this->request->getVar('nama'),
        //     'jenis_kelamin' => $this->request->getVar('jenis_kelamin'),
        //     'tempat_lahir' => $this->request->getVar('tempat_lahir'),
        //     'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
        //     'no_telp' => $this->request->getVar('no_telp'),
        //     'email' => $this->request->getVar('email'),
        //     'alamat' => $this->request->getVar('alamat'),
        // ];
        // $products->update($id, $data);
        // session()->setFlashdata('message', 'Update Biodata Berhasil');
        // return redirect()->to(base_url('/biodata'));

        // $this->data->update($id, [
        //     'nama' => $this->request->getVar('nama'),
        //     'jenis_kelamin' => $this->request->getVar('jenis_kelamin'),
        //     'tempat_lahir' => $this->request->getVar('tempat_lahir'),
        //     'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
        //     'no_telp' => $this->request->getVar('no_telp'),
        //     'email' => $this->request->getVar('email'),
        //     'alamat' => $this->request->getVar('alamat')
        // ]);
        // session()->setFlashdata('message', 'Update Biodata Berhasil');
        // return redirect()->to('/biodata');
    }

    function delete($id)
    {
        $dataPegawai = $this->data->find($id);
        if (empty($dataPegawai)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Biodata Tidak ditemukan !');
        }
        $products = new DataModel();
        $prod_item = $products->find($id);
        $old_img_name = $prod_item->foto;
        unlink("uploads/" . $old_img_name);
        $this->data->delete($id);

        session()->setFlashdata('message', 'Delete Biodata Berhasil');
        return redirect()->to('/biodata');
    }
}
