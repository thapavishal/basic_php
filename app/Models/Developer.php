<?php	
namespace App\Models;
use \Eloquent;

class Developer extends Eloquent 
{ 
	protected $fillable = [
		'name',
		'email',
		'password',
		'image',
		'is_available',
		'del_flag'
	];

	public function biodata(){
		return $this->hasOne(Biodata::class);
	}

	public function education(){
		return $this->hasOne(Education::class);
	}

}