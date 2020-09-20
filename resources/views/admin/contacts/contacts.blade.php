@extends('admin.admin_basic')

@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Contacts</h3>
                    </div>

                    <div class="card-body table-responsive p-0">

                        <table id="" class="table table-hover text-nowrap">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Contact name</th>
                                    <th scope="col">Contact value</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td>Location</td>
                                    <td class="td-info">{{ $contact->location }}</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>LinkIn</td>
                                    <td><a href="#">{{ $contact->linkin }}</a></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>GitHub</td>
                                    <td><a href="#">{{ $contact->github }}</a></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Skype</td>
                                    <td>{{ $contact->skype }}</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Phone</td>
                                    <td>{{ $contact->phone }}</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>Email</td>
                                    <td>{{ $contact->email }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="text-center">
                    <a class="btn btn-warning" href="{{ route('edit_contact') }}">Edit</a>
                </div>
            </div>
        </div>
    </div>
@endsection
