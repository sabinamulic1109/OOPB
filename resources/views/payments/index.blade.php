<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('P L A Ć A NJ E') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('reservations') }}" :active="request()->routeIs('reservations')">
                        {{ __('Rezervacija') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('passangers') }}" :active="request()->routeIs('passangers')">
                        {{ __('Putnici') }}
                    </x-jet-nav-link>
                </div>
        </h2>
    </x-slot>
<table style="margin-left: auto;
  margin-right: auto;"><tr><td>
    <div class="py-12">
        <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                
               
                   <div style="background-color: #ffe6cc;">
                   <p class="p-2">                   
               <b> 
<style>
    img{
        border-radius:20px;
    }
    span{
        color:#ffe6cc;
        background-color:#264d73;
  padding:5px;
 text-transform:uppercase;
 font-weight:bold;
 
    }
    
    td{
        padding:5px;
    }
    .x{
        text-align:center;
        align:center;
    }
    .y{
        text-align:justify;
        font-weight:none;
        text-transform:initial;
    }
    .slika{
        display:cover;
        text-align:center;
        align:center;
       
    }
    </style>
               <table>
<tr><td class="slika">
        <img src="{{URL::asset('/image/cash.jpg')}}" >        
        </td></tr></table>  </div>
        </div>
    </div>
    <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <br>
        <table><tr><td colspan="2"></td></tr>
<tr><td>
<P class="x"><span>GOTOVINSKO PLAĆANJE</span></p><BR>
<p class="y"><i>Sve svoje karte možete plaćati direktno gotovinom na licu mjesta prilikom primopredaje karte. Molimo da uz sebe imate neki od ličnih dokumenata prilikom preuzimanja rezervirane karte.</i></p></td></tr>
</table>    
 <b></p></div><br>

            </div>
        </div>
    </div>
</td><td>
<div class="py-12">
        <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                
                   <div style="background-color: #ffe6cc;">
                   <p class="p-2">                   
               <b> 
<style>
    td{
        padding:5px;
    }
    .x{
        text-align:center;
        align:center;
    }
    .y{
        text-align:justify;
    }
    .slika{
        display:cover;
        text-align:center;
        align:center;
    }
    </style>
               <table>
<tr><td class="slika">
        <img src="{{URL::asset('/image/card.jpg')}}" >        
        </td></tr></table>  </div>
        </div>
    </div>
    <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <br>
        <table><tr><td colspan="2"></td></tr>
<tr><td>
<P class="x"><span>KARTIČNO PLAĆANJE</span></p><BR>
<p class="y"><i>Obavite bilo koje plaćanje sigurno i praktično provlačenjem ili prislanjanjem kartice na terminal u radnji. Bilo gdje. Bilo kada. U bilo kojoj valuti.</i></p></td></tr>
</table>    
 <b></p></div><br>

            </div>
        </div>
    </div> 
</td></tr></table>

</x-app-layout>