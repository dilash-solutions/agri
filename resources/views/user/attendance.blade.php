<!DOCTYPE html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Scripts -->
  <script src="{{ asset('js/app.js') }}" defer></script>

  <!-- Styles -->
  <link href="{{ asset('css/app1.css') }}" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="{{ url('/css/style.css') }}">

</head>

<body id="admin" onload="route()">

  <header>
    <x-navbar />
  </header>


  <div class="container-fluid" style="min-height:550px">

    <div class="row" style="min-height: 550px;">

      <div class="col-md-3 col-lg-2" style="background-color: #26391f;">
        <div class="col-sm-10 pt-5" style="font-weight: bold;">
          <x-sidebar />
        </div>
      </div>

      <div class="col-md-9 col-lg-10">
        @if(session('success'))
        <div class="alert alert-dismissible" role="alert" style="background-color:#516b48;color:white">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <strong>{{session('success')}}</strong>
        </div>
        @endif

        <div class="row pt-3">
          <div class="col-md-10">
            <table class="table ">
              <thead class="thead-light">
                <tr>
                  <th scope="col">#ID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Attendance</th>

                </tr>
              </thead>
              <tbody>

                @foreach ($user as $item)
                <tr>
                  <th scope="row">{{ $item-> id }}</th>

                  <td>{{ $item->name }}</td>

                  <td>
                    <a class="text-decoration-none" href={{"att/".$item['id']}}> <button class="btn btn-success" name="btn">Yes</button></a>

                  </td>

                </tr>

                @endforeach


              </tbody>
            </table>
          </div>
          <hr />

          <div class="col-md-10">
            <h4 class="pb-4 pt-4">Today's Attendance</h4>
            <table class="table">
              <thead class="thead-light">
                <tr>
                  <th scope="col">Index</th>
                  <th scope="col">Name</th>
                  <th scope="col">Attendance</th>

                </tr>
              </thead>
              <tbody>
                @php($i=1)
                @foreach ($employees as $item)
                <tr>
                  <th scope="row">{{ $i++ }}</th>

                  <td>{{ $item->emp_name }}</td>
                  <td>
                    <a class="text-decoration-none" href={{"attremove/".$item['id']}}><button class="btn btn-danger" name="btn">Remove</button></a>

                  </td>

                </tr>

                @endforeach


              </tbody>
            </table>
          </div>
        </div>
      </div>

    </div>
  </div>
  <script>
    function route() {
      document.getElementById("attendance").style.backgroundColor = "#79797985";

    }
  </script>

  <x-footer />
</body>

<html>