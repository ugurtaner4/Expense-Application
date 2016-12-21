<%@ Page Title="" Language="C#" MasterPageFile="~/yoda.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExpenseApp.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>KODLAB ASP.NET İş Takip Projesi</title>
<link href="styles/layout.css" rel="stylesheet" type="text/css" />
<link href="styles/wysiwyg.css" rel="stylesheet" type="text/css" />
<!-- Theme Start -->
<link href="themes/blue/styles.css" rel="stylesheet" type="text/css" />
<!-- Theme End -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body id="homepage">
	<div id="header">
    	<a href="" title=""><img src="img/cp_logo.png" alt="Control Panel" class="logo" /></a>
    	
    </div>
        
    <!-- Top Breadcrumb Start -->
    <div id="breadcrumb">
    	<ul>	
        	<li><img src="img/icons/icon_breadcrumb.png" alt="Location" /></li>
        	<li><strong>KODLAB İş Takip Sistemi</strong></li>
            <li><a href="#" title="">2015</a></li>
            <li>/</li>
            <li class="current">Asp.Net İş Takip Projeleri</li>
        </ul>
    </div>
    <!-- Top Breadcrumb End -->
     
    <!-- Right Side/Main Content Start -->
    <div id="rightside">
    
    	
     
     
       
        <div class="contentcontainer">
           
            <div class="contentbox">
 içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
  içerik buraya gelecek <br/>
            </div>
        </div>
    
  

        
   
        
        <div style="clear:both;"></div>

      
      
        <div id="footer">
        	&copy; Copyright 2015 KODLAB
        </div> 
          
    </div>
    <!-- Right Side/Main Content End -->
    
        <!-- Left Dark Bar Start -->
    <div id="leftside">
    	<div class="user">
        	<img src="img/avatar.png" width="44" height="44" class="hoverimg" alt="Avatar" />
            <p>Giriş Yapan Kullanıcı :</p>
            <p class="username">Admin</p>
            <p class="userbtn"><a href="#" title="">Şifremi Değiştir</a></p>
            <p class="userbtn"><a href="#" title="">Çıkış</a></p>
        </div>
        
        
        <ul id="nav">
        	
            <li runat="server" id="liCustomerTransactions">
                <a class="collapsed heading">Müşteri İşlemleri</a>
                 <ul class="navigation">
                    <li><a href="MusteriKayit.aspx" title="">Müşteri Kayıt</a></li>
                    <li><a href="RandevuVer.aspx" title="">Randevu Ver</a></li>
                    <li><a href="RandevuSuz.aspx" title="">Randevu Süz</a></li>
					  <li><a href="IslemYap.aspx" title="">İşlem Yap</a></li>
                </ul>
            </li>
            <li><a class="expanded heading">Yönetici İşlemleri</a>
                <ul class="navigation">
                    <li><a href="#" title="" class="likelogin">Personel Kayıt</a></li>
                    <li><a href="#" title="">Personel Devamsızlık</a></li>
                    <li><a href="#" title="">Section link here</a></li>
                </ul>
            </li>     
<li><a class="expanded heading">Muhasebe</a>
                <ul class="navigation">
                    <li><a href="#" title="" class="likelogin">Tahsilat</a></li>
                    <li><a href="#" title="">Gider İşlemleri</a></li>
                    
                </ul>
            </li>    			
        </ul>
    </div>
    <!-- Left Dark Bar End --> 
    
    <!-- Notifications Box/Pop-Up Start --> 
   
    
    <script type="text/javascript" src="http://dwpe.googlecode.com/svn/trunk/_shared/EnhanceJS/enhance.js"></script>	
    <script type='text/javascript' src='http://dwpe.googlecode.com/svn/trunk/charting/js/excanvas.js'></script>
	<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js'></script>
    <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js'></script>
	<script type='text/javascript' src='scripts/jquery.wysiwyg.js'></script>
    <script type='text/javascript' src='scripts/visualize.jQuery.js'></script>
    <script type="text/javascript" src='scripts/functions.js'></script>
    
    <!--[if IE 6]>
    <script type='text/javascript' src='scripts/png_fix.js'></script>
    <script type='text/javascript'>
      DD_belatedPNG.fix('img, .notifycount, .selected');
    </script>
    <![endif]--> 
</body>
</asp:Content>
