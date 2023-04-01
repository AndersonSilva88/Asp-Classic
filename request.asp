<!--ServerVariables-->
Exemplo Request.ServerVariables
<br><br>
<%=Request.ServerVariables("SERVER_NAME")%>
<br>
<%=Request.ServerVariables("PATH_INFO")%>
<br>
<%=Request.ServerVariables("REMOTE_HOST")%>

<!--QueryString-->
<br>
<a href="request.asp?Curso=Desenvolvimento Web&Modulo=Curso ASP">Link teste</a>
<br>

<%
curso = request.querystring("Curso")
modulo = request.querystring("modulo")

response.write "<br>Curso: "&curso
response.write "<br>M&oacute;dulo: "&modulo

%>
<!--Formulario-->
<br>===================================<br>
Request Utilizado Form<br>
<Form method="post" action="request.asp">

Nome: <input type="text" name="nome"><br>
E-mail: <input type="text" name="email"><br><br>

<input type="submit" value="Enviar">

</Form>

<br><br>

<%

response.write(request.form("nome"))&"<br>"

response.write(request.form("email"))

%>

<br>
<br>==========================================<br>
List box e Radion Button
<br><br>
<form method="post" action="request.asp">
Cliente
<select name="cliente">
    <option value="1">Maria</option> 
    <option value="2">Joao</option>
    <option value="3">Pedro</option>
</select>    
<br>
Masculino
<input type="radio" name="sexo" value="Masculino">
Feminino
<input type="radio" name="sexo" value="Feminino">

<input type="submit" value="Enviar List">

</form>

<%
response.write request.form("cliente") &"<br>"

response.write request.form("sexo")

%>






























