<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\QrCode;
use App\Models\Structure;
use App\Models\StructureUser;
use App\Models\Template;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class QrCodeController extends Controller
{


    private $user;
    private $title;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::user(); // returns user
            return $next($request);
        });

        $this->title = 'Qr Code';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $structure_users = StructureUser::all();
        $current_structure = $this->structure_select();
        $items = [];

        if ($this->user->hasRole('superadministrator')) {
            $items = QrCode::all();
        } else {
            $items = QrCode::where('structure_id', $current_structure)->get();

        }

        return view('auth.qr_code.index')->with(['items' => $items, 'title' => $this->title]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'QR Code';

        if ($this->user->hasRole('superadministrator')) {
            $templates = Template::all()->sortBy('name');
            $structures = Structure::all()->sortBy('name');
            return view('auth.qr_code.create', compact('title', 'structures','templates'));
        } else {
            /*  $str = Structure::all()->sortBy('name');
              $structures = [];
              $current_structure = $this->structure_select();

              foreach ($str as $st) {
                  if ($st->id_code == $current_structure) {
                      array_push($structures, $st);
                  }
              }*/

            return abort(403);

        }


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request, [
            'id' => 'required',
            'structure_id' => 'required',
            'menus' => 'required',
            'visible' => 'required',
        ],
            ['id.required' => 'Il campo ID è richiesto',
                'structure_id.required' => 'Il campo Struttura è richiesto',
                'visible.required' => 'Il campo Visible è richiesto',
                'menus.required' => 'I Menu sono richiesti',
            ]);


        if ($this->user->hasRole('superadministrator')) {
            $this->validate($request, [
                'activation_start' => 'required',
                'activation_end' => 'required',

            ],
                [
                    'activation_start.required' => 'I Campi Attivazione sono richiesti',
                    'activation_end.required' => 'I Campi Attivazione sono richiesti',
                ]);
        }


        $menus = $request->input('menus');

        if ($menus != null) {
            $menus = implode(',', $menus);
        }

        $qrcode = $request->all();
        $qrcode['menus'] = $menus;
        $res = QrCode::create($qrcode);

        $message = $res ? 'Il Qr Code ' . $qrcode['id'] . ' è stato inserito' : 'Il Qr Code ' . $qrcode['id'] . ' non è stato inserito';
        session()->flash('message', $message);
        return redirect()->route('qr_code.index');

    }

    /**
     * Display the specified resource.
     *
     * @param \App\QrCode $qrCode
     * @return \Illuminate\Http\Response
     */
    public function show(QrCode $qrCode)
    {

        //$structure = Structure::where('id_code', $qrCode['structure_id'])->first();
        $qr_code_url = 'https://menudigitale.easycomande.it/smartmenu/index.html#/structure/' . $qrCode->id;

        return view('auth.qr_code.show', ['item' => $qrCode, 'title' => $this->title, 'qr_code_url' => $qr_code_url]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\QrCode $qrCode
     * @return \Illuminate\Http\Response
     */
    public function edit(QrCode $qrCode)
    {
        $title = 'QR Code';
        $item = $qrCode;
        $checkedVisible = $qrCode->visible;
        $passwordEnable = $qrCode->password_enable;
        $passwordDaily = $qrCode->daily;
        $active = $qrCode->active;
        $menus = Menu::all();
        $templates = Template::all()->sortBy('name');
        $array = $this->multiselect($menus, $item);


        if ($this->user->hasRole('superadministrator')) {

            $structures = Structure::all()->sortBy('name');
        } else {
            $str = Structure::all()->sortBy('name');
            $structures = [];
            $current_structure = $this->structure_select();

            foreach ($str as $st) {
                if ($st->id_code == $current_structure) {
                    array_push($structures, $st);
                }
            }
        }

        return view('auth.qr_code.edit', compact('item', 'array', 'checkedVisible', 'passwordEnable', 'passwordDaily', 'active', 'structures', 'title','templates'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\QrCode $qrCode
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, QrCode $qrCode)
    {

        if ($this->user->hasRole('superadministrator')) {
            $this->validate($request, [
                'id' => 'required',
                'structure_id' => 'required',
                'menus' => 'required',
                'visible' => 'required',
                'activation_start' => 'required',
                'activation_end' => 'required',

            ],
                [
                    'id.required' => 'Il campo ID è richiesto',
                    'structure_id.required' => 'Il campo Struttura è richiesto',
                    'visible.required' => 'Il campo Visible è richiesto',
                    'menus.required' => 'I Menu sono richiesti',
                    'activation_start.required' => 'I Campi Attivazione sono richiesti',
                    'activation_end.required' => 'I Campi Attivazione sono richiesti',
                ]);
        }

        else {
            $this->validate($request, [
                'id' => 'required',
                'structure_id' => 'required',
                'menus' => 'required',
                'visible' => 'required',
            ],
                ['id.required' => 'Il campo ID è richiesto',
                    'structure_id.required' => 'Il campo Struttura è richiesto',
                    'visible.required' => 'Il campo Visible è richiesto',
                    'menus.required' => 'I Menu sono richiesti',
                ]);

        }



        $menus = $request->input('menus');

        if ($menus != null) {
            $menus = implode(',', $menus);
        }

        $data = $request->all();
        $data['menus'] = $menus;


        $res = QrCode::find($qrCode->id_code)->update($data);

        $message = $res ? 'Il Qr Code ' . $qrCode->id . ' è stato modificato' : 'Il Qr Code ' . $qrCode->id . ' non è stato modificato';
        session()->flash('message', $message);
        return redirect()->route('qr_code.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\QrCode $qrCode
     * @return \Illuminate\Http\Response
     */
    public function destroy(QrCode $qrCode)
    {

    }


    public function print(Request $request)
    {
        $qr_code_url = $request['qr_code_url'];

        $data = ['url' => $qr_code_url];
        //return(view('auth.qr_code.print', compact('data')));
        //return PDF::loadView('auth.qr_code.print', array('data'=>$data))->setPaper('a4')->download('qrcode.pdf');
        $pdf = PDF::loadView('auth.qr_code.print', array('data' => $data));
        return $pdf->download('qrcode.pdf');
    }

    public function structure_select()
    {

        $structure_users = StructureUser::all();
        $current_structure = '';

        foreach ($structure_users as $structure_user) {
            if ($structure_user->user_id == $this->user->id) {
                $current_structure = $structure_user->structure_id;
            }
        }

        return $current_structure;
    }


    public function multiselect($items, $item)
    {

        $array = [];

        if (!$item->menus == null) {

            $selected = explode(',', $item->menus);

            foreach ($selected as $select) {
                $all = Menu::where('id_code', $select)->first();
                if($all!=null) {
                    array_push($array, $all);
                }
            }

            foreach ($items as $it) {
                if (!in_array($it, $array)) {
                    $it->selected = false;
                    array_push($array, $it);
                }
            }

        } else {
            foreach ($items as $it) {
                $it->selected = false;
                array_push($array, $it);
            }
        }

        return $array;
    }

}
