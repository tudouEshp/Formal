﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Special.aspx.cs" Inherits="EShop.Special" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ANRUI International | login</title>
    <link href="css/zhuanchang2.css" rel='stylesheet' type='text/css' />
    <link href="css/bootstrap2.css" rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="form1" runat="server">

        <div class="header">
            <div class="top-header">
                <div class="wrap">
                    <div class="footer-left">
                        <ul>
                            <li><a href="index.ashx">首页</a> <span></span></li>
                            <li><a href="male.ashx">男士</a> <span></span></li>
                            <li><a href="nvshi.html">女生</a> <span></span></li>
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


            <div class="container">


                <div class="form-wrapper cf">
                    <input type="text" placeholder="搜索商品" required>
                    <button type="submit">搜索一下</button>
                </div>

                <div class="products">
                    <div class="product-filter">
                        <h1><a href="#"></a></h1>
                        <div class="product-filter-grids">
                            <div class="col-md-3 product-filter-grid1-brands">
                                <h3>男士商品</h3>
                                <ul class="col-md-6 unstyled-list b-list1">
                                    <li><a href="#">xxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxxx商品</a></li>
                                    <li><a href="#">xxxxxxxxx商品</a></li>
                                    <div class="clearfix"></div>
                                </ul>
                                <ul class="col-md-6 unstyled-list b-list2">
                                    <li><a href="#">商品</a></li>
                                    <li><a href="#">商品</a></li>
                                    <li><a href="#">商品</a></li>
                                    <li><a href="#">商品</a></li>
                                    <li><a href="#">商品</a></li>
                                    <div class="clearfix"></div>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <!---->


                        </div>
                        <!---->
                        <div class="product-filter-grid1-brands-col3">
                            <div class="products-colors">
                                <h3>商品</h3>
                                <li><a href="#">shiping ></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <div class="clearfix"></div>
                            </div>
                        </div>


                        <div class="product-filter-grid1-brands-col3">
                            <div class="products-colors">
                                <h3>商品</h3>
                                <li><a href="#">shiping ></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <li><a href="#">shiping</span></a></li>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

        </div>

        <div class="zhong2">
            <div class="shop_box-top">
                <asp:Repeater runat="server" ID="rptProducts">
                    <ItemTemplate>
                        <div class="col-md-3 shop_box">
                            <a href="sp.html">
                                <img src="<%#Eval("Img") %>" alt="" width="500" height="311" class="img-responsive" />

                                <div class="shop_desc">
                                    <h3><a href="#"><%#Eval("ProName") %></h3>
                                    <p>男士最新 </p>
                                    <span class="reducedfrom"><%#Eval("Price") %></span>
                                    <span class="actual"><%#Eval("Price") %></span><br>
                                    <ul class="buttons">
                                        <li class="cart"><a href="#">加关注</li>
                                        <li class="shop_btn"><a href="#">进入商品页面</li>
                                        <div class="clear"></div>
                                    </ul>
                                </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>



                <div class="pagination">
                    <ul>
                        <li class="prev"><span>&#8592;</span></li>
                        <li class="curent"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><span>...</span></li>
                        <li><a href="#">100</a></li>
                        <li class="next"><a href="#">&#8594;</a></li>
                    </ul>
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
                        <li><a href="index.html">版权所有</a> <span></span></li>

                        <div class="clear"></div>
                    </ul>
                </div>

                <div class="clear"></div>
            </div>
        </div>
    </form>
</body>
</html>
