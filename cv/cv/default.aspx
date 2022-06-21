<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="cv.WebForm1" %>

<
<!DOCTYPE html>
<html>
<head>
    <title>YAKUP AKKAYA=WEB TASARIM=</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Delightful Profile template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script src="web/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- font-awesome-icons -->
    <link href="web/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="web/css/lightcase.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="web/css/easy-responsive-tabs.css " />
    <link href="//fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
<body>
    <div class="main">
        <asp:Repeater ID="RepeaterADSOYAD" runat="server">
            <ItemTemplate>
                <h1><%#Eval("AdSoyad")%></h1>
            </ItemTemplate>
        </asp:Repeater>

        <div class="w3_agile_main_grids">
            <div class="w3layouts_main_grid_left">
                <div class="w3_main_grid_left_grid">
                    <asp:Repeater ID="RepeaterAdSoyad2" runat="server">
                        <ItemTemplate>
                            <h2><%#Eval("AdSoyad")%></h2>
                            <p><%#Eval("İsTanımı")%></p>

                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="w3l_figure">
                        <img src="web/images/pr.jpg" alt=" " />
                    </div>
                    <ul class="agileinfo_social_icons">
                        <li><a href="https://github.com/ykakkaya" class="w3_agileits_facebook"><i class="fa fa-github" aria-hidden="true"></i></a></li>
                        <li><a href="https://www.linkedin.com/in/yakup-akkaya-109ba2228/" class="wthree_twitter"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="agileinfo_google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="w3layouts_main_grid_right">
                <div class="w3ls_main_grid_right_grid">
                    <div id="parentHorizontalTab">

                        <ul class="resp-tabs-list hor_1">

                            <asp:Repeater ID="RepeaterMENU" runat="server">
                                <ItemTemplate>
                                    <li><i class="fa fa-user" aria-hidden="true"></i><%#Eval("MENU")%> </li>
                                </ItemTemplate>

                            </asp:Repeater>
                        </ul>
                        <div class="resp-tabs-container hor_1">
                            <div class="agileits_main_grid_right_grid">
                                <asp:Repeater ID="RepeaterAcıklama" runat="server">
                                    <ItemTemplate>

                                        <p><%#Eval("AnasayfaAcıklama") %></p>
                                        <br />
                                        <p><%#Eval("AnasayfaAcıklama2") %></p>

                                    </ItemTemplate>
                                </asp:Repeater>

                                <div class="wthree_tab_grid_sub">
                                    <div class="wthree_tab_grid_sub_left">
                                        <h5>%100</h5>
                                        <p>Memnuniyet</p>
                                    </div>
                                    <div class="wthree_tab_grid_sub_left">
                                        <h5>%100</h5>
                                        <p>Güven</p>
                                    </div>
                                    <div class="wthree_tab_grid_sub_left">
                                        <h5>%100</h5>
                                        <p>Düzgün İletişim</p>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="agileits_skills">
                                    <h3>KULLANDIĞIM TEKNOLOJİLER</h3>
                                    <div class="w3_agileits_skills_grid">
                                        <ul>
                                            <asp:Repeater ID="RepeaterYetenek" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <label><%#Eval("Yetenekler") %></label>
                                                        <span></span><%#Eval("YetenekOranı")+"%" %>

                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="wthree_main_grid_right_grid">
                                <h3>ÇALIŞMALARIMDAN BAZILARI</h3>
                                <div class="w3_agileits_main_grid_work_grids">
                                    <asp:Repeater ID="RepeaterResim" runat="server">
                                        <ItemTemplate>

                                            <div class="agile_main_grid_work_gridl">

                                                <a href='<%#Eval("ResimYolu") %>' class="showcase" data-rel="lightcase:myCollection:slideshow" title="Easy Profile">
                                                    <img src='<%#Eval("ResimYolu") %>' alt=" " />
                                                </a>
                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div class="clear"></div>
                                </div>
                            </div>
                            <div class="wthree_main_grid_right_grid">
                                <h3>İLETİŞİM</h3>
                                <form action="#" method="post" runat="server">
                                    <div class="agileits_w3layouts_contact_left">
                                        <asp:TextBox ID="TextBoxName" runat="server" placeHolder="ADINIZ" required=""></asp:TextBox><br />
                                        <asp:TextBox ID="TextBoxEmail" runat="server" placeHolder="E-mail" required=""></asp:TextBox><br />
                                        <asp:TextBox ID="TextBoxMessage" runat="server" placeHolder="MESAJINIZ" required="" Height="50px" TextMode="MultiLine"></asp:TextBox>
                                        

                                    </div>

                                    <div class="agileits_w3layouts_contact_right">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6225.60130250218!2d35.4832426!3d38.7223856!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc647d1b09ddad131!2sCumhuriyet%20Meydan%C4%B1!5e0!3m2!1str!2str!4v1655499312557!5m2!1str!2str" width="600" height="150" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="agile_submit">
                                        <asp:Button ID="ButtonGonder" runat="server" Text="GÖNDER" OnClick="ButtonGonder_Click"  />
                                    </div>
                                </form>
                                <div class="wthree_tab_grid">
                                    <ul class="wthree_tab_grid_list">
                                        <li><i class="fa fa-mobile" aria-hidden="true"></i></li>
                                        <li>TELEFON<span>.........</span></li>
                                    </ul>
                                    <ul class="wthree_tab_grid_list">
                                        <li><i class="fa fa-envelope-o" aria-hidden="true"></i></li>
                                        <li>Mail <span><a href="mailto:ykakkaya@hotmail.com">ykakkaya@hotmail.com</a></span></li>
                                    </ul>
                                    <ul class="wthree_tab_grid_list">
                                        <li><i class="fa fa-map-marker" aria-hidden="true"></i></li>
                                        <li>Adres<span>Kayseri/Merkez</span></li>
                                    </ul>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="agileits_copyright">
            <p>© 2022 All rights reserved | Design by <a href="http://ykakkaya.com/">ykakkaya</a></p>
        </div>
    </div>
    <script src="web/js/easyResponsiveTabs.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Horizontal Tab
            $('#parentHorizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true, // 100% fit in a container
                tabidentify: 'hor_1', // The tab groups identifier
                activate: function (event) { // Callback function if tab is switched
                    var $tab = $(this);
                    var $info = $('#nested-tabInfo');
                    var $name = $('span', $info);
                    $name.text($tab.text());
                    $info.show();
                }
            });
        });
    </script>
    <!-- light-case -->
    <script src="web/js/lightcase.js"></script>
    <script src="web/js/jquery.events.touch.js"></script>
    <script>
        $('.showcase').lightcase();
    </script>
    <!-- //light-case -->

</body>
</html>
