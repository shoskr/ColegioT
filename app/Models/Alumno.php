<?php

namespace DummyNamespace;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DummyClass
 */
class DummyClass extends Model
{
    protected $table = 'alumno';

    protected $primaryKey = 'rut';

	public $timestamps = false;

    protected $fillable = [
        'nombre_alumno',
        'fecha_nacimiento',
        'curso',
        'direccionl',
        'telefono',
        'estado'
    ];

    protected $guarded = [];

        
}