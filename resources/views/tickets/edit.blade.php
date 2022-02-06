<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Forma za promjenu postojećih podataka') }}
        </h2>
    </x-slot>
    <div class="py-12">
    <div class="max-w-7yl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <div class="p-2">
                @foreach($tickets as $ticket)
        <form method="POST" action="{{ route('update_ticket') }}"> <!-- izmjeni rutu ovdje! -->
        @csrf

        <input type="hidden" name="id" value="{{$ticket->id}}"/>    

            <div>
                <x-jet-label for="bar_kod" value="{{ __('Naziv i opis') }}" />
                <x-jet-input id="bar_kod" class="block mt-1 w-full" type="text" name="bar_kod" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="polaziste" value="{{ __('Polaziste') }}" />
                <select id="polaziste" name="polaziste" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opcity-50 rounded-md shadow-sm">
                    <option>Odaberi</option>
                    @foreach($departures as $departure)
                    <option value="{{$departure->id}}"
                        @if($ticket->polaziste == $departure->id) selected 
                        @endif>{{$departure->grad}}</option>
                    @endforeach 
                 </select>
                   </div>
            <div class="mt-4">
                <x-jet-label for="odrediste" value="{{ __('Odredište') }}" />
                <select id="odrediste" name="odrediste" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opcity-50 rounded-md shadow-sm">
                    <option>Odaberi</option>
                    @foreach($destinations as $destination)
                    <option value="{{$destination->id}}"
                    @if($ticket->odrediste==$destination->id) selected
                        @endif>{{$destination->grad}}</option>
                    @endforeach
                 </select>
            </div>      
            <div class="mt-4">
                <x-jet-label for="tip" value="{{ __('Smjer') }}" />
                <select id="tip" name="tip" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opcity-50 rounded-md shadow-sm">
                    <option>Odaberi</option>
                    @foreach($types as $type)
                    <option value="{{$type->id}}"
                    @if($ticket->tip==$type->id) selected
                        @endif>{{$type->tip}}</option>
                    @endforeach
                </select>
            </div>
            <div class="mt-4">
                <x-jet-label for="klasa" value="{{ __('Vrsta') }}" />
                <select id="klasa" name="klasa" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opcity-50 rounded-md shadow-sm">
                    <option>Odaberi</option>
                    @foreach($klasas as $klasa)
                    <option value="{{$klasa->id}}"
                    @if($ticket->klasa==$klasa->id) selected
                        @endif>{{$klasa->naziv}}</option>
                    @endforeach
               </select>
              </div>

            <div class="mt-4">
                <x-jet-label for="cijena" value="{{ __('Cijena') }}" />
                <x-jet-input id="cijena" class="block mt-1 w-full" type="double" name="cijena" required autofocus />
            </div>


            <div class="mt-4">
                <x-jet-label for="datum" value="{{ __('Datum') }}" />
                <x-jet-input id="datum" class="block mt-1 w-full" type="date" name="datum" required autofocus />
            </div>
            <div class="mt-4">
                <x-jet-label for="vrijeme" value="{{ __('Vrijeme') }}" />
                <x-jet-input id="vrijeme" class="block mt-1 w-full" type="time" name="vrijeme" required autofocus />
            </div>
            <div class="flex items-center justify-end mt-4">
               

               <x-jet-button class="ml-4">
                   {{ __('Spremi') }}
               </x-jet-button>
           </div>
       </form>@endforeach
     </div>
       </div>
   </div>
</div>

</x-app-layout>