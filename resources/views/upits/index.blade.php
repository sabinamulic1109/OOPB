<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('U P I T I') }}
        </h2>

    </x-slot>
<style>
    
    table{
        border: 1px solid black; 
        border-color:#ffbf00;
        margin-left: auto;
  margin-right: auto;

        
    }
    td{
        border: 1px solid black;
        text-align:left;
        padding:5px;
        font-weight:bold;
        color:black;
        border-color:#ffbf00;
        color:#264d73;
        background-color: #ffe6cc;
    }
    .td1{
        border: 1px solid black;
        text-align:center;
        border-color:#ffbf00;
        text-transform:italic;
        color:#0c1a27;

        background-color: #ffe6cc;

    }

    span{
        color:#ffe6cc;
        background-color:#264d73;
        display:flex;
  padding:5px;
 text-transform:uppercase;
 font-weight:bold;
 
    }
    </style>
    <BODY>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>1. NAJČEŠĆE POVRATNE KARTE IZ AFRIKE ZA AMERIKU (polasci)</span><br><br>
            <table>
               <p><tr><td></td><td class="td1">DRŽAVA</td><td class="td1">GRAD</td><td class="td1">AERODROM</td><td class="td1">GATE</td></tr></p>
               @foreach($most_common_departures as $most_common_departure)
        <p><tr><TD class="td1">{{$loop->iteration}}.</td><td><b>{{$most_common_departure->drzava}}</b></td><td>{{$most_common_departure->grad}}</td><td>{{$most_common_departure->aerodrom}}</td><td>{{$most_common_departure->gate}}</td></tr></p>
        @endforeach
</table>
       
        

    </div></div>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <span>2. Od ukupno {{$broj}} putovanja, prikazane su februraska iz prve klase</span><br><br>

            <table>
               <p><tr><td></td><td class="td1">ODREDIŠTE</td><td class="td1">AERODROM</td><td class="td1">OPIS AERODROMA NA KOJI SE SLIJEĆE</td></tr></p>
               @foreach($destinacije as $destinacije)
        <p><tr><TD class="td1">{{$loop->iteration}}.</td><td><b>{{$destinacije->grad}}, {{$destinacije->drzava}} </b></td><td>{{$destinacije->aerodrom}}</td><td>{{$destinacije->opis}}</td></tr></p>
        @endforeach
</table>
       
        
</div>
</div>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <span>3. PUTNICI KOJI SU IZ KINE SLETJELI NA AERODROM ''PULKOVO'' U RUSIJI</span><br><br>

                <table>
            <p><tr><td></td><td class="td1">IME I PREZIME</td><td class="td1">BROJ MOBITELA</td></tr></p>
            @foreach($russian_ticket_passangers as $russian_ticket_passanger)
        <p><TR><TD class="td1">{{$loop->iteration}}.</TD><TD>{{$russian_ticket_passanger->passanger_ime}} {{$russian_ticket_passanger->passanger_prezime}}</TD><TD>+{{$russian_ticket_passanger->mob}}</td></tr></b></p>
        @endforeach
</table>
        </div>
</div>


<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>4. PUTOVANJA IZ EUROPE ZA BAHAME</span><br><br>

                <table>
                <p><tr><td></td><td class="td1">AERODROM</td><td class="td1">POLASCI</td><TD class="td1">GATE</TD></tr></p>

            @foreach($trips_to_bahami_from_europe as $trips_to_bahami_from_europe)
        <p><TR><TD class="td1">{{$loop->iteration}}.</TD><TD>{{$trips_to_bahami_from_europe->departure_aerodrom}}</TD><TD>{{$trips_to_bahami_from_europe->departure_grad}}, {{$trips_to_bahami_from_europe->departure_drzava}}</TD><td>{{$trips_to_bahami_from_europe->gate}}</td></TR> </p>
        @endforeach </TABLE>
