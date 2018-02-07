@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>
                
                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                
                    @if(Auth::user()->role == 'admin')
                    <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                        @foreach ($users as $user)                                            
                            <tr>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->role }}</td>
                                <td>
                                    <a href="{{ url('/home/useredit', $user->id)}}" class="btn btn-warning">Edit</a>
                                </td>
                                <td>
                                    <a href="{{ url('/home/delete', $user->id)}}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    @endif                   
                    You are logged in!

                    @if(Auth::user()->role == 'member')
                    <form class="form-group">
                        <label for="name" class="col-md-12 control-label">Name : {{ Auth::user()->name }} </label>    
                    </form>
                    <form class="form-group">
                        <label for="email" class="col-md-12 control-label">Email : {{ Auth::user()->email }} </label>    
                    </form>
                    <form class="form-group">
                        <label for="role" class="col-md-12 control-label">Role : {{ Auth::user()->role }} </label>    
                    </form>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                           <a href="{{ url('/home/useredit', Auth::user()->id)}}" class="btn btn-warning">Update</a>
                        </div>
                    </div>
                        <!-- @foreach ($users as $user)                                            
                            <tr>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->role }}</td>
                                <td>
                                    <a href="{{ url('/home/useredit', $user->id)}}" class="btn btn-warning">Edit</a>
                                </td>
                            </tr>
                        @endforeach -->
                     @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
