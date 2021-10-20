<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibManagement.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" height="150px" width="100px" src="book_inventory/books1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server"></asp:FileUpload>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="English" Value="English"/>                                   
                                        <asp:ListItem Text="French" Value="French"/>                                    
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"/>                                   
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"/>                                    
                                    </asp:DropDownList>
                                </div>
                            </div>
                            

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="a1" Value="a1"/>                                   
                                        <asp:ListItem Text="a2" Value="a2"/>                                    
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Drama" Value="Drama"/>  
                                        <asp:ListItem Text="Action" Value="Action"/>  
                                        <asp:ListItem Text="Horror" Value="Horror"/>  
                                        <asp:ListItem Text="Crime" Value="Crime"/>  
                                        <asp:ListItem Text="Fantasy" Value="Fantasy"/>  

                                    </asp:ListBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            

                            <div class="col-md-4">
                                <label>Book Cost (per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Cost (per unit)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            

                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-12">
                                <label>Book description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Button3" runat="server" Text="Add" OnClick="Button3_Click" />
                            </div>

                            <div class="col-4">
                                <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button1" runat="server" Text="Update" />
                            </div>

                            <div class="col-4">
                                <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button2" runat="server" Text="Delete" />
                            </div>
                        </div>

                        </div>
                        
                </div>

                <a href="homepage.aspx">Back to Home</a><br /><br />

            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="book_id" HeaderText="Book ID" ReadOnly="True" SortExpression="book_id" />
                                            <asp:BoundField DataField="book_name" HeaderText="Book name" SortExpression="book_name" />
                                            <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                                            <asp:BoundField DataField="author_name" HeaderText="Author name" SortExpression="author_name" />
                                            <asp:BoundField DataField="publisher_name" HeaderText="Publisher name" SortExpression="publisher_name" />
                                            <asp:BoundField DataField="publish_date" HeaderText="Publish date" SortExpression="publish_date" />
                                            <asp:BoundField DataField="language" HeaderText="Language" SortExpression="language" />
                                            <asp:BoundField DataField="edition" HeaderText="Edition" SortExpression="edition" />
                                            <asp:BoundField DataField="book_cost" HeaderText="Book cost" SortExpression="book_cost" />
                                            <asp:BoundField DataField="no_of_pages" HeaderText="No of pages" SortExpression="no_of_pages" />
                                            <asp:BoundField DataField="book_description" HeaderText="Book description" SortExpression="book_description" />
                                            <asp:BoundField DataField="actual_stock" HeaderText="Actual stock" SortExpression="actual_stock" />
                                            <asp:BoundField DataField="current_stock" HeaderText="Current stock" SortExpression="current_stock" />
                                            <asp:BoundField DataField="book_img_link" HeaderText="Book image link" SortExpression="book_img_link" />
                                        </Columns>
                                    </asp:GridView>
                                </center>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>

</asp:Content>
