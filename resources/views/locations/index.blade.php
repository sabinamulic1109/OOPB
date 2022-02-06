<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('P U T O V A NJ A') }}
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('departures') }}" :active="request()->routeIs('departures')">
                        {{ __('Polazišta') }}
                    </x-jet-nav-link>
                </div>
                <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                    <x-jet-nav-link href="{{ route('destinations') }}" :active="request()->routeIs('destinations')">
                        {{ __('Odredišta') }}
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
    img{
        display:flex;
        border-radius:24px;
    }
    </style>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
               <div class="p-2">
               <img src="{{URL::asset('/image/putovanja.jpg')}}" > 
</div>   
    </div>
</div></div>
</x-app-layout>