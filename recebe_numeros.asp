Trabalhando com Números e Operações

<form method="post" action="recebe_numeros.asp">
    Valor1: <input type="text" name="valor1"><br>
    Valor2: <input type="text" name="valor2"><br><br>
    <input type="submit" value="Calcular">
</form>

<%
valor1 = cint(request.form("valor1"))
valor2 = cint(request.form("valor2"))
if valor1 <> "" and valor2 <> "" then

%>
<b>Adicao: </b> <%=valor1+valor2%> <br>
<b>Subtracao: </b> <%=valor1-valor2%> <br>
<b>Multiplicacao: </b> <%=valor1*valor2%> <br>
<b>Divisao: </b> <%=valor1/valor2%> <br>  

<%
End if

%>
<br>
