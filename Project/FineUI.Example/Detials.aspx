﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detials.aspx.cs" Inherits="EShop.Detials" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>ANRUI International | login</title>
    <link href="css/shanpin.css" rel='stylesheet' type='text/css' />
    <link href="css/sp.css" rel='stylesheet' type='text/css' />
    <link href="css/sp2.css" rel='stylesheet' type='text/css' />
    <meta charset="utf-8">
</head>
<body>
    <div class="header">
        <div class="top-header">
            <div class="wrap">
                <div class="footer-left">
                    <ul>
                        <li><a href="index.ashx">首页</a> <span></span></li>
                        <li><a href="nanshi.html">男士</a> <span></span></li>
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
                        <li><a href="aspx/register.html">注册</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>

        <div class="mid-header">
            <div class="wrap">
                <div class="mid-grid-right">
                    <a href="index.html"><span>这是LOGO</span></a>
                </div>
                <div class="clear"></div>
            </div>
        </div>

        <div class="header-bottom">
            <div class="wrap">
            </div>
        </div>
    </div>


    <section id="main">
        <div class="container_12">
            <div id="sidebar" class="grid_3">
                <aside id="categories_nav">
                    <h3>XXXX</h3>


                </aside>
                <!-- #categories_nav -->

                <aside id="specials" class="specials">
                    <h3>XXXXXXXXXXX</h3>

                    <ul>
                        <li>
                            <div class="prev">
                                <a href="#">
                                    <img src="images/准确广告图/4242.jpg" alt="" width="70" height="70" title="" /></a>
                            </div>

                            <div class="cont">
                                <a href="#">XXXXXXXXXXX</a>
                                <div class="prise"><span class="old">$177.00</span>$75.00</div>
                            </div>
                        </li>

                        <li>
                            <div class="prev">
                                <a href="#">
                                    <img src="images/准确广告图/5431.jpg" alt="" width="70" height="70" title="" /></a>
                            </div>

                            <div class="cont">
                                <a href="#">XXXXXXXXXXXX</a>
                                <div class="prise"><span class="old">$299999.00</span>$75.00</div>
                            </div>
                        </li>
                    </ul>
                </aside>

                <aside id="banners">
                    <h3>XXX</h3>

                    <div class="list_carousel">
                        <ul id="list_banners">
                            <li class="banner"><a href="#">
                                <div class="prev">
                                    <img src="images/准确广告图/98325.jpg" alt="" width="201" height="201" title="" />
                                </div>

                                <h2>XXX</h2>

                                <p>XXX</p>
                            </a></li>

                            <li class="banner"><a href="#">
                                <div class="prev">
                                    <img src="images/准确广告图/2310.jpg" alt="" width="192" height="192" title="" />
                                </div>
                                <!-- .prev -->

                                <h2>XXX</h2>

                                <p>XXX</p>
                            </a></li>

                            <li class="banner"><a href="#">
                                <div class="prev">
                                    <img src="images/准确广告图/4120.jpg" alt="" width="181" height="181" title="" />
                                </div>
                                <!-- .prev -->

                                <h2>XXXX</h2>

                                <p>XXX</p>
                            </a></li>

                        </ul>
                    </div>
                </aside>

                <aside id="tags">
                    <h3>XXXX</h3>
                    <a class="t1" href="#">Galaxy Note </a>
                    <a class="t2" href="#">Galaxy Note </a>
                    <a class="t3" href="#">Galaxy Note </a>
                    <a class="t4" href="#">SSS</a>
                    <a class="t5" href="#">AAAA</a>
                    <a class="t6" href="#">Galaxy Note </a>
                    <a class="t7" href="#">AAA</a>
                    <a class="t8" href="#">BBB</a>
                    <a class="t9" href="#">CCC</a>
                    <a class="t10" href="#">DDD</a>
                    <a class="t11" href="#">EEE</a>
                    <a class="t12" href="#">FFF</a>
                    <a class="t13" href="#">GGGG</a>
                    <a class="t14" href="#">EEE</a>
                    <a class="t15" href="#">FFF</a>
                    <a class="t16" href="#">AAA</a>
                    <a class="t17" href="#">BVBBB</a>
                </aside>
                <!-- #community_poll -->
            </div>
            <!-- .sidebar -->

            <div id="content" class="grid_9">
                <h1 class="page_title"><asp:Label runat="server" ID="lblTitle"></asp:Label></h1>

                <div class="product_page">
                    <div class="grid_4 img_slid" id="products">
                        <div class="preview slides_container">
                            <div class="prev_bg">
                                <a href="images/produkt_slid.png" class="jqzoom" rel='gal1' title="">
                                    <asp:Image runat="server" ID="ImgProduct" Width="295" Height="295"/>
                                </a>
                            </div>
                        </div>
                        <!-- .prev -->

                        <ul class="pagination clearfix" id="thumblist">
                            <li><a class="zoomThumbActive" href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './images/produkt_slid.png',largeimage: './images/produkt_slid.png'}">
                                <img src="images/准确广告图/910.jpg" alt="" width="70" height="70"></a></li>
                            <li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './images/produkt_slid1.png',largeimage: './images/produkt_slid1.png'}">
                                <img src="images/准确广告图/5421.jpg" alt="" width="70" height="70"></a></li>
                            <li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './images/produkt_slid2.png',largeimage: './images/produkt_slid2.png'}">
                                <img src="images/准确广告图/5241.jpg" alt="" width="70" height="70"></a></li>
                        </ul>

                        <div class="next_prev"></div>
                        <!-- . -->
                    </div>
                    <!-- .grid_4 -->
                    <form id="Form1" runat="server">
                        <f:PageManager ID="pm2" runat="server"></f:PageManager>
                        <div class="grid_5">
                            <div class="entry_content">
                                <p>
                                    <asp:Label ID="lblDesc" runat="server"></asp:Label>
                                </p>
                                <p>积分购买：<a href="index.html" class="jf"><span><asp:Label ID="lblPoint" runat="server"></asp:Label></span></a></p>
                                <div class="ava_price">
                                    <div class="availability_sku">
                                        <div class="availability">
                                            配送：<span>上海 至 广东深圳罗湖区</span>
                                        </div>
                                        <div class="sku">
                                            服务：<span>可选购 一年全国联保¥59.13；</span>
                                        </div>
                                    </div>
                                    <!-- .availability_sku -->

                                    <div class="price">
                                        <div class="price-new">
                                            <asp:Label ID="lblPrice" runat="server" ForeColor="Green"></asp:Label>
                                        </div>
                                        <div class="price_old">
                                            <asp:Label ID="lblOldPrice" runat="server" ForeColor="Green"></asp:Label>
                                        </div>
                                    </div>
                                    <!-- .price -->
                                </div>
                                <!-- .ava_price -->

                                <div class="block_cart">
                                    <div class="obn_like">
                                        <div class="obn">
                                            <a href="#" class="obn">支付信用卡支付 集分宝 支付宝支付</a>
                                        </div>
                                        <div class="like">
                                            <a href="#" class="like">支付信用卡支付 集分宝 支付宝支付</a>
                                        </div>
                                    </div>

                                    <div class="cart">
                                        <span class="newsletter">
                                            <input type="submit" id="submit2" value="添加" />
                                        </span>
                                        <input type="text" name="" class="number" value="1" />
                                        <span>添加商品数量:</span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <!-- .block_cart -->
                                <div class="soc">
                                    <span class="error-404-text group"><span class="zi8">
                                        <asp:Button ID="btnCheckOut" runat="server" Text="添加到购物车" OnClick="btnCheckOut_Click" 
                                            Height="40" Width="155" BackColor="#CC0000" Font-Size="15px" /></span>
                                </div>
                                <!-- .soc -->
                            </div>
                            <!-- .entry_content -->

                        </div>
                        <!-- .grid_5 -->
                    </form>
                    <div class="clear"></div>

                    <div class="grid_9">
                        <div id="wrapper_tab" class="tab1">
                            <a href="#" class="tab1 tab_link">商品详情</a>
                            <div class="clear"></div>

                            <div class="tab1 tab_body">
                                <h4>&nbsp;</h4>
                                <p>
                                    <img src="images/NOTE3/20140929161159_10461.jpg" width="750" height="660"><img src="images/NOTE3/20140929161200_40792.jpg" width="750" height="495"><img src="images/NOTE3/20140929161202_57782.jpg" width="750" height="516"><img src="images/NOTE3/20140929161203_16152.jpg" width="750" height="564"><img src="images/NOTE3/20140929161205_54762.jpg" width="750" height="678"><img src="images/NOTE3/20140929161207_64004.jpg" width="750" height="547"><img src="images/NOTE3/20140929161209_20996.jpg" width="750" height="533"><img src="images/NOTE3/20140929161211_93439.jpg" width="750" height="483"><img src="images/NOTE3/20140929161213_16654.jpg" width="750" height="637"><img src="images/NOTE3/20140929161214_14333.jpg" width="750" height="497"><img src="images/NOTE3/20140929161216_20897.jpg" width="750" height="595"><img src="images/NOTE3/20140929161218_75855.jpg" width="750" height="486"><img src="images/NOTE3/20140929161219_18887 (1).jpg" width="750" height="632"><img src="images/NOTE3/20140929161222_72388.jpg" width="750" height="650"><img src="images/NOTE3/20140929161224_90453.jpg" width="750" height="616"></p>

                                <table>
                                    <tr>
                                        <th class="bg">XXXXXX</th>
                                        <th>XXXXXX</th>
                                        <th class="bg">XXXXXX</th>
                                        <th>XXXXXX</th>
                                    </tr>
                                    <tr>
                                        <td class="bg">One</td>
                                        <td>XXXXXX</td>
                                        <td class="bg">yes</td>
                                        <td>XXXXXX</td>
                                    </tr>
                                    <tr>
                                        <td class="bg">Two</td>
                                        <td>XXXXXX</td>
                                        <td class="bg">1</td>
                                        <td>XXXXXX</td>
                                    </tr>
                                    <tr>
                                        <td class="bg">Three</td>
                                        <td>$1300</td>
                                        <td class="bg">$2999</td>
                                        <td>$1999</td>
                                    </tr>
                                    <tr>
                                        <td class="bg">XXXXXX</td>
                                        <td><a href="#">XXXXX</a></td>
                                        <td class="bg"><a href="#">XXXXX</a></td>
                                        <td><a href="#">XXXXXX</a></td>
                                    </tr>
                                </table>
                                <div class="clear"></div>
                            </div>
                            <!-- .tab1 .tab_body -->

                            <div class="tab2 tab_body">
                                <h4>XXXXX</h4>
                                <ul class="comments">
                                    <li>
                                        <div class="autor">XXXXXX</div>
                                        , <time datetime="2012-11-03">03.11.2012</time>

                                        <div class="evaluation">
                                            <div class="quality">
                                                <strong>XXXXXX</strong>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a href="#"></a>
                                                <a href="#"></a>
                                            </div>
                                            <div class="price">
                                                <strong>XXXXXX</strong>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus_minus" href="#"></a>
                                                <a href="#"></a>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <!-- .evaluation -->

                                        <p>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
                                    </li>

                                    <li>
                                        <div class="autor">XXXXXXXXXXX</div>
                                        , <time datetime="2012-11-03">03.11.2012</time>

                                        <div class="evaluation">
                                            <div class="quality">
                                                <strong>XXXXXXXXX</strong>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus_minus" href="#"></a>
                                            </div>
                                            <div class="price">
                                                <strong>XXXXXXXXXX</strong>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a class="plus" href="#"></a>
                                                <a href="#"></a>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                        <!-- .evaluation -->

                                        <p>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
                                    </li>
                                </ul>
                                <!-- .comments -->

                                <form class="add_comments">
                                    <h4>XXXXXXXXXXXXXXXXXX

							<div class="evaluation">
                                <div class="quality">
                                    <strong>XXXXXXXXXXX</strong><sup class="surely">*</sup>
                                    <input class="niceRadio" type="radio" name="quality" value="1" /><span class="eva_num">1</span>
                                    <input class="niceRadio" type="radio" name="quality" value="2" /><span class="eva_num">2</span>
                                    <input class="niceRadio" type="radio" name="quality" value="3" /><span class="eva_num">3</span>
                                    <input class="niceRadio" type="radio" name="quality" value="4" /><span class="eva_num">4</span>
                                    <input class="niceRadio" type="radio" name="quality" value="5" /><span class="eva_num">5</span>
                                </div>
                                <div class="price">
                                    <strong>XXXXXXXXXXXX</strong><sup class="surely">*</sup>
                                    <input class="niceRadio" type="radio" name="price" value="1" /><span class="eva_num">1</span>
                                    <input class="niceRadio" type="radio" name="price" value="2" /><span class="eva_num">2</span>
                                    <input class="niceRadio" type="radio" name="price" value="3" /><span class="eva_num">3</span>
                                    <input class="niceRadio" type="radio" name="price" value="4" /><span class="eva_num">4</span>
                                    <input class="niceRadio" type="radio" name="price" value="5" /><span class="eva_num">5</span>
                                </div>
                                <div class="clear"></div>
                            </div>
                                        <!-- .evaluation -->

                                        <div class="nickname">
                                            <strong>XXXXXXXXXXX</strong><sup class="surely">*</sup><br />
                                            <input type="text" name="" class="" value="" />
                                        </div>
                                        <!-- .nickname -->

                                        <div class="your_review">
                                            <strong>XXXXXXXX</strong><sup class="surely">*</sup><br />
                                            <input type="text" name="" class="" value="" />
                                        </div>
                                        <!-- .your_review -->

                                        <div class="clear"></div>

                                        <div class="text_review">
                                            <strong>XXXXXXXXXXXXX</strong><sup class="surely">*</sup><br />
                                            <textarea name="text"></textarea>
                                            <i>Note: HTML is not translated!</i>
                                        </div>
                                        <!-- .text_review -->

                                        <input type="submit" value="Submit Review" />
                                </form>
                                <!-- .add_comments -->
                                <div class="clear"></div>
                            </div>
                            <!-- .tab2 .tab_body -->

                            <div class="tab3 tab_body">
                                <h4>XXXXXXXXXX</h4>
                                <div class="clear"></div>
                            </div>
                            <!-- .tab3 .tab_body -->
                            <div class="clear"></div>
                        </div>
                        ​<!-- #wrapper_tab -->
                        <div class="clear"></div>
                    </div>
                    <!-- .grid_9 -->

                    <div class="clear"></div>

                    <div class="related">
                        <div class="c_header">
                            <div class="grid_7">
                                <h2>XXXXXXXXX</h2>
                            </div>
                            <!-- .grid_7 -->

                            <div class="grid_2"></div>
                            <!-- .grid_2 -->
                        </div>
                        <!-- .c_header -->

                        <div class="list_carousel">

                            <ul id="list_product" class="list_product">
                                <li class="">
                                    <div class="grid_3 product">
                                        <div class="prev">
                                            <a href="product_page.html">
                                                <img src="images/准确广告图/560.jpg" alt="" width="230" height="230" title="" /></a>
                                        </div>
                                        <!-- .prev -->
                                        <h3 class="title">XXXXXXXXXXXXXXXX</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    <div class="price_new">$3100.00</div>
                                                    <div class="price_old">$2999.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"></a>
                                        </div>
                                        <!-- .cart -->
                                    </div>
                                    <!-- .grid_3 -->
                                </li>

                                <li class="">
                                    <div class="grid_3 product">
                                        <div class="prev">
                                            <a href="product_page.html">
                                                <img src="images/准确广告图/564.jpg" alt="" width="210" height="210" title="" /></a>
                                        </div>
                                        <!-- .prev -->
                                        <h3 class="title">22222222222222222222222222222222</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    <div class="price_new">$3100.00</div>
                                                    <div class="price_old">$29999.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"></a>
                                        </div>
                                        <!-- .cart -->
                                    </div>
                                    <!-- .grid_3 -->
                                </li>

                                <li class="">
                                    <div class="grid_3 product">
                                        <div class="prev">
                                            <a href="product_page.html">
                                                <img src="images/准确广告图/+423.jpg" alt="" width="230" height="230" title="" /></a>
                                        </div>
                                        <!-- .prev -->
                                        <h3 class="title">ZZZZZZZZZZZZZZZZZZ</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    <div class="price_new">$XXXXXXX</div>
                                                    <div class="price_old">$XXXXXXXX</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"></a>
                                        </div>
                                        <!-- .cart -->
                                    </div>
                                    <!-- .grid_3 -->
                                </li>

                                <li class="">
                                    <div class="grid_3 product">
                                        <div class="prev">
                                            <a href="product_page.html">
                                                <img src="images/准确广告图/94561.jpg" alt="" width="210" height="210" title="" /></a>
                                        </div>
                                        <!-- .prev -->
                                        <h3 class="title">XXXXXXXXXXXXXXX</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    <div class="price_new">$3100.00</div>
                                                    <div class="price_old">$29999.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"></a>
                                        </div>
                                        <!-- .cart -->
                                    </div>
                                    <!-- .grid_3 -->
                                </li>

                                <li class="">
                                    <div class="grid_3 product">
                                        <div class="prev">
                                            <a href="product_page.html">
                                                <img src="images/准确广告图/68541.jpg" alt="" width="210" height="210" title="" /></a>
                                        </div>
                                        <!-- .prev -->
                                        <h3 class="title">XXXXXXXXXXXXXXX</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    <div class="price_new">$3100.00</div>
                                                    <div class="price_old">$29999.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"></a>
                                        </div>
                                        <!-- .cart -->
                                    </div>
                                    <!-- .grid_3 -->
                                </li>

                                <li class="">
                                    <div class="grid_3 product">
                                        <div class="prev">
                                            <a href="product_page.html">
                                                <img src="images/准确广告图/4512.jpg" alt="" width="210" height="210" title="" /></a>
                                        </div>
                                        <!-- .prev -->
                                        <h3 class="title">XXXXXXXXXXXXXXX</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    <div class="price_new">$3100.00</div>
                                                    <div class="price_old">$29999.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"></a>
                                        </div>
                                        <!-- .cart -->
                                    </div>
                                    <!-- .grid_3 -->
                                </li>
                            </ul>
                            <!-- #list_product -->
                        </div>
                        <!-- .list_carousel -->
                    </div>
                    <!-- .carousel -->
                </div>
                <!-- .product_page -->
                <div class="clear"></div>

            </div>
            <!-- #content -->

            <div class="clear"></div>

        </div>
        <!-- .container_12 -->
    </section>
    <!-- #main -->

    <div class="clear"></div>

    <footer>
        <div class="f_navigation">
            <!-- .container_12 -->
        </div>
        <!-- .f_navigation -->

        <div class="f_info">
            <div class="container_12">
                <!-- .grid_6 -->

                <div class="grid_6">
                    <div class="soc">
                        <a class="google" href="#"></a>
                        <a class="twitter" href="#"></a>
                        <a class="facebook" href="#"></a>
                    </div>
                    <!-- .soc -->
                </div>
                <!-- .grid_6 -->

                <div class="clear"></div>
            </div>
            <!-- .container_12 -->
        </div>
        <!-- .f_info -->
    </footer>

</body>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
</html>

<!-- #content -->

<div class="clear"></div>
</div>        
        <div class="footer">
            <div class="wrap">
                <div class="footer-left">
                    <ul>
                        <li><a href="index.html">首页</a> <span></span></li>
                        <li><a href="nanshi.html">男士</a> <span></span></li>
                        <li><a href="nvshi.html">女生</a> <span></span></li>
                        <li><a href="dzcp.html">电子产品</a> <span></span></li>
                        <li><a href="ssp.html">奢饰品</a> <span></span></li>
                        <li><a href="pinpai.html">品牌</a></li>
                        <div class="clear"></div>
                    </ul>
                </div>

                <div class="clear"></div>
            </div>
        </div>

</body>
</html>

