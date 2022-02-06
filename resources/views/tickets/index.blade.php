<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('A V I O K A R T E') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('types') }}" :active="request()->routeIs('types')">
                        {{ __('Tipovi karata') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('klasas') }}" :active="request()->routeIs('klasas')">
                        {{ __('Klase') }}
                    </x-jet-nav-link>
                </div>
        </h2>
    </x-slot>
    <style>
        td{
            font-weight:bold;
        }
        div{
            border-radius:25px;
        }

        .button {
  background-color: #264d73;
  border: 7px;
  color: #ffe6cc;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:20px;
}
.button1 {
  background-color: #264d73; 
  color: #ffe6cc; 
  border: 7px solid #ffe6cc;
  border-radius:20px;

}

.button1:hover {
  background-color: #ffe6cc;
  color: #264d73;
  border: 7px solid #264d73;
  border-radius:20px;

}
.buttonx {
  background-color: #264d73;
  border: 7px;
  color: #ffe6cc;
  padding: 16px 32px;
  text-align: center;
  font-weight:bold;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:20px;
}
.button2 {
  background-color: #264d73; 
  color: #ffe6cc; 
  border: 7px solid #ffe6cc;
  border-radius:20px;

}

.button2:hover {
  background-color: #ffe6cc;
  color: #264d73;
  border: 7px solid #264d73;
  border-radius:20px;

}
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

        </style>

    <div class="py-12">
        <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
       <span valign="center">   <a href="\add_ticket"><button class="buttonx button2">Dodaj kartu</BUTTON></a></span>
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
               <div class="p-2">
                   <h1 class="font-xl">LISTA KARATA</h1>
              <br>
                   @foreach($tickets as $ticket)
                   @if($loop->iteration > 10)
                @break
                @endif
                   <div class="flex space-x-4" >
                       <div class="flex-1">

                   <div style="color:#264d73;
        background-color: #ffe6cc;">
                   <p class="p-2">                   
               <table><b>
    <!--  <tr><td> <x-gmdi-airplanemode-active-o class="h-6 w-6 text-600"/></td><td>{{$loop->iteration}}</td></tr>-->
            <tr><td witdh="20%"></td><td> <x-gmdi-airplane-ticket class="h-6 w-6 text-600"/></td><td>{{$ticket->bar_kod}} aviokompanija</td></tr>
            <tr><td witdh="20%"></td><td>   <x-gmdi-attach-money-s class="h-6 w-6 text-600"/></td><td>{{$ticket->cijena}}</td></tr>
            <tr><td witdh="20%"></td><td>   <x-gmdi-date-range-s class="h-6 w-6 text-600"/></td><td>{{$ticket->datum}}</td></tr> 
            <tr><td witdh="20%"></td><td>   <x-gmdi-access-time-s class="h-6 w-6 text-600"/></td><td>{{$ticket->vrijeme}}</td></tr> </b></table></p></div><br>   </div>             <div class="flex-1">
                    <form method="POST" action="{{route('delete_ticket')}}">
                        @csrf
                        <input type="hidden" name="id" value="{{$ticket->id}}">
                        <div class="p-2">
                            <button class="button button1">
                          <B>   {{__('OBRIŠI')}}</B></button></div></form></div>
                           
<div class="flex-1">
<form method="POST" action="{{route('edit_ticket')}}">
                        @csrf
                        <input type="hidden" name="id" value="{{$ticket->id}}">
                        <div class="p-2">
                            <button  class="button button1">
                         <B>    {{__('UREDI')}}</B></button></div></form></div></div>

                             @endforeach 
            </div>
        </div>
    </div>
</div></div>
</x-app-layout>