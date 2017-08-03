<% 
sub SortList(Pid,lev)
Dim rs 
set rs=conn.execute("select * from menu where Pid="&Pid&" order by pl_id asc")
Do While not rs.eof %>
<form action="manage_menu.asp?edit=ok" method="post" name="add">
<tr bgcolor="#ffffff" align="center" style="line-height:26px;">
  <td>
    <%=rs("id")%><input name="id" type="hidden" size="15"  value="<%=rs("id")%>"/>
  </td>
  <td>
    <select name="view">
      <option value="1" <%if rs("view")=1 then%>selected="selected"<%end if%>>显示</option>
      <option value="2" <%if rs("view")=2 then%>selected="selected"<%end if%>>隐藏</option>
    </select>
  </td>
  <td>
    <% if lev=0 then %>
      <input name="title" type="text" class="input_1" id="title" value="<%=rs("title")%>" size="12" maxlength="255"  /> 
	<% else 
     for i=0 to lev 
	 response.Write("&nbsp;&nbsp;")
	 next
	 %>
     |-<input name="title" type="text" class="input_1" id="title" value="<%=rs("title")%>" size="12" maxlength="255" />
    <% end if%>
  </td>
  <td><input name="url" type="text"  id="url" value="<%=rs("url")%>" size="18" maxlength="255" style="width:90%;"/></td>
  <td><select name="open_m">
<option value="_self" <%if rs("open_m")="_self" then%>selected="selected"<%end if%>>原窗口</option>
 <option value="_blank" <%if rs("open_m")="_blank" then%>selected="selected"<%end if%>>新窗口</option>
 </select></td>
  <td><input name="pl_id" type="text" class="input_1" id="pl_id" value="<%=rs("pl_id")%>" size="5" maxlength="4" style="text-align:center;" /></td>
  <td><input type="submit" name="button" id="button2" value="修改"  class="button"/>&nbsp;&nbsp;<input type="button" name="Submit" value="删除" onClick="javascript:if(confirm('确定删除？删除后不可恢复!')){window.location.href='manage_menu.asp?act=del&id=<%=rs("id")%>';}else{history.go(0);}"  class="button" /></td>
</tr>
</form>
<%
call SortList(rs("id"),lev+1)
rs.MoveNext
Loop
rs.close
set rs = nothing
End sub

sub subtree(pid,lev)
  Dim rs
  set rs=conn.execute("select * from menu where Pid="&pid&" order by pl_id asc")
  do while not rs.eof
  %>
  <option value="<%=rs("id")%>">
	<% if lev=0 then %>
	  <%=rs("title")%>
	<% else
	   for i=0 to lev
	   response.Write("&nbsp;")
	   next 
	 %>
     |-<%=rs("title")%>
	 <% end if %>
   </option>
   <% call subtree(rs("id"),lev+1)
	rs.movenext
	loop
	rs.close
	set rs=nothing
end sub
%>

