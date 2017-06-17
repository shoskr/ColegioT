<?php

namespace DummyNamespace;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DummyClass
 */
class DummyClass extends Model
{
    protected $table = 'profesor';

    protected $primaryKey = 'rut';

	public $timestamps = false;

    protected $fillable = [
        'nombre_profesor',
        'fecha_contrato',
        'asignatura',
        'valor_tutoria',
        'estado'
    ];

    protected $guarded = [];

        
}