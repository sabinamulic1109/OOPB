<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('P O Č E T N A') }}
        </h2>
    </x-slot>
    <style>
     img{
        display:repeat;
        border-radius:24px;
        align:center;

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
    P{
        ALIGN:justify;
    }
    </style>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="overflow-hidden shadow-xl sm:rounded-lg" style="BACKGROUND-COLOR:#264d73; color:#264d73;">
               <div class="p-2"><table><tr><td>
               <img src="{{URL::asset('/image/logo 2.png')}}" > </td>
               <td>
               <div class="py-12">
        <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg" style="border:10px solid #ffe6cc; BACKGROUND-COLOR:#264d73; color:#ffe6cc;">
               <div class="p-2">
            <b>  <P>     DOBRODOŠLI NA NAŠU STRANICU!<BR>
                   VODEĆI SAJT ZA REZERVACIJU AVIOKARATA U REGIONU.<br>
                   MOĆI ĆETE PRONAĆI SVE INFORMACIJE O LETOVIMA, O POLAZIŠTIMA I ŽELJENIM DESTINACIJAMA.
                   INFORMIŠITE SE O POGODNOSTIMA KLASA I TIPOVA KARATA KOJE NUDIMO, KAO I NAČINIMA PLAĆANJA.</P></b>


               </td></tr></table>
               
            </div>
        </div>
    </div>
</x-app-layout>