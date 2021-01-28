@extends('admin_panel.adminLayout') @section('content')
<script src="{{asset('js/lib/jquery.js')}}"></script>
<script src="{{asset('js/dist/jquery.validate.js')}}"></script>
<style>label.error {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
  padding:1px 20px 1px 20px;
}</style>
<div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 d-flex align-items-stretch grid-margin">
              <div class="row flex-grow">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                    <a href="{{route('admin.categories')}}"> < Retour à la liste</a>
                    <br><br>
                      <h4 class="card-title">Modifier la categorie</h4>
                      <br>
                      <form class="forms-sample" method="post"  id="cat_form">
                      {{csrf_field()}}
                        <div class="form-group">
                          <label for="exampleInputEmail1">Nom de la categorie</label>
                          <input type="text" class="form-control" id="Name" name="Name" value="{{$category->name}}">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Type de la categorie</label>
                          <textarea type="textarea" class="form-control" id="Type" name="Type" >{{$category->type}}</textarea>
                        </div>
                        <input  type="submit" name="updateButton"  class="btn btn-success mr-2" id="updateButton" value="Modifier" />
                      </form>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>

<script>
	
	$(document).ready(function() {
		$("#cat_form").validate({
			rules: {
				Name: "required",
				Type: "required",
				
				
				
			},
			messages: {
				Name: "Indiquez le nom de categorie",
				Type: "Indique le type de la categorie",
                	
			}
		});

		
	});
	</script>
@endsection