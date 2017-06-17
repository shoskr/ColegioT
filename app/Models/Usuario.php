<?php

namespace DummyNamespace;

use Illuminate\Database\Eloquent\Model;

/**
 * Class DummyClass
 */
class DummyClass extends Model
{
    protected $table = 'usuario';

    protected $primaryKey = 'id_usuario';

	public $timestamps = false;

    protected $fillable = [
        'username',
        'password',
        'TipoPerfil'
    ];

    protected $guarded = [];

        
}