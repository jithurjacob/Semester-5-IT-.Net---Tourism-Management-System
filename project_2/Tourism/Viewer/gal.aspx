<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="gal.aspx.cs" Inherits="Viewer_gal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style>
		body {
			margin: 0;
			padding: 0;
		}
		a {
			color: #09f;
		}
		a:hover {
			text-decoration: none;
		}
		#back_to_camera {
			background: rgba(255,255,255,.9);
			clear: both;
			display: block;
			height: 40px;
			line-height: 40px;
			padding: 20px;
			position: relative;
			z-index: 1;
		}
		.fluid_container {
			
			z-index: 0;
			width:100%;
			height:100%;
		}
		#camera_wrap_4 {
		
			width:100%;
			margin-top:50px;
		}
		.camera_bar {
			z-index: 2;
		}
		.camera_thumbs {
			margin-top: 00px;
			position: relative;
			z-index: 1;
		}
		.camera_thumbs_cont {
			border-radius: 0;
			-moz-border-radius: 0;
			-webkit-border-radius: 0;
		}
		.camera_overlayer {
			opacity: .1;
		}
		.my_wrap
		{width:80%;
		    height:100%;
		    margin:10%;
		    
		    }
	</style>
     <link rel='stylesheet' id='Link1'  href="../scripts/camera.css" type='text/css' media='all'> 
   
   <div class="my_wrap">
    <div class="fluid_container" >
        <div class="camera_wrap camera_magenta_skin" id="camera_wrap_4">
            <div data-thumb="../scripts/slides/thumbs/bridge.jpg" data-src="../scripts/slides/bridge.jpg">
            </div>
            <div data-thumb="../scripts/lides/thumbs/leaf.jpg" data-src="../scripts/slides/leaf.jpg">
            </div>
            
            <div data-thumb="../scripts/slides/thumbs/sea.jpg" data-src="../scripts/slides/sea.jpg">
            </div>
            
            <div data-thumb="../scripts/slides/thumbs/tree.jpg" data-src="../scripts/slides/tree.jpg">
            </div>
        </div><!-- #camera_wrap_3 -->

    </div><!-- .fluid_container -->

    </div>
    <script>
        jQuery(function () {

            jQuery('#camera_wrap_4').camera({
                height: '500px',//'auto',
                loader: 'bar',
                pagination: false,
                thumbnails: false,
                hover: false,
                opacityOnGrid: false,
                imagePath: '/images/'

            });

        });
	</script>
</asp:Content>

