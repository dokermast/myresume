@extends('admin.admin_basic')

@section('content')

    <div class="col-md-12">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Edit Contact</h3>
            </div>

            <div class="card-body">

                @if(isset($contact))

                    <form role="form" action="{{ route('update_contact', $contact->id) }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-sm-12">
                                 <div class="form-group">
                                    <label>Location</label>
                                    <input type="text" name="location" class="form-control" value="{{ $contact->location }}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>LinlIn</label>
                                    <input type="text" name="linkin" class="form-control" value="{{ $contact->linkin }}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>GitHub</label>
                                    <input type="text" name="github" class="form-control" value="{{ $contact->github }}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Skype</label>
                                    <input type="text" name="skype" class="form-control" value="{{ $contact->skype }}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="text" name="phone" class="form-control" value="{{ $contact->phone }}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" name="email" class="form-control" value="{{ $contact->email }}"/>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">UPDATE</button>
                    </form>
                @endif
            </div>
        </div>
    </div>


@endsection
