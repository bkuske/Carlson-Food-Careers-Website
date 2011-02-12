<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><g:layoutTitle default="Carlson Food Careers" /></title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'reset.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'text.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'960.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'styles.css')}" />

    <!--[if IE 7]>
    <link type="text/css" rel="stylesheet" media="screen" href="css/ie7.css" />
    <![endif]-->

    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    
    <g:layoutHead />
  </head>
  <body  class="${pageProperty(name:'body.class') ?: "secondary"}" id="${pageProperty(name:'body.id')}">

     <div class="container_16" id="wrap">
      <div class="grid_16" id="header">
        <h2><g:link conroller="page">foodcareers.com | Carlson Food Careers</g:link></h2>
        <h3>Reliable &amp; Confidential Career Advancement</h3>
        <div id="nav-contain">
          <g:render template="/mainMenu" />
          <div id="search">
            <form action="${createLink(controller:'page', action:'searchresults')}"><!--id="cse-search-box"-->
              <input type="hidden" name="cx" value="004119461761177926531:pyj2iyeglje" />
              <input type="hidden" name="cof" value="FORID:9" />
              <input type="hidden" name="ie" value="UTF-8" />
              <input id="q" type="text" name="q" size="31" />
              <input id="search-submit" type="submit" name="sa" value="Search" />
            </form>

          </div>
        </div><!--nav-contain-->
      </div><!--header-->

      <g:layoutBody />
         
      <div class="clear"></div>

      <g:render template="/footer" />

    </div><!--wrap-->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try{
var pageTracker = _gat._getTracker("UA-3756673-6");
pageTracker._trackPageview();
} catch(err) {}
</script>
</body>
</html>
