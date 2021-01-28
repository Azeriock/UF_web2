@extends('store.storeLayout')
@section('content')
<div class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                        <th>ID de commande</th>
                        <th>Image </th>
                        <th>Nom</th>
                        <th>Quantite</th>
                        <th>Couleur</th>
                        <th>Statut</th>
                    </thead>
                    <tbody>
                        @foreach($sale as $s)
                            @foreach($all as $c)
                            @if($c[0]==$s->id)
                            @foreach($products as $p)
                            @if(session('user')->id == $s->user_id)
                                @if($c[1]==$p->id)
                                <tr>
                                <td>{{$s->id}}</td>
                                <td><img src="uploads/products/{{$p->id}}/{{$p->image_name}}" height="50px" width="50px"></td>
                                <td>{{$p->name}}</td>
                                <td>{{$c[2]}}</td>
                                <td><div style="height:25px;width:25px;margin:5px;display:inline-block;background-color: {{$c[3]}}"></div></td>      
                                <td>{{$s->order_status}}</td>
                                </tr>
                           
                                @break
                                @endif
                                @endif
                            @endforeach
                        @endif
                        @endforeach
                        @endforeach
                        </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

@endsection
