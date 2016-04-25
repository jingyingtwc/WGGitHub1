<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<script language="c#" runat="server">
    
    protected void gvProducts_PageIndexChanged(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<asp:accessdatasource runat="server" id="dsAccess"
    datafile="disposal.mdb"
    selectcommand="SELECT * FROM Disposalsites" />


    <div id="disposalsitescontent" style="text-align:center; background-color:white">
        <h3>Disposal Sites</h3>
    <%--<form runat="server">--%>
      <asp:gridview ID="gvProducts" runat="server"
        DataSourceID="dsAccess" 
        allowpaging="true" 
        AllowSorting="true"
        AutoGenerateColumns="false"
        PageSize="4" 
        Font-Name="arial"
        Font-Size="8pt"
        OnPageIndexChanged="gvProducts_PageIndexChanged" 
        HeaderStyle-BackColor="#dcdcdc"
        HeaderStyle-ForeColor="blue">

          <%--<PagerStyle Mode="NumericPages"
            HorizontalAlign="Right" PageButtonCount="3"
            BackColor="#999999" >
        </PagerStyle>--%>

          <Columns>
        <asp:BoundField  DataField="ID" HeaderText="ID"
          SortExpression="ID" />
        <asp:BoundField  DataField="SiteName" HeaderText="Name"
          SortExpression="SiteName" />
        <asp:BoundField  DataField="SiteSuburb" HeaderText="Suburb"
          SortExpression="SiteSuburb" />
        <asp:BoundField  DataField="SiteAddress" HeaderText="Address"
          SortExpression="SiteAddress" />
        <asp:BoundField  DataField="SiteZip"  HeaderText="Zip Coda" 
          SortExpression="SiteZip" />
        
      </Columns>

          </asp:gridview>
        <br/>	<asp:label id="lblPagingInfo" runat="server" />

    <%--</form>--%>
    
    </div>


</asp:Content>



