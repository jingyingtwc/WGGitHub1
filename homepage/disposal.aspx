<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<script language="c#" runat="server">
    
    protected void gvProducts_PageIndexChanged(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <!-- data source -->
<asp:accessdatasource runat="server" id="dsAccess"
    datafile="disposal.mdb"
    selectcommand="SELECT * FROM Disposalsites" />


    <div style="width:1904px;height:1055px;background-color:white;text-align:center;margin-top:0px">

    <!-- header -->
    <div style="align-content:center;font-size:xx-large">
        <p>　　</p>
        <p>　　</p>

        <p> Hi kid! </p> 
        <p> Here is your nearst disposal sites.</p>
    </div>


    <!-- data table -->
    <div id="disposalsitescontent" style="text-align:center; background-color:white;width:800px">
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

    </div>


        <!-- lower part buttons -->
        <table style="align-content:flex-end">
            <tr>
                <td>
                    <table>
                        <tr>
                            <td><a href="index.aspx">
                                <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" />
                                <asp:Label ID="Label2" runat="server" Text="Back"></asp:Label>
                            </a></td>
                        </tr>
                        <tr>
                            <td><a href="search.aspx">
                                <asp:Image ID="Image4" runat="server" ImageUrl="images/search.png" />
                                <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
                            </a></td>
                        </tr>
                    </table>
                </td>

                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="images/battery.png" />
                </td>

                <td>
                    <table>
                        <tr>
                            <td>
                                <a href="info.aspx">
                            <asp:Label runat="server" Text="Know more about the battery recycling!" />
                               </a> </td>
                        </tr>
                        <tr>
                            <td>
                            <asp:Image runat="server" ImageUrl="images/lion.png" />
                                </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>

    </div>


</asp:Content>



