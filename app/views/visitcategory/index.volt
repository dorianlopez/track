{% extends "templates/default.volt" %}
{% block header %}
{% endblock %}
{% block content %}
    <div class="space"></div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h1>Categorias Tipos de visitas</h1>
            <hr />
            <div class="text-right">
                <a href="{{url('visittype/index')}}" class="btn btn-primary">
                    Volver a tipos de visita
                </a>
                <a href="{{url('visitcategory/add')}}" class="btn btn-success">
                    Crear nueva categoria
                </a>
            </div>
        </div>        
    </div>
        
    <div class="clearfix"></div>
    <div class="space"></div>
    
    {{flashSession.output()}}
    
    {% if page.items|length == 0 or page.items is null %}        
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 wrap">
                <div class="alert alert-warning" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    No hay datos de tipos de visitas registrados, para agregar una haga <a href="{{url('visitcategory/add')}}">clic aquí</a>
                </div>
            </div>    
        </div>    
    {% else %}
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 wrap">
                {{ partial('partials/pagination_static_partial', ['pagination_url': 'visitcategory/index']) }}
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 wrap">
                <table class="table table-responsive table-bordered">                
                    <thead class="th">
                        <tr>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>  
                        {% for item in page.items %}
                            <tr>
                                <td>
                                    <strong>{{item.name}}</strong> <br />
                                    <span class="xs-text">Creado el {{date('d/M/Y', item.created)}}</span> <br />
                                    <span class="xs-text">Actualizado el {{date('d/M/Y', item.updated)}}</span>
                                </td>
                                <td>{{item.description}}</td>
                                <td class="text-right">
                                    <a href="{{url('visitcategory/edit')}}/{{item.idVisitcategory}}" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="top" title="Editar este categoria">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                    </a>
                                    <a class="show-dialog btn btn-danger btn-xs" data-toggle="modal"  href="#modal-simple" data-id="{{url('visitcategory/remove')}}/{{item.idVisitcategory}}">
                                        <span class="glyphicon glyphicon-trash"></span>
                                    </a>
                                </td>
                            </tr>
                        {% endfor %} 
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 wrap">
                {{ partial('partials/pagination_static_partial', ['pagination_url': 'visitcategory/index']) }}
            </div>
        </div>
    {% endif %} 
    
    <div id="modal-simple" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                  <h2>Eliminar Categoría</h2>
                </div>
                <div class="modal-body">
                    ¿Está seguro que desea eliminar esta categoría?
                </div>
                <div class="modal-footer">
                  <a href="" class="btn btn-sm btn-default" data-dismiss="modal">Cancelar</a>
                  <a href="" id="delete" class="btn btn-sm btn-danger" >Eliminar</a>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
            $(document).on("click", ".show-dialog", function () {
                var myURL = $(this).data('id');
                $("#delete").attr('href', myURL );
            });
    </script>
{% endblock %}