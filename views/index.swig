
<!DOCTYPE html>
<html ng-app="cargoApp">
<head>
    
    <title>{{customization.pageTitle}}</title>




    <meta itemprop="name" content="{{customization.metaName}}">
    <meta itemprop="description" content="{{customization.metaDescription}}">
    <meta itemprop="image" content="{{customization.metaImage}}">
    <meta name="keywords" content="argentina, polticos, cargos">
    <meta name="description" content="Cargograf&#237as es una linea de tiempo que muestra los cargos publicos que tuvo cada funcionario a lo largo de su vida. Entra y arma tu comparacion.">
    <meta name="robots" content="Index, All">
    <meta name="robots" content="Index, Follow">
    <meta name="revisit-after" content="10 days">
    <link rel="shortcut icon" href="http://www.cargografias.org/favicon.ico"  type="image/x-icon">
    <meta property="fb:page_id" content="">
    <meta property="og:image" content="http://40.media.tumblr.com/71df2704f63865f5d42697631e73d4f5/tumblr_nfmcfzeGMG1qeky8ko1_1280.jpg">
    <meta property="og:description" content="Cargograf&#237as es una linea de tiempo que muestra los cargos publicos que tuvo cada funcionario a lo largo de su vida. Entra y arma tu comparacion.">
    <meta property="og:title" content="cargografias.org">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@cargografias">
    <meta name="twitter:creator" content="@cargografias">
    <meta name="twitter:title" content="Cargografias - Politicos en el tiempo">
    <meta name="twitter:description" content="Cargograf&#237as es una linea de tiempo que muestra los cargos publicos que tuvo cada funcionario a lo largo de su vida. Entra y arma tu comparacion.">
    <meta name="twitter:image" content="http://40.media.tumblr.com/71df2704f63865f5d42697631e73d4f5/tumblr_nfmcfzeGMG1qeky8ko1_1280.jpg">


    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/favicon.ico" type="image/x-icon" rel="icon" />
    <link href="/favicon.ico" type="image/x-icon" rel="shortcut icon" />


    <link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

    <!-- V2 Styles -->    
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/publico.css" />
    <link rel="stylesheet" type="text/css" href="/css/animaciones.css" />

    <!-- V3 Styles -->
    <link rel="stylesheet" href="bower_components/angular-material/angular-material.css">
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/new-timeline.css" type="text/css">

    <style>
        {{customization.customCSS|safe}}
    </style>


    <script>
        window.__config = {
           baseStaticPath: '{{config.baseStaticPath}}' 
        }    
    </script>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-8208559-4', 'auto');
      ga('send', 'pageview');

    </script>

    <!-- V2 Libs -->
    <script src="/js/lib/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="js/lib/d3.min.js"></script>

    

    <!-- V3 Libs -->
    <!-- Angular Material Dependencies -->
    <script src="/bower_components/angular/angular.js"></script>
    <script src="/bower_components/angular-aria/angular-aria.js"></script>
    <script src="/bower_components/angular-animate/angular-animate.js"></script>
    <script src="/bower_components/hammerjs/hammer.js"></script>
    <script src="/bower_components/angular-route/angular-route.min.js"></script>
    <script src="/bower_components/angular-material/angular-material.js"></script>
    <script src="/js/lib/sha1.js"></script>

    <!-- V4 Libs -->
    <script type="text/javascript" src="js/lib/own.js"></script>

    <!-- V2 Libs Angular-->
    <script src="/bower_components/angular-cookies/angular-cookies.js"></script>
    <script src="/bower_components/moment/moment.js"></script>
    <script src="/bower_components/angular-moment/angular-moment.js"></script>
    <script src="/bower_components/moment/lang/es.js"></script>
    



</head>

<body class="angled stripes">
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="brand"><h3>{{customization.siteTitle}}</h3></a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                       

                    </ul>
                    <ul class="nav pull-right">
                    {{customization.errorButton|safe}}   
                    {{customization.followButton|safe}}
                    {{customization.forkButton|safe}}
                    </ul>
                </div>
                <!--/.nav-collapse -->
                {% if customization.subHeading %}
                <div style="display: block;float: left;padding: 0px 29px 6px;font-size: 15px;font-weight: 200;color: #fff;width: 100%; background: black;">{{customization.subHeading}}</div>
                {% endif %}
            </div>
        </div>
    </div>


    <div class="main" >
         <div ng-controller="loaderController"  ng-include="'/angular/partials/loader.html'">
         </div>
        <div>
            <div ng-view id="cargoContainer"></div>
        </div>
        
    </div>

    <footer class="well">
        <div class="main span5">{{customization.footerLeft|safe}}</div>
        <div class="row span6 sponsors">{{customization.footerRight|safe}}</div>
        <div class="clearfix"></div>
    </footer>
    

    
    <script src="/js/lib/v4/plugins/cargo.memberships.js"></script>
    <script src="/js/lib/v4/plugins/cargo.territory.js"></script>
    <script src="/js/lib/v4/cargo-timeline.js"></script>
    <script src="/js/lib/v2/cargo-bubbles.js"></script>

    <script src="/js/remove-diacritics.js"></script>
    
    <script src="angular/app.js"></script>
    <script src="angular/controllers/controllers.js"></script>
    <script src="angular/controllers/loaderController.js"></script>
    <script src="angular/filters/filters.js"></script>
    <script src="angular/directives/cargoBubbles.js"></script>
    <script src="angular/directives/cargoLoc.js"></script>
    <script src="angular/factories/cargosLoaderFactory.js"></script>
    <script src="angular/factories/cargosFactory.js"></script>
    <script src="angular/factories/presetsFactory.js"></script>
</body>
    
</body>
</html>
