﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="EShop.CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ANRUI International | login</title>
    <link href="css/gouwuchexin.css" rel='stylesheet' type='text/css' />
    <link href="css/grid.css" rel='stylesheet' type='text/css' />
    <script src="js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager runat="server" ID="pgm1"></f:PageManager>
        <!---start-wrap---->
        <!---start-header---->
        <div class="header">
            <div class="top-header">
                <div class="wrap">
                    <div class="footer-left">
                        <ul>
                            <li><a href="index.ashx">首页</a> <span></span></li>
                            <li><a href="male.ashx">男士</a> <span></span></li>
                            <li><a href="femal.ashx">女生</a> <span></span></li>
                            <li><a href="dzcp.html">电子产品</a> <span></span></li>
                            <li><a href="ssp.html">奢饰品</a> <span></span></li>
                            <li><a href="pinpai.html">品牌</a></li>
                            <div class="clear"></div>
                        </ul>
                    </div>

                    <div class="top-header-right">
                        <ul>
                            <li><a href="aspx/login.aspx">登录</a><span> </span></li>
                            <li><a href="aspx/register.aspx">注册</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

            <div class="clear"></div>

            <section id="main" class="entire_width">

                <div class="iconbox-wrap"  id="DivAddress">
                    <p>我的收货地址</p>

                    <asp:Repeater runat="server" ID="rptAddress">
                        <ItemTemplate>
                            <div class="one-fourth">
                                <div class="iconbox">
                                    <a href="javascript:void(0)" onclick="SelectAddress(this)">
                                        <h3 class="iconbox-title"><span class="iconbox-icon"></span><%#Eval("Name") %></h3>
                                        <p><%#Eval("Address") %></p>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>



                <div class="container_12">
                    <div class="grid_12">
                        <h1 class="page_title">商品购物车</h1>

                        <table class="cart_product">
                            <tr>
                                <th class="images"></th>
                                <th class="bg name">品牌名称</th>

                                <th class="bg price">商品单价(元)</th>
                                <th class="qty">数量</th>
                                <th class="bg subtotal">小计(元)</th>
                                <th class="close"></th>
                                <th class="edit"></th>
                            </tr>
                            <asp:Repeater runat="server" ID="rptCart">
                                <ItemTemplate>
                                    <tr>
                                        <td class="images"><a href="sp.html">
                                            <img src="<%#Eval("Img") %>" alt="Product 6"></a></td>
                                        <td class="bg name"><%#Eval("ProName") %><br />
                                            <%#Eval("des") %></td>

                                        <td class="bg price"><%#Eval("Price") %></td>
                                        <td><%#Eval("Quantity") %></td>
                                        <td class="bg subtotal">$<%#Convert.ToDecimal( Eval("Price")) * Convert.ToDecimal( Eval("Quantity")) %></td>
                                        <td class="close"><a title="close" class="close" href="#"></a></td>
                                        <td class="edit"><a title="Edit" href="#">删除</a></td>
                                    </tr>

                                </ItemTemplate>
                            </asp:Repeater>

                            <tr>
                                <td colspan="7" class="cart_but">


                                    <div class="pagination">
                                        <asp:Literal runat="server" ID ="ltlPage"></asp:Literal>
                                    </div>


<%--                                    <button class="update"><span>icon</span>保存购物车</button>--%>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- .grid_12 -->

                    <div id="content_bottom">
                        <!-- .grid_4 -->
                        <!-- .grid_4 -->

                        <div class="grid_4">
                            <div class="bottom_block total">
                                <table class="subtotal">
                                    
                                    <tr class="grand_total">
                                        <td>总计</td>
                                        <td class="price"><asp:Literal runat="server" ID="ltlTotal"></asp:Literal></td>
                                    </tr>
                                </table>
                                <span class="zi8"><a href="tjgwc.html">提交订单</a></span>
                            </div>
                            <!-- .total -->
                        </div>
                        <!-- .grid_4 -->

                        <div class="clear"></div>
                    </div>
                    <!-- #content_bottom -->
                    <div class="clear"></div>

                    <div class="clear"></div>

                    <div class="carousel" id="following">
                        <!-- .c_header -->
                        <!-- .list_carousel -->
                    </div>
                    <!-- .carousel -->

                </div>
                <!-- .container_12 -->
            </section>
            <!-- #main -->


            <div id="xia">
                <div class="bottom-grids">
                    <div class="bottom-bottom-grids">
                        <div class="wrap">
                            <div class="bottom-bottom-grid">
                                <h6>购物指南</h6>
                                <p>会员介绍</p>
                                <a class="learn-more" href="#">团购/机票</a>
                            </div>
                            <div class="bottom-bottom-grid">
                                <h6>购物指南</h6>
                                <p>会员介绍</p>
                                <a class="learn-more" href="#">团购/机票</a>
                            </div>
                            <div class="bottom-bottom-grid">
                                <h6>购物指南</h6>
                                <p>会员介绍</p>
                                <a class="learn-more" href="#">团购/机票</a>
                            </div>

                            <div class="bottom-bottom-grid">
                                <h6>配送方式</h6>
                                <p>配送费收取标准</p>
                                <a class="learn-more" href="#">ANRUI International</a>
                            </div>
                            <div class="bottom-bottom-grid2">
                                <h6>售后服务</h6>
                                <p>售后政策</p>
                                <a class="learn-more" href="#">价格保护</a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>





                <div class="clear"></div>
            </div>
        </div>
        </div>

		<div class="footer">
            <div class="wrap">
                <div class="footer-left">
                    <ul>
                        <li><a href="index.html">网络文化经营许可证京网文[2011]0168-061号  违法和不良信息举报电话：4006561155  Copyright © 2004-2015  京东JD.com 版权所有</li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function SelectAddress(d) {
            var div = d.parentElement;           
            $('#DivAddress').find("div").removeClass("iconone").addClass("iconbox");    
            $(div).removeClass().addClass("iconone");
            alert(cs);
        }
    </script>
</body>

</html>
