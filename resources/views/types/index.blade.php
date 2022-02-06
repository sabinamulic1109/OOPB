<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('S M J E R O V I') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('tickets') }}" :active="request()->routeIs('tickets')">
                        {{ __('Karte') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('klasas') }}" :active="request()->routeIs('klasas')">
                        {{ __('Klase') }}
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
    span{
        width:100%;
        color:#ffe6cc;
        background-color:#264d73;
        display:block;
  padding:5px;
 text-transform:uppercase;
 font-weight:bold;
 text-align:center;
 vertical-align:center;
 
    }
    img{
        border-radius:20px;
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
        <img src="{{URL::asset('/image/povratna.jpg')}}" >        
        </td></tr></table>  </div>
        </div>
    </div>
    <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <br>
        <table><tr><td colspan="2"></td></tr>
<tr><td>
<P class="x"><span>POVRATNA KARTA</span></p><BR>
<p class="y"><i>U našoj bogatoj ponudi odaberite mjesto polijetanja i željenu lokaciju, te osigurajte sebi povratnu kartu po najpovoljnijoj cijeni u regionu !</i></p></td></tr>
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
        <img src="{{URL::asset('/image/jednosmjernaaaa.jpg')}}" >        
        </td></tr></table>  </div>
        </div>
    </div>
    <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <br>
        <table><tr><td colspan="2"></td></tr>
<tr><td>
<P class="x"><span>JEDNOSMJERNA KARTA</span></p><BR>
<p class="y"><i>U nas možete imati povjerenja kada birate Vašu jednosmjernu kartu i svjedočite profesionalnosti naše kompanije dok uživate u benifitima koje Vam garantujemo !</i></p></td></tr>
</table>    
 <b></p></div><br>

            </div>
        </div>
    </div> 
</td></tr></table>

</x-app-layout>