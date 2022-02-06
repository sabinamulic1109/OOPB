<link type="text/css" rel="stylesheet" href="{{ mix('css/app.css') }}">  

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('D E S T I N A C I J E') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('locations') }}" :active="request()->routeIs('locations')">
                        {{ __('Putovanja') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('departures') }}" :active="request()->routeIs('departures')">
                        {{ __('Polazišta') }}
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
         
           
                @foreach($destinations as $destination) 
                @if($loop->iteration > 10)
                @break
                @endif
              
                
                
           
                   <div style="color:#264d73;
        background-color: #ffe6cc;">
                   <p class="p-2">                   
               <table><b>
            <tr><td> <x-gmdi-map class="h-6 w-6 text-600"/></td><td>{{$destination->kontinent}}</td></tr>
            <tr><td>   <x-gmdi-outlined-flag-s class="h-6 w-6 text-600"/></td><td>{{$destination->drzava}}</td></tr>
            <tr><td>   <x-gmdi-location-city-o class="h-6 w-6 text-600"/></td><td>{{$destination->grad}}</td></tr>
            <tr><td>   <x-gmdi-connecting-airports-s class="h-6 w-6 text-600"/></td><td>{{$destination->aerodrom}}</td></tr> </b></table></p></div><br>
         

            @endforeach
            </div>
        </div>
    </div>
</x-app-layout>