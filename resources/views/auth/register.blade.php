<x-guest-layout style="background-color:#ffe6cc;">
<x-jet-authentication-card style="background-color:#ffe6cc;">
<div style="background-color:#ffe6cc;">
        <x-slot name="logo">
        <img src="{{URL::asset('/image/logo.png')}}"  height="200" width="200">        
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('register') }}">
            @csrf

            <div>
                <x-jet-label for="name" value="{{ __('Ime i prezime') }}" />
                <x-jet-input id="name" placeholder="Unesite Vaše ime i prezime" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>

            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('E-mail') }}" />
                <x-jet-input id="email" placeholder="Unesite Vaš e-mail" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Lozinka') }}" />
                <x-jet-input id="password" placeholder="Unesite novu lozinku" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Potvrditi lozinku') }}" />
                <x-jet-input id="password_confirmation" placeholder="Ponovite lozinku" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>

            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-jet-label for="terms">
                        <div class="flex items-center">
                            <x-jet-checkbox name="terms" id="terms"/>

                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                        'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-jet-label>
                </div>
            @endif

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Imate račun?') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('REGISTRACIJA') }}
                </x-jet-button>
            </div>
        </form>
                                </div>
    </x-jet-authentication-card>
</x-guest-layout>