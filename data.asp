<html>
<title> Data e Funcoes ASP</title>

=======================================
<br><br>

<form method="post" action="data.asp">
    Data: <input type="text" name="data"><br>
    Numero: <input type="text" name="valor"><br><br>
<input type="submit" value="Calcular">    
</form>
<%

    data = request.form("data")
    numero = request.form("valor")

     if data <> "" then

     data = cdate(data)
    %>
   Data: <%=data%> -  <%=data_diasemana(data)%><br>
   Adicao: <%=data+numero%> - <%=data_diasemana(data+numero)%><br>
   Dia da semana: <%=weekday(data)%>

    <%
    end if

    function data_diasemana(data_s)

    dia_s = weekday(cdate(data_s))
    Select Case dia_s
    Case "1"
    dia_s = "Domingo"
    Case "2"
    dia_s = "Segunda"   
    Case "3"
    dia_s = "Terça-feira"
    Case "4"
    dia_s = "Quarta-feira"
    Case "5"
    dia_s = "Quinta-feira"
    Case "6"
    dia_s = "Sexta-feira"
    Case "7"
    dia_s = "Sabado"
    End Select
    response.write dia_s

    End function

%>    
</html>