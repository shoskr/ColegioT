<?php

namespace DummyNamespace;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DummyClass
 */
class DummyClass extends Model
{
    protected $table = 'alumno_usuario';

    public $timestamps = false;

    protected $fillable = [
        'Alumno_rut',
        'usuario_id_usuario'
    ];

    protected $guarded = [];

        
}