</div></div>
<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>5. PUTNICI iz kalifornije KOJI SU REZERVISALI POVRATNU KARTU ZA AUSTRALIJU</span><br><br>
<table>
            <p><tr><td></td><td class="td1">PUTNIK</td><td class="td1">E-MAIL</td></tr></p>
            @foreach($povratne as $povratna)
        <p><TR><TD class="td1">{{$loop->iteration}}. </TD><TD>{{$povratna->passanger_ime}} {{$povratna->passanger_prezime}}</TD><TD>{{$povratna->email}}</TD></TR></p>
        @endforeach
</TABLE>
        
</div>
</div>

<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>6. rezervacije biznis klasa, jednosmjerna karta sa gotovinskim plaćanjem i rasponom cijena od 200$ do 600$</span><br><br>
<table>
<p><tr><td></td><td class="td1">KOMPANIJA</td><td class="td1">CIJENA</td></tr></p>
            @foreach($find_reservation as $find_reservation)
        <p><TR><TD CLASS="td1">{{$loop->iteration}}. </td><td>{{$find_reservation->vrsta}}</td><td> ${{$find_reservation->cijena_karata}}</td>
    </tr></b></p>
        @endforeach
</table>
        
</div>
</div>
<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>7.  putnici iz Njemačke koji su izvršili kartično plaćanje</span><br><br>

                <table>
               <p><tr><td></td><td class="td1">IME I PREZIME</td><td class="td1">BROJ MOBITELA</td><td class="td1">E-MAIL</td><td class="td1">ADRESA</td></tr></p>

            @foreach($kartica as $kartice)
        <p><tr><TD class="td1">{{$loop->iteration}}.</td><td><b>{{$kartice->ime}} {{$kartice->prezime}}</b></td><td>+{{$kartice->mob}}</td><td>{{$kartice->email}}</td><td>{{$kartice->adresa}}</td></tr></p>
        @endforeach
</table>
        </div>

</div>
<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>8. RANI LETOVI ZA INDIJU</span><br><br>

                <table>
                <p><tr><td></td><td class="td1">KONTINENT</td><td class="td1">GRAD</td><td class="td1">AERODROM</td><TD class="td1">GATE</TD></tr></p>

            @foreach($rano as $ran)
        <p><TR><TD class="td1">{{$loop->iteration}}.</TD><TD>{{$ran->kontinent}}</TD><TD>{{$ran->grad}}, {{$ran->drzava}}</TD><td>{{$ran->aerodrom}}</td><td>{{$ran->gate}}</td></TR> </p>
        @endforeach </TABLE>
</div></div>

<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>9. PONUDE LETOVA iz stuttgarta za casablancu</span><br><br>

                <table>
                <p><tr><td></td><td class="td1">POLAZIŠTE</td><td class="td1">DESTINACIJA</td><td class="td1">CIJENA</td><td class="td1">DATUM</td><TD class="td1">VRIJEME</TD></tr></p>

            @foreach($raspored as $raspored)
        <p><TR><TD class="td1">{{$loop->iteration}}.</TD><TD>Stuttgart, Njemačka</TD><TD>Casablanca, Maroko</TD><TD>${{$raspored->cijena}}</td><td>{{$raspored->datum}}</TD><td>{{$raspored->vrijeme}}</td></TR> </p>
        @endforeach </TABLE>
</div></div>

<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><span>10. REZERVISANA MJESTA za havaje u ekonomskoj klasi</span><br><br>

                <table>
                <p><tr><td></td><td class="td1">MJESTO</td><td class="td1">DESTINACIJA</td><td class="td1">DATUM REZERVACIJE</td><td class="td1">RAZRED</td></tr></p>

            @foreach($mjesto as $mjesto)
        <p><TR><TD class="td1">{{$loop->iteration}}.</TD><TD>Broj {{$mjesto->mjesto}}</TD><TD>Havaji, SAD</TD><TD>{{$mjesto->datum}}</TD><TD>Ekonomska klasa</TD></TR> </p>
        @endforeach </TABLE>
</div></div>

</x-app-layout>