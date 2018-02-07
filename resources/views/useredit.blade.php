@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heeding"><h2>Edit User</h2></div>

                <div class="panel-body">

                    {!! Form::model($user,['method' => 'PATCH', 'route'=>['home.useredit.update',$user->id]]) !!}
                            <div class="col-md-6">
                                <div class="form-group">
                                    {!! Form::label('name', 'Name:') !!}
                                    {!! Form::text('name',null,['class'=>'form-control'])!!}
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                        {!! Form::label('email', 'E-mail :') !!}
                                        {!! Form::text('email',null,['class'=>'form-control'])!!}
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                        {!! Form::label('role', 'Role :') !!}
                                        <select id="role" name="role" class="form-control" required="">
                                                <option value=""></option>
                                                <option value="admin">Admin</option>
                                                <option value="member">Member</option>
                                        </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                        {!! Form::label('password', 'Password :') !!}
                                        {!! Form::input('password','password',null,['class'=>'form-control','required'])!!}
                                </div>
                            </div>

                            <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Update
                                </button>
                            </div>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
