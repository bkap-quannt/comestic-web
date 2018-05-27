<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- BEGIN COPYRIGHT -->
<div class="copyright">
    2018 &copy; Cosmetic. Admin Dashboard Website.
</div>
<!-- END COPYRIGHT -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->   <script src="../jsp/admin/assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="../jsp/admin/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="../jsp/admin/assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
<script src="../jsp/admin/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../jsp/admin/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
<!--[if lt IE 9]>
<script src="../jsp/admin/assets/plugins/excanvas.min.js"></script>
<script src="../jsp/admin/assets/plugins/respond.min.js"></script>  
<![endif]-->   
<script src="../jsp/admin/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="../jsp/admin/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
<script src="../jsp/admin/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
<script src="../jsp/admin/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="../jsp/admin/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>	
<script type="text/javascript" src="../jsp/admin/assets/plugins/select2/select2.min.js"></script>     
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../jsp/admin/assets/scripts/app.js" type="text/javascript"></script>
<script src="../jsp/admin/assets/scripts/login.js" type="text/javascript"></script> 
<!-- END PAGE LEVEL SCRIPTS --> 
<script>
    jQuery(document).ready(function () {
        App.init();
        Login.init();
    });
</script>
<!-- END JAVASCRIPTS -->
