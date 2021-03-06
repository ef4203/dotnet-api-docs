<!-- <Snippet1> -->

<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
 
    ' The value path for a menu item is a delimited list
    ' of menu text values that form a path from the root 
    ' menu item to the current menu item.

    ' Declare the value path to the Classical menu item using
    ' the delimiter character specified in the PathSeparator
    ' property. In this example, the delimiter character is a
    ' comma.
    Dim valuePath As String = "Home,Music,Classical"
    
    ' Use the FindItem method to get the Classical menu item using
    ' its value path.
    Dim item As MenuItem = NavigationMenu.FindItem(valuePath)
    
    ' Indicate whether the menu item was found.
    If Not item Is Nothing Then
    
      Message.Text = item.Text & " menu item found at depth " & _
        item.Depth.ToString() & "."
    
    Else
    
      Message.Text = "Menu item not found."
    
    End If
      
  End Sub
  
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>Menu PathSeparator and FindItem Example</title>
</head>
<body>
    <form id="form1" runat="server">
    
      <h3>Menu PathSeparator and FindItem Example</h3>
    
      <!-- Use the PathSeparator property to  -->
      <!-- change the delimiter character for -->
      <!-- the value path of a menu item to a -->
      <!-- comma (,).                         -->
      <asp:menu id="NavigationMenu"
        staticdisplaylevels="2"
        staticsubmenuindent="10" 
        orientation="Vertical"
        pathseparator="," 
        runat="server">
      
        <items>
          <asp:menuitem text="Home"
            tooltip="Home">
            <asp:menuitem text="Music"
              tooltip="Music">
              <asp:menuitem text="Classical"
                tooltip="Classical"/>
              <asp:menuitem text="Rock"
                tooltip="Rock"/>
              <asp:menuitem text="Jazz"
                tooltip="Jazz"/>
            </asp:menuitem>
            <asp:menuitem text="Movies"
              tooltip="Movies">
              <asp:menuitem text="Action"
                tooltip="Action"/>
              <asp:menuitem text="Drama"
                tooltip="Drama"/>
              <asp:menuitem text="Musical"
                tooltip="Musical"/>
            </asp:menuitem>
          </asp:menuitem>
        </items>
      
      </asp:menu>
      
      <hr/>
      
      <asp:label id="Message" 
        runat="server"/>

    </form>
  </body>
</html>

<!-- </Snippet1> -->
