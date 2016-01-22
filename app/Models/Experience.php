<?php	
namespace App\Models;
use \Eloquent;

class Experience extends Eloquent 
{ 
	protected $fillable = [
		'developer_id',
		'title',
		'detail'
	];

}