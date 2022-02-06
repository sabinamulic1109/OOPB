<link type="text/css" rel="stylesheet" href="{{ mix('css/app.css') }}">  

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('R E Z E R V A C I J E') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('payments') }}" :active="request()->routeIs('payments')">
                        {{ __('Plaćanje') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('passangers') }}" :active="request()->routeIs('passangers')">
                        {{ __('Putnici') }}
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
         
           
                @foreach($reservations as $reservation) 
                @if($loop->iteration > 10)
                @break
                @endif
              
                
                
           
                   <div style="color:#264d73;
        background-color: #ffe6cc;">
                   <p class="p-2">                   
               <table><b>
            <tr><td> <x-gmdi-airplanemode-active-o class="h-6 w-6 text-600"/></td><td>{{$loop->iteration}}</td></tr>
            <tr><td> <x-gmdi-qr-code-2 class="h-6 w-6 text-600"/></td><td>{{$reservation->šifra}}</td></tr>
            <tr><td>   <x-gmdi-event-seat-r class="h-6 w-6 text-600"/></td><td>{{$reservation->mjesto}}</td></tr>
            <tr><td>   <x-gmdi-date-range-tt class="h-6 w-6 text-600"/></td><td>{{$reservation->datum}}</td></tr>
            <tr><td>   <x-gmdi-access-time-r class="h-6 w-6 text-600"/></td><td>{{$reservation->vrijeme}}</td></tr> </b></table></p></div><br>
         

            @endforeach
            </div>
        </div>
    </div>
</x-app-layout>