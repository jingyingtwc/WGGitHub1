<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<script language="c#" runat="server">
    
    protected void gvProducts_PageIndexChanged(object sender, EventArgs e)
    {

    }

    protected bool isPostcode(String s)
    {

        Boolean b = true;
        int i;
        try
        {
            i = Int32.Parse(s);
            if (i < 1000 || i > 9999)
            {
                b = false;
            }
        }
        catch (FormatException ex2)
        {
            Console.WriteLine(ex2.Message);
            b = false;
        }
        return b;
    }
    protected bool isNumberT(String s)
    {

        Boolean b = true;
        int i;
        try
        {
            i = Int32.Parse(s);
        }
        catch (FormatException ex2)
        {
            Console.WriteLine(ex2.Message);
            b = false;
        }
        return b;
    }

    protected int toNumberT(String s)
    {
        int i=0;
        try
        {
            i = Int32.Parse(s);
        }
        catch (FormatException ex2)
        {
            
        } 
        return i;
    }

    void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (isNumberT(args.Value))
        {
            if (toNumberT(args.Value) < 1000 || toNumberT(args.Value) > 9999)
            { args.IsValid = false; }
            else
                args.IsValid = true;
        }
        else
        args.IsValid=true;
    }

    protected void findByPostcode()
    {
        string text = TextBox1.Text.Trim(' ');
        int m = 0;
        try
        {
            m = Int32.Parse(text);
        }
        catch (FormatException ex)
        {
            Console.WriteLine(ex.Message);

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

    protected void findByCity()
    {
        string text = TextBox1.Text.Trim(' ');

        switch (type.SelectedValue)
        {
            case "battery":
                dsAccess.SelectCommand = "select * from battery where SiteSuburb LIKE '%" + text + "%';";
                infoimage.ImageUrl = "images/battery.png";
                fflabel.Text = "Know more about the battery recycling!";
                fflink.NavigateUrl = "batteryff.aspx";
                break;
            case "can":
                dsAccess.SelectCommand = "select * from can where SiteSuburb LIKE '%" + text + "%';";
                infoimage.ImageUrl = "images/can.png";
                fflabel.Text = "Know more about the can recycling!";
                fflink.NavigateUrl = "canff.aspx";
                break;
            case "chemical":
                dsAccess.SelectCommand = "select * from chemical where SiteSuburb LIKE '%" + text + "%';";

                infoimage.ImageUrl = "images/paint.png";
                fflabel.Text = "Know more about the chemical&paint recycling!";
                fflink.NavigateUrl = "chemicalff.aspx";
                break;
            case "clothing":
                dsAccess.SelectCommand = "select * from clothing where SiteSuburb LIKE '%" + text + "%';";

                infoimage.ImageUrl = "images/clothe.png";
                fflabel.Text = "Know more about the clothing recycling!";
                fflink.NavigateUrl = "clothingff.aspx";
                break;
            case "computer":
                dsAccess.SelectCommand = "select * from computer where SiteSuburb LIKE '%" + text + "%';";

                infoimage.ImageUrl = "images/computer.png";
                fflabel.Text = "Know more about the computer recycling!";
                fflink.NavigateUrl = "computerff.aspx";
                break;
            case "mobilephone":
                dsAccess.SelectCommand = "select * from mobilephone where SiteSuburb LIKE '%" + text + "%';";

                infoimage.ImageUrl = "images/mobilephone.png";
                fflabel.Text = "Know more about the mobilephone recycling!";
                fflink.NavigateUrl = "phoneff.aspx";
                break;
            case "TV":
                dsAccess.SelectCommand = "select * from tv where SiteSuburb LIKE '%" + text + "%';";

                infoimage.ImageUrl = "images/tv.png";
                fflabel.Text = "Know more about the tv recycling!";
                fflink.NavigateUrl = "tvff.aspx";
                break;
            case "whitegood":
                dsAccess.SelectCommand = "select * from whitegood where SiteSuburb LIKE '%" + text + "%';";

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




    protected void find(object sender, EventArgs e)
    {

        datagv.Visible = false;


        string text = TextBox1.Text.Trim(' ');

        if (isNumberT(text))
        {
            if (toNumberT(text) < 1000 || toNumberT(text) > 9999)
            {
            }
            else
            {
                findByPostcode();
                datagv.Visible = true;
            }
        }
        else 
        { 
            findByCity(); 
            datagv.Visible = true; 
        }


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

    <div style="text-align: center; position: relative; top: 0; background-color: white; min-width: 1150px">

        <!-- header -->
        <div style="display: inline-block">
            <p style="font-size: 3em;">You can find out your nearest disposal sites here!</p>
            <p style="font-size: 3em;">So you know next time where to dispose.</p>
        </div>
        <br />


        <!-- textbox area -->
        <div style="display: inline-block; position: relative; top: 0; text-align: center; width: 1150px; height: 150px">


            <div style="display: inline-block; position: absolute; top: 0; left: 0; font-size: 3em; height: 150px; width: 300px; color: goldenrod">
                Your postcode
                <br />
                or city:
            </div>

            <div style="display: inline-block; position: absolute; top: 0; left: 345px; height: 150px">
                <asp:TextBox Style="display: block;" ID="TextBox1" runat="server" Font-Size="40pt" Width="600px" Height="55px" Font-Bold="True" BackColor="#3FC367" BorderWidth="2px" BorderColor="Black"></asp:TextBox>
                <asp:DropDownList Style="display: block" ID="type" runat="server" Font-Size="40pt" Width="600px" Height="55px" BackColor="#3FC367" Font-Bold="True">
                    <asp:ListItem id="clothing" runat="server" Selected="True" Value="clothing" Text="Clothing&Textile" />
                    <asp:ListItem id="chemical" runat="server" Value="chemical" Text="Chimical&Painting" />
                    <asp:ListItem id="battery" runat="server" Value="battery" Text="Battery" />
                    <asp:ListItem id="computer" runat="server" Value="computer" Text="Computer" />
                    <asp:ListItem id="mobilephone" runat="server" Value="mobilephone" />
                    <asp:ListItem id="TV" runat="server" Value="TV" Text="TV" />
                    <asp:ListItem id="whitegood" runat="server" Value="whitegood" Text="White Good" />
                    <asp:ListItem id="can" runat="server" Value="can" Text="Aluminum can" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="va1" runat="server" Style="font-size: 2em" ErrorMessage="Please enter a postcode or a city." ControlToValidate="TextBox1" />
                <%--<asp:RegularExpressionValidator ID="va2" runat="server" Style="font-size: 2em" ControlToValidate="TextBox1" ValidationExpression="\d\d\d\d"
                    ErrorMessage="Please enter a valid postcode" Display="Dynamic" />--%>
                <asp:CustomValidator
                    ID="validator"
                    runat="server"
                    ControlToValidate="TextBox1"
                    Text="Please enter a valid postcode or city."
                    OnServerValidate="CustomValidator1_ServerValidate">
        </asp:CustomValidator>
            </div>
            <div style="display: inline-block; position: absolute; top: 0; right: 0; height: 150px">
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="find" Height="110" Width="150" Font-Size="2.9em" />
            </div>



        </div>

        <div style="display: inline-block">
            <asp:Label runat="server" ID="emprylabel" Visible="false" />
            <asp:GridView ID="datagv" runat="server"
                AllowPaging="false"
                AllowSorting="false"
                AutoGenerateColumns="false"
                PageSize="4"
                Font-Name="arial"
                Font-Size="24pt"
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
            <asp:Label ID="lblPagingInfo" runat="server" />
        </div>
        <br />


        <!-- lowerpart buttons -->
        <div style="position: relative; top: 0; left: 0; margin: auto; width: 1050px; height: 190px; text-align: center">
            <div style="position: absolute; left: 0; top: 33px">
                <a href="index.aspx">
                    <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></a>
            </div>
            <div style="display: inline">
                <asp:Image ID="infoimage" runat="server" ImageUrl="images/clothe.png" Height="190px" />
            </div>
            <div style="position: absolute; right: 0; top: 13px">
                <asp:HyperLink ID="fflink" runat="server" NavigateUrl="~/clothingff.aspx">
                    <table style="display: inline">
                        <tr>
                            <td>
                                <asp:Label ID="fflabel" runat="server" Text="Know more about the clothing recycling!" Style="text-decoration: none;" Font-Size="1.3em" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" ImageUrl="images/lion.png" /></td>
                        </tr>
                    </table>
                </asp:HyperLink>
            </div>


        </div>

    </div>


</asp:Content>



