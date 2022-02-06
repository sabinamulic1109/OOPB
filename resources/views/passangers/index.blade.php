<link type="text/css" rel="stylesheet" href="{{ mix('css/app.css') }}">  

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('P U T N I C I') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('reservations') }}" :active="request()->routeIs('reservations')">
                        {{ __('Rezervacije') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('payments') }}" :active="request()->routeIs('payments')">
                        {{ __('Plaćanje') }}
                    </x-jet-nav-link>
                </div>
        </h2>
    </x-slot>
<style>
    span{
        color:#ffe6cc;
        background-color:#264d73;
  padding:5px;
 text-transform:uppercase;
 font-weight:bold;
 
    }
    </style>
    <div class="py-12">
        <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
         
           
                @foreach($passangers as $passangers) 
                @if($loop->iteration > 10)
                @break
                @endif
              
                
                
           
                   <div style="color:#264d73;
        background-color: #ffe6cc;">
                   <p class="p-2">                   
               <table><b>
    <!--  <tr><td> <x-gmdi-airplanemode-active-o class="h-6 w-6 text-600"/></td><td>{{$loop->iteration}}</td></tr>-->
            <tr><td> <x-gmdi-person class="h-6 w-6 text-600"/></td><td>{{$passangers->ime}} {{$passangers->prezime}}</td></tr>
            <tr><td>   <x-gmdi-phone-android-o class="h-6 w-6 text-600"/></td><td>+{{$passangers->mob}}</td></tr>
            <tr><td>   <x-gmdi-email-o class="h-6 w-6 text-600"/></td><td>{{$passangers->email}}</td></tr> 
            <tr><td>   <x-gmdi-location-on-r class="h-6 w-6 text-600"/></td><td>{{$passangers->adresa}}</td></tr> </b></table></p></div><br>


            @endforeach
            </div>
        </div>
    </div>
</x-app-layout>