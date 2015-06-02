a:5:{i:0;s:1084:"<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=1">
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
        <!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
        <?php echo $this->tag->getTitle(); ?>
        
        <?php echo $this->tag->javascriptInclude('library/jquery/jquery-1.11.3.min.js'); ?>
        <?php echo $this->tag->stylesheetLink('css/styles.css'); ?>
        
        <?php echo $this->tag->stylesheetLink('library/bootstrap-3.3.4/css/bootstrap.css'); ?>
        <?php echo $this->tag->javascriptInclude('library/bootstrap-3.3.4/js/bootstrap.min.js'); ?>

        <?php echo $this->tag->stylesheetLink('css/adjustments.css'); ?>
        <script type="text/javascript">
            var myBaseURL = '<?php echo $this->url->get(''); ?>';
        </script>
        ";s:6:"header";a:1:{i:0;a:4:{s:4:"type";i:357;s:5:"value";s:27:"<!-- custom header code -->";s:4:"file";s:35:"../app/views/templates/default.volt";s:4:"line";i:21;}}i:1;s:608:"
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="header clearfix">
                        <nav>
                            <?php echo $this->partial('partials/menu_partial'); ?>
                        </nav>
                        <h3 class="text-muted">Sigma Móvil Track</h3>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            ";s:7:"content";a:1:{i:0;a:4:{s:4:"type";i:357;s:5:"value";s:33:"<!-- custom content body code -->";s:4:"file";s:35:"../app/views/templates/default.volt";s:4:"line";i:36;}}i:2;s:326:"
                        </div>    
                    </div>    

                    <footer class="footer">
                        <p>&copy; Sigma Engine 2015, Todos los derechos reservados</p>
                    </footer>    
                </div>    
            </div>
        </div>
    </body>
</html>
";}