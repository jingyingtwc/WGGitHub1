<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <link rel="stylesheet" href="assets/css/main.css" />
    <%--<body>--%>
    <script language="C#" runat="server">
        
        private void Submit_click(Object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            udb.InsertParameters[0].DefaultValue = accountTextBox.Text;
            udb.InsertParameters[1].DefaultValue = passwordTextBox.Text;
            udb.Insert();


            feedback.Text =  "Your account: " + accountTextBox.Text + "<br/>"
                           + "Password: " + passwordTextBox.Text + "<br/>"
                           + "Thanks for registration";


        }



    </script>

    <asp:AccessDataSource runat="server"
        DataFile="users.mdb"
        ID="udb"
        InsertCommand="INSERT INTO [accounts] ( [username] , [password]) VALUES (?,?)"
        SelectCommand="SELECT [id], [username], [password] FROM [accounts]"
        UpdateCommand="UPDATE [accounts] SET [username] = ?, [Password] = ? WHERE [id] = ?">


        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>

        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>

        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>

    <asp:Panel ID="Panel" align="center" runat="server"  ToolTip="Please enter your Information,thanks Y^_^Y" BackColor="White">

        <h3>REGISTER</h3>

            <div  style="margin: auto;
                         width: 60%;
                         border: 3px solid #3fc367;
                         padding: 10px;" >
            <table >
            <InsertItemTemplate> 
             
                <%--account--%>
                <tr>
                    <td class="regtext" style="color:#3fc367">Your nickname: </td>
                    <td><asp:TextBox ID="accountTextBox" runat="server" CssClass="textBox" Text='<%# Bind("account") %>'></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator id="accountValidator" runat="server"  ErrorMessage= "Please enter a account!!!" ControlToValidate="accountTextBox" CssClass="Validator" />
                    </td>
                    <td>
                    </td>
                </tr>
                
                <%--password--%>
                <tr>
                    <td class="regtext" style="color:#3fc367">Password: </td>
                    <td><asp:TextBox ID="passwordTextBox" runat="server" CssClass="textBox" TextMode="Password" Text='<%# Bind("password") %>'></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ErrorMessage="Please enter a password!!!" ControlToValidate="passwordTextBox"/>
                    </td>
                    <td>
                    </td>
                </tr>
               
                 <%--confirm pw--%>
                <tr>
                    <td class="regtext" style="color:#3fc367">Confirm Password: </td>
                    <td><asp:TextBox ID="confirmPasswordTextBox" runat="server" CssClass="textBox" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="confirmPasswordValidator" runat="server" ErrorMessage="Please enter a confirm password!!!" ControlToValidate="confirmPasswordTextBox" />
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CompareValidator ID="passwordCompareValidator" runat="server" ControlToValidate="passwordTextBox" ControlToCompare="confirmPasswordTextBox" ErrorMessage="Please enter the same value for the Password!!!" />
                    </td>
                    <td/>
                </tr>
                
                <%--button--%>
                <tr>
                    <td> </td>
                    <td><asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="Submit_click" CssClass="textBox" CommandName="Insert"/>   </td>
                </tr>

                <tr>
                    <td>
                    </td>
                    <td>
                                                <asp:Label class="regtext" ID="feedback" runat="server"/>

                    </td>    
                </tr>
            </table>
            
            </InsertItemTemplate> 

            </div>             
        <div>　　　   　 </div>
        <%--</>--%>
        <p/>
    </asp:Panel>


</asp:Content>
