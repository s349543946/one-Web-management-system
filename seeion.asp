<%if session("admin")<>"" then%>
<%
else
Response.Write "<script>alert('���ã���ҳ���ӳ�ʱ�����¼��������');window.location.href='../index.asp';</script>" 
response.end
end if
%>

