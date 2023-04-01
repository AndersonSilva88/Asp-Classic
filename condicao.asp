<%
hora = hour(now)

if hora <= 12 then
    response.write "<p>Bom dia</p>"
elseif hora >= 12 and hora <= 18 then
    response.write "<p>Boa tarde</p>"
else
    response.write "<p>Boa noite</p>"
end if    
%>