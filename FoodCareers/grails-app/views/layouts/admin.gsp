<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><g:layoutTitle default="Carlson Food Careers" /></title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'reset.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'text.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'960.css')}" />
    <link rel="stylesheet" href="${resource(dir:'css',file:'styles.css')}" />

    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    
    <g:layoutHead />
    <g:javascript library="application" />	
  </head>
  <body  class="${pageProperty(name:'body.class') ?: "admin"}" >

     <div class="container_16" id="wrap">
      <div class="grid_16" id="header">
        <h2><a href="/">foodcareers.com | Carlson Food Careers</a></h2>
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
     
        <div class="grid_3 alpha" id="admin-sidebar">
          <g:render template="/adminMenu" />
        </div>

        <div class="grid_13 omega" id="admin-content">
          <g:layoutBody />
        </div>
      <div class="clear"></div>

      <g:render template="/footer" />

    </div><!--wrap-->
</body>
</html>