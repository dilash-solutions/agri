<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <!-- Styles -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
        <link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet">
        <link href="{{ asset('css/app1.css') }}" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="{{ url('/css/style.css') }}" >

        <title>iAgri</title>
       
    </head>
    <body style="background-color:#0d130f;">
        <div class="p-4" style="background-color: #0d130f;">
            @if (Route::has('login'))
                <div style="text-align: right" >
                    @auth
                        <a href="{{ url('/dashboard') }}" style="padding: 15px;border-radius: 5px;background-color: #6e7d71" class="text-decoration-none text-white mr-5" >Dashboard</a>
                    @else
                        <a href="{{ route('login') }}" style="padding: 15px;border-radius: 5px;background-color: #6e7d71" class="text-decoration-none text-white mr-5">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" style="padding: 15px;border-radius: 5px;background-color: #6e7d71" class="text-decoration-none text-white mr-5" >Register</a>
                        @endif
                    @endauth
                </div>
            @endif

        </div>  

        <div class="container" style="min-height:700px; background-image:url('../images/background3.jpg');background-size: cover;
        background-color: #e1f5e3ab;
    background-blend-mode: color;    max-width: 1300px; ">
   
        <div   class="row m-2" style="min-height: 600px;padding-top: 100px;">
        <div class="col-sm-8 pr-0 pl-0">
        <div class="container-fluid" style="background-color: #00000096; color:white;min-height:300px"><label data-aos="zoom-in" data-aos-duration="2000" style="font-size: 700%;
    font-family: caveat;padding-top: 73px;padding-left: 60px;height: 195px;">TUTU</label>
    <div style="text-align: right;"><label data-aos="zoom-in" data-aos-duration="2000" style="font-size: 30px;font-family: brush script MT;padding-right:145px">Tracking partner</label></div></div>
    </div>
        <div data-aos="fade-down" data-aos-duration="2000" class="col-sm-4" style="background-image: url('../images/tutu.jpg');min-height:550px;color:white" >
        <label style="padding-top: 450px;">this is for a brief description about the estate</label></div> 
        </div>
        </div>

        <script>
       AOS.init();
     </script>

        <footer class="footer text-muted" style="background-color:#000000c2; padding:15px 0 15px 0">
        <div class="container-fluid text-white pt-5 pb-2">
           <div class="row pl-3">
           <div class="col-6">
           <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg><label style="padding-left: 20px;">+94-865756647</label>  </div>
           <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
  <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
</svg><label style="padding-left: 20px;">123/7,milton estate, koslanda, sri lanka</label></div>
           <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
</svg><label style="padding-left: 20px;">miltonestate@gmail.com</label>  </div>
           </div>
           <div class="col-6">
           <div> &copy; Copyright - All Rights Reserved </div></div>
           </div>
        </div>
    </footer>

    </body>
</html>
