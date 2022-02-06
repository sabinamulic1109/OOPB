<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('R A Z R E D I') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('tickets') }}" :active="request()->routeIs('tickets')">
                        {{ __('Karte') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('types') }}" :active="request()->routeIs('types')">
                        {{ __('Smjerovi') }}
                    </x-jet-nav-link>
                </div>
        </h2>
    </x-slot>
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
        padding:10px;
    }
    .slika{
        display:cover;
        text-align:center;
        align:center;
       
    }
    img{
        border-radius:20px;
    }
    </style>
<table style="margin-left: auto;
  margin-right: auto;"><tr><td>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                
               
                   <div style="background-color: #ffe6cc;">
                   <p class="p-2">                   
               <b> 

               <table>
<tr><td class="slika">
        <img src="{{URL::asset('/image/biznis.webp')}}" >        
        </td><TD>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <br><br>
<P class="x"><span><b>BIZNIS KLASA</b></span>
</hr></p><BR>
<p class="y"><i>
Uživajte u iskustvu biznis klase koje počinje već na aerodromu. 
Po dolasku na aerodrom, prijavite se na let na našim šalterima namijenjenim Biznis klasi.
Dok čekate svoj let, možete se opustiti u nekom od ekskluzivnih salona za putnike na različitim aerodromima naše mreže.
Na letovima uživajte u specijalitetima a la carte ili Dine Anytime menija, pripremljenim od najkvalitetnijih proizvoda. 
</i></p></td></tr>
</table>    
 </p></div>

            </div>
        </div>
    </div>
</td></TR>
<table style="margin-left: auto;
  margin-right: auto;"><tr><td>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                
               
                   <div style="background-color: #ffe6cc;">
                   <p class="p-2">                   
               <b> 

               <table>
<tr><TD>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <br><br>
<P class="x"><span><b>EKONOMSKA KLASA</b></span>
</hr></p><BR>
<p class="y">
    <i>Na putovanja u ekonomskoj klasi možete da ponesete 2 x 23 kg besplatnog prtljaga. Ako putujete sa mališanima, na raspolaganju vam je i naša Sky Au Pair dadilja koja će vam pomoći da ih zabavite ili spremite za spavanje tokom trajanja leta.
        U međuvremenu možete uživati u velikom broju domaćih i stranih filmova.
    </i>
</p></td><td class="slika">
        <img src="{{URL::asset('/image/ekonomska.jpg')}}" >        
        </td></tr>
</table>    
 </p></div>

            </div>
        </div>
    </div>
</td></TR>
<table style="margin-left: auto;
  margin-right: auto;"><tr><td>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                
               
                   <div style="background-color: #ffe6cc;">
                   <p class="p-2">                   
               <b> 

               <table>
<tr><td class="slika">
        <img src="{{URL::asset('/image/prva.jpeg')}}" >        
        </td><TD>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <br><br>
<P class="x"><span><b>PRVA KLASA</b></span>
</hr></p><BR>
<p class="y"><i>
Osim mogućnosti za potpunu izloaciju i odmor, i toga što pruža ugođaj privatnog leta, prva klasa može slobodno da se poredi sa restoranima od 5 zvjezdica. Hranu za putnike pripremaju najbolji svjetski kuhari.
Putnicima se obroci služe prema bogatom meniju koji je vrlo pažljivo odabran. Uz redovna posluženja, na raspolaganju su i luksuzne užine, kao i stalno otvoren bar sa najraznovrsnijim pićima. 
Još jedna pogodnost je usluga prijema prtljaga, kao i isporuke na kućnu ili hotelsku adresu.
</i></p></td></tr>
</table>    
 </p></div>

            </div>
        </div>
    </div>
</td></TR>


</table>

</x-app-layout>