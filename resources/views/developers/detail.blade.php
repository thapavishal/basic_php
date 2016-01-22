@extends('layouts.master')
@section('content')
<h1>Developer Detail </h1>
<hr>
<h3>{{ $developer->name }}</h3>

<h6>Email : {{ $developer->email }}</h6>

<h6>Available : {{ $developer->is_available }}</h6>

<p>Biodata : {{ $biodata->biodata}}</p>

<p>Education : </p><ul>
	<li>Course: {{ $education->course }} - Uni: {{ $education->university }} - Year:  {{ $education->duration }}</li>
</ul>

@stop