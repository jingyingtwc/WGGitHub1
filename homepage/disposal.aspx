<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<script language="c#" runat="server">
    
    protected void gvProducts_PageIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected bool isPostcode(String s)
    {
        
        Boolean b=true;
        int i;
        try {
            i = Int32.Parse(s);
        }
        catch(FormatException ex2) 
        {
            Console.WriteLine(ex2.Message);
            b = false;
        }

        return b;
    }

    //protected void findByAddress()
    //{
    //    string text = TextBox1.Text;

    //    switch (type.SelectedValue)
    //    {
    //        case "battery":
    //            dsAccess.SelectCommand = "select * from battery where postcode > " + mminus + " and postcode <" + mplus + ";";
    //            infoimage.ImageUrl = "images/battery.png";
    //            fflabel.Text = "Know more about the battery recycling!";
    //            fflink.NavigateUrl = "batteryff.aspx";
    //            break;
    //        case "can":
    //            dsAccess.SelectCommand = "select * from can where postcode > " + mminus + " and postcode <" + mplus + ";";
    //            infoimage.ImageUrl = "images/can.png";
    //            fflabel.Text = "Know more about the can recycling!";
    //            fflink.NavigateUrl = "canff.aspx";
    //            break;
    //        case "chemical":
    //            dsAccess.SelectCommand = "select * from chemical where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/paint.png";
    //            fflabel.Text = "Know more about the chemical&paint recycling!";
    //            fflink.NavigateUrl = "chemicalff.aspx";
    //            break;
    //        case "clothing":
    //            dsAccess.SelectCommand = "select * from clothing where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/clothe.png";
    //            fflabel.Text = "Know more about the clothing recycling!";
    //            fflink.NavigateUrl = "clothingff.aspx";
    //            break;
    //        case "computer":
    //            dsAccess.SelectCommand = "select * from computer where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/computer.png";
    //            fflabel.Text = "Know more about the computer recycling!";
    //            fflink.NavigateUrl = "computerff.aspx";
    //            break;
    //        case "mobilephone":
    //            dsAccess.SelectCommand = "select * from mobilephone where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/mobilephone.png";
    //            fflabel.Text = "Know more about the mobilephone recycling!";
    //            fflink.NavigateUrl = "phoneff.aspx";
    //            break;
    //        case "TV":
    //            dsAccess.SelectCommand = "select * from tv where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/tv.png";
    //            fflabel.Text = "Know more about the tv recycling!";
    //            fflink.NavigateUrl = "tvff.aspx";
    //            break;
    //        case "whitegood":
    //            dsAccess.SelectCommand = "select * from whitegood where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/whitegood.png";
    //            fflabel.Text = "Know more about the whitegood recycling!";
    //            fflink.NavigateUrl = "whitegoodff.aspx";
    //            break;
    //        default:
    //            break;
    //    }

    //    datagv.DataSource = dsAccess;
    //    datagv.DataBind();
    //}
    

    //protected void findByPostcode()
    //{
    //    string text = TextBox1.Text;
    //    int m = 0;
    //    try
    //    {
    //        m = Int32.Parse(text);
    //    }
    //    catch (FormatException ex)
    //    {
    //        Console.WriteLine(ex.Message);
    //        formatLabel.Text = "Please enter a valid postcode.";
    //    }

    //    int mplus = m + 5;
    //    int mminus = m - 5;



    //    switch (type.SelectedValue)
    //    {
    //        case "battery":
    //            dsAccess.SelectCommand = "select * from battery where postcode > " + mminus + " and postcode <" + mplus + ";";
    //            infoimage.ImageUrl = "images/battery.png";
    //            fflabel.Text = "Know more about the battery recycling!";
    //            fflink.NavigateUrl = "batteryff.aspx";
    //            break;
    //        case "can":
    //            dsAccess.SelectCommand = "select * from can where postcode > " + mminus + " and postcode <" + mplus + ";";
    //            infoimage.ImageUrl = "images/can.png";
    //            fflabel.Text = "Know more about the can recycling!";
    //            fflink.NavigateUrl = "canff.aspx";
    //            break;
    //        case "chemical":
    //            dsAccess.SelectCommand = "select * from chemical where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/paint.png";
    //            fflabel.Text = "Know more about the chemical&paint recycling!";
    //            fflink.NavigateUrl = "chemicalff.aspx";
    //            break;
    //        case "clothing":
    //            dsAccess.SelectCommand = "select * from clothing where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/clothe.png";
    //            fflabel.Text = "Know more about the clothing recycling!";
    //            fflink.NavigateUrl = "clothingff.aspx";
    //            break;
    //        case "computer":
    //            dsAccess.SelectCommand = "select * from computer where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/computer.png";
    //            fflabel.Text = "Know more about the computer recycling!";
    //            fflink.NavigateUrl = "computerff.aspx";
    //            break;
    //        case "mobilephone":
    //            dsAccess.SelectCommand = "select * from mobilephone where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/mobilephone.png";
    //            fflabel.Text = "Know more about the mobilephone recycling!";
    //            fflink.NavigateUrl = "phoneff.aspx";
    //            break;
    //        case "TV":
    //            dsAccess.SelectCommand = "select * from tv where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/tv.png";
    //            fflabel.Text = "Know more about the tv recycling!";
    //            fflink.NavigateUrl = "tvff.aspx";
    //            break;
    //        case "whitegood":
    //            dsAccess.SelectCommand = "select * from whitegood where postcode > " + mminus + " and postcode <" + mplus + ";";

    //            infoimage.ImageUrl = "images/whitegood.png";
    //            fflabel.Text = "Know more about the whitegood recycling!";
    //            fflink.NavigateUrl = "whitegoodff.aspx";
    //            break;
    //        default:
    //            break;
    //    }

    //    datagv.DataSource = dsAccess;
    //    datagv.DataBind();


 
    //}
    
    protected void find(object sender, EventArgs e)
    {
        formatLabel.Text = null;
        
        string text = TextBox1.Text;
        int m = 0;
        try
        {
            m = Int32.Parse(text);
        }
        catch (FormatException ex)
        {
            Console.WriteLine(ex.Message);
            formatLabel.Text = "Please enter a valid postcode.";
        }

        int mplus = m + 5;
        int mminus = m - 5;



        switch (type.SelectedValue)
        {
            case "battery":
                dsAccess.SelectCommand = "select * from battery where postcode > " + mminus + " and postcode <" + mplus + ";";
                infoimage.ImageUrl = "images/battery.png";
                fflabel.Text = "Know more about the battery recycling!";
                fflink.NavigateUrl = "batteryff.aspx";
                break;
            case "can":
                dsAccess.SelectCommand = "select * from can where postcode > " + mminus + " and postcode <" + mplus + ";";
                infoimage.ImageUrl = "images/can.png";
                fflabel.Text = "Know more about the can recycling!";
                fflink.NavigateUrl = "canff.aspx";
                break;
            case "chemical":
                dsAccess.SelectCommand = "select * from chemical where postcode > " + mminus + " and postcode <" + mplus + ";";

                infoimage.ImageUrl = "images/paint.png";
                fflabel.Text = "Know more about the chemical&paint recycling!";
                fflink.NavigateUrl = "chemicalff.aspx";
                break;
            case "clothing":
                dsAccess.SelectCommand = "select * from clothing where postcode > " + mminus + " and postcode <" + mplus + ";";

                infoimage.ImageUrl = "images/clothe.png";
                fflabel.Text = "Know more about the clothing recycling!";
                fflink.NavigateUrl = "clothingff.aspx";
                break;
            case "computer":
                dsAccess.SelectCommand = "select * from computer where postcode > " + mminus + " and postcode <" + mplus + ";";

                infoimage.ImageUrl = "images/computer.png";
                fflabel.Text = "Know more about the computer recycling!";
                fflink.NavigateUrl = "computerff.aspx";
                break;
            case "mobilephone":
                dsAccess.SelectCommand = "select * from mobilephone where postcode > " + mminus + " and postcode <" + mplus + ";";

                infoimage.ImageUrl = "images/mobilephone.png";
                fflabel.Text = "Know more about the mobilephone recycling!";
                fflink.NavigateUrl = "phoneff.aspx";
                break;
            case "TV":
                dsAccess.SelectCommand = "select * from tv where postcode > " + mminus + " and postcode <" + mplus + ";";

                infoimage.ImageUrl = "images/tv.png";
                fflabel.Text = "Know more about the tv recycling!";
                fflink.NavigateUrl = "tvff.aspx";
                break;
            case "whitegood":
                dsAccess.SelectCommand = "select * from whitegood where postcode > " + mminus + " and postcode <" + mplus + ";";

                infoimage.ImageUrl = "images/whitegood.png";
                fflabel.Text = "Know more about the whitegood recycling!";
                fflink.NavigateUrl = "whitegoodff.aspx";
                break;
            default:
                break;
        }

        datagv.DataSource = dsAccess;
        datagv.DataBind();







    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <!-- data source -->
    <asp:AccessDataSource runat="server" ID="dsAccess"
        DataFile="disposal.mdb" />

        <div style=" text-align:center; background-color: white">

<%--    <div style="width: 100%; background-color: white; text-align: center; position: absolute; top: 0px;">--%>

        <!-- header -->
        <div style="align-content: center; font-size: x-large">
            <p></p>
            <p></p>

            <p style="color: blueviolet; font-size: 3em;">Hi kid! </p>
            <p style="color: blueviolet; font-size: 3em;">You can find out your nearest disposal sites here!</p>
        </div>


        <!-- textbox area -->
        <div style="width: 800px; margin: auto; text-align: center">
            <table>
                <tr>
                    <td>
                        <div style="height: 100px; width: 200px; text-align: center; vertical-align: middle">
                            <asp:Label runat="server" Text="Enter your postcode and select what kind of waste you want to dispose!" Font-Size="Large" ForeColor="#6600FF" />
                        </div>
                    </td>
                    <td>
                        <div style="height: 100px; width: 200px; text-align: center; vertical-align: middle">
                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="150px" ></asp:TextBox>
                            <asp:DropDownList ID="type" runat="server" Font-Size="Large" Width="150px">
                                <asp:ListItem id="clothing" runat="server" Selected="True" Value="clothing" />
                                <asp:ListItem id="chemical" runat="server" Value="chemical" />
                                <asp:ListItem id="battery" runat="server" Value="battery" />
                                <asp:ListItem id="computer" runat="server" Value="computer" />
                                <asp:ListItem id="mobilephone" runat="server" Value="mobilephone" />
                                <asp:ListItem id="TV" runat="server" Value="TV" />
                                <asp:ListItem id="whitegood" runat="server" Value="whitegood" />
                                <asp:ListItem id="can" runat="server" Value="can" />
                            </asp:DropDownList>
                        </div>
                    </td>
                    <td>
                        <div style="height: 100px; width: 200px; text-align: center; vertical-align: middle">
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="find" Height="50%"/>
                        </div>
                    </td>
                </tr>
            </table>
        </div>


        <!-- data table for chemical -->
        <div style="margin: auto; text-align: center; background-color: white; width: 800px">
            <asp:Label ID="formatLabel" runat="server" />
            <asp:GridView ID="datagv" runat="server"
                AutoGenerateColumns="false"
                Font-Name="arial"
                Font-Size="14pt"
                HeaderStyle-BackColor="#dcdcdc"
                HeaderStyle-ForeColor="blue"
                EmptyDataText="Sorry. It seems that we do not have data of your area now.">

                <Columns>
                    <asp:BoundField DataField="Retailer" HeaderText="Retailer"
                        SortExpression="Retailer" />
                    <asp:BoundField DataField="SiteSuburb" HeaderText="Suburb"
                        SortExpression="SiteSuburb" />
                    <asp:BoundField DataField="SiteAddress" HeaderText="Address"
                        SortExpression="SiteAddress" />
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode"
                        SortExpression="Postcode" />

                </Columns>

            </asp:GridView>
            <br />

        </div>


        <!-- lower part buttons -->
        <div style="text-align: center; align-content: center; ">
            <table style="width: 800px; height: 300px; display: inline-block;">
                <tr>
                    <td style="width: 200px; height: 300px">
                        <table>
                            <tr>
                                <td><a href="index.aspx">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" />
                                    <asp:Label ID="Label2" runat="server" Text="Back"></asp:Label>
                                </a></td>
                            </tr>

                        </table>
                    </td>

                    <td style="text-align: center; width: 400px; height: 200px;">
                        <asp:Image ID="infoimage" runat="server" ImageUrl="images/lol.png" />
                    </td>

                    <td style="width: 200px; height: 300px">
                        <table style="text-align: right">
                            <tr>
                                <td>
                                    <asp:HyperLink ID="fflink" runat="server" NavigateUrl="~/clothingff.aspx">
                                        <asp:Label ID="fflabel" runat="server" Text="Know more about the clothing recycling!" /><br/>
                                        <asp:Image ID="Image2" runat="server" ImageUrl="images/lion.png" />
                                    </asp:HyperLink>
                                    
                            </tr>
                            <%--<tr>
                                <td>
                                    <asp:Image runat="server" ImageUrl="images/lion.png" />
                                </td>
                            </tr>--%>
                        </table>

                    </td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>



