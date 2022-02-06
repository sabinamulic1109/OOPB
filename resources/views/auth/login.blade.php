<x-guest-layout style="background-color:#ffe6cc;" >
    <x-jet-authentication-card style="background-color:#ffe6cc;">
    <div style="background-color:#ffe6cc;">

        <x-slot name="logo">
        <img src="{{URL::asset('/image/logo.png')}}"  height="200" width="200">        
        </x-slot>
        <x-jet-validation-errors class="mb-4" />
        @if (session('status'))
            <div class="mb-4 font-large text-sm text-green-600"> 
                {{ session('status') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-jet-label for="email" value="{{ __('E-mail') }}" />
                <x-jet-input id="email" placeholder="Unesite Vaš e-mail" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Šifra') }}" />
                <x-jet-input id="password" placeholder="Unesite Vaš lozinku" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-jet-checkbox id="remember_me" name="remember" />
                    <span class="ml-2 text-sm text-gray-600">{{ __('Zapamti me') }}</span>
                </label>
            </div>

          <!-- <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                        {{ __('Zaboravili ste šifru?') }}
                    </a>
                @endif -->
                <div class="flex items-center justify-end ml-2">
                <x-jet-button class="ml-4">
                    {{ __('PRIJAVA') }}
                </x-jet-button>
                <x-jet-button class="ml-4">
                @if (Route::has('password.request'))
                    <a  href="{{ route('register') }}">
                        {{ __('Registracija') }}
                    </a>
                @endif
        </x-jet-button>

            </div>
        </form>
    </x-jet-authentication-card>
</div>
</x-guest-layout>