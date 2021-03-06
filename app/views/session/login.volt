{% extends "templates/clean.volt" %}
{% block header %}
    {{ stylesheet_link('css/session-styles.css') }}
{% endblock %}
{% block content %}
    <form action="{{url('session/login')}}" method="POST" class="form-signin">
        <img src="{{url('')}}images/logo.png" height="135" />
        {{flashSession.output()}}
        <h2 class="form-signin-heading">Iniciar sesión</h2>
        <label for="company" class="sr-only">Compañía</label>
        <input type="number" id="company" name="company" class="form-control" placeholder="Compañía" required autofocus>
        <label for="username" class="sr-only">Nombre de usuario</label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Nombre de usuario" required>
        <label for="password" class="sr-only">Contraseña</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Continuar</button>
        <br>
        <a href="{{url('session/recoverpass')}}" style="text-decoration: underline;">Recuperar Contraseña</a>        
    </form>
{% endblock %}