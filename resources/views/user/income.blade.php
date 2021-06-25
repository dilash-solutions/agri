<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Scripts -->
<script src="{{ asset('js/app.js') }}" defer></script>

<!-- Styles -->
<link href="{{ asset('css/app1.css') }}" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{{ url('/css/style.css') }}" >

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
<div class="text-muted pt-2">Add Daily Income</div>
<div class="row pt-3">
<div class="col-md-5">
<form action="/income" method="post" class="mb-5">
 @csrf 
 <div class="form-group">
    <label>Category*</label> <span class="font-weight-bold text-danger" style="font-family:revert; font-size:77%">@error('category'){{$message}}@enderror</span>
    <select name="category" class="form-control">
          <option value="" selected disabled>Select Product Category</option>
          @foreach($crops as $crop)
          <option value="{{$crop['name']}}">{{$crop['name']}}</option>
          @endforeach
          <option value="other">other</option>
         </select>
    
    </div>

    <div class="form-group"> <label>Description*</label><span  class="font-weight-bold text-danger" style="font-family:revert; font-size:77%">@error('description'){{$message}}@enderror</span>
    <input name="description" type="text" class="form-control" placeholder="Income source"> 
    
    </div>

    <div class="form-group"> <label>Amount*</label><span  class="font-weight-bold text-danger" style="font-family:revert; font-size:77%">@error('amount'){{$message}}@enderror</span>
    <input name="amount" type="text" class="form-control" placeholder="Inflowed amount(Rs)"> 
    
    </div>
    <input type="submit" class="btn pt-2 btn-block " value="INSERT RECORD">

</form>
</div>

<div class="col-md-7">
@foreach($crops as $crop)
<div class="text-muted text-capitalize pb-3">{{$crop['name']}}</div>
@foreach($incomes as $income)
@if($income->category==$crop->name)

<div class="row p-2 mb-2" style="background-color:#7979792b;">
<div class="col-6">{{$income['description']}}</div>
<div class="col-4">Rs. {{$income['amount']}}</div>
<div class="col-2">
<a href={{"editincome/".$income['id']}}><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#407082" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>

<a onclick="return confirm('Are you sure you want to delete record {{$income->description}}?' )" href={{"deleteincome/".$income['id']}}> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#7d2828" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
</svg></a>
</div>
</div>
@endif
@endforeach
@endforeach
<div class="text-muted text-capitalize pb-3">other</div>
@foreach($incomes as $income)

@if($income->category=='other')

<div class="row p-2 mb-2" style="background-color:#7979792b;">
<div class="col-6">{{$income['description']}}</div>
<div class="col-4">Rs. {{$income['amount']}}</div>
<div class="col-2">
<a href={{"editincome/".$income['id']}}><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#407082" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>

<a onclick="return confirm('Are you sure you want to delete record {{$income->description}}?' )" href={{"deleteincome/".$income['id']}}> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#7d2828" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
</svg></a>
</div>
</div>
@endif
@endforeach

</div>


</div>

</div>

    </div>



   </div>
   <script>
function route(){
  document.getElementById("income").style.backgroundColor="#79797985"; 

}
</script>

<x-footer />
</body>

<html>


