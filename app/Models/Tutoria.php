<?php

namespace DummyNamespace;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DummyClass
 */
class DummyClass extends Model
{
    protected $table = 'tutoria';

    protected $primaryKey = 'id_tutoria';

	public $timestamps = false;

    protected $fillable = [
        'fecha_tutoria',
        'estado',
        'Alumno_rut',
        'Profesor_rut'
    ];

    protected $guarded = [];

        
}