{% extends "templates/default.volt" %}
{% block header %}
{% endblock %}
{% block content %}
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Editar el tipo de visita: <strong>{{vcat.name}}</strong></h2>
            <hr />
        </div>        
    </div>
                    
    <div class="clearfix"></div>
    <div class="space"></div>     
    
    {{flashSession.output()}}         
    
    <div class="row">
        <div class="col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-2 col-md-8 col-lg-offset-2 col-lg-8">
            <form action="{{url('visitcategory/edit')}}/{{vcat.idVisitcategory}}" method="post" class="form-horizontal">
                <div class="form-group">
                    {{form.render('name')}}
                </div>
                <div class="form-group">
                    {{form.render('description')}}
                </div>
                <div class="form-group text-right">
                    <a href="{{url('visitcategory')}}" class="btn btn-sm btn-default">Cancelar</a>
                    <button class="btn btn-sm btn-success">Guardar</button>
                </div>
            </form>    
        </div>        
    </div>
{% endblock %}