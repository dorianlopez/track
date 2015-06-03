{% extends "templates/clean.volt" %}
{% block header %}
    {{ stylesheet_link('css/session-styles.css') }}
{% endblock %}
{% block content %}
    {{flashSession.output()}}
    <form action="{{url('session/login')}}" method="POST" class="form-signin">
        <h2 class="form-signin-heading">Iniciar sesión</h2>
        <label for="username" class="sr-only">Nombre de usuario</label>
        <input type="text" id="username" class="form-control" placeholder="Nombre de usuario" required autofocus>
        <label for="password" class="sr-only">Contraseña</label>
        <input type="password" id="password" class="form-control" placeholder="Contraseña" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Continuar</button>
    </form>
{% endblock %}