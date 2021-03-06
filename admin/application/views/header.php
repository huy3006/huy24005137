<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HCC</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url(); ?>public/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->

    <!-- Timeline CSS -->

    <!-- Custom CSS -->
    <link href="<?php echo base_url(); ?>public/css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<?php echo base_url(); ?>public/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url(); ?>public/fonts/font/css/all.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div id="wrapper">


        <!-- Navigation -->
        <nav class="navbar bg-secondary navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">HCC Shop</a>
            </div>

            

            <ul class="nav navbar-nav navbar-left navbar-top-links">
                <li><a href="#"><i class="fa fa-home fa-fw"></i>Website</a></li>
            </ul>

            <ul class="nav navbar-right navbar-top-links">


                <!-- //profile -->
                <li>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> ADMIN
                    </a>
                </li>
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                    
                        <li>
                            <a href="<?= base_url(); ?>index.php/showData/showLaptop"><i class="fa fa-table fa-fw"></i> S???n ph???m<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?= base_url(); ?>index.php/showData">T???t c???</a>
                                </li>
                                <li>
                                    <a href="#">Laptop<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/1">Dell</a>
                                        </li>

                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/2">Asus</a>
                                        </li>

                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/3">Acer</a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">??i???n tho???i<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/4">Iphone</a>
                                        </li>

                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/5">SamSung</a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">Ph??? ki???n<span class="fa arrow"></span></a>

                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/6">Ram</a>
                                        </li>

                                        <li>
                                            <a href="<?= base_url(); ?>index.php/showData/showDetailById/7">??? c???ng</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fas fa-plus-circle"></i> Th??m s???n ph???m<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level" action="">
                                <li>
                                    <a href="<?= base_url(); ?>index.php/addData/showAddData_Laptop">Laptop</a>

                                </li>
                                
                                <li>
                                    <a href="<?= base_url(); ?>index.php/addData/showAddData_Phone">??i???n tho???i</a>
                                </li>
                                
                                <li>
                                    <a href="<?= base_url(); ?>index.php/addData/showAddData_Pk">Ph??? ki???n</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        
                        <li>
                            <a href="#"><i class="fas fa-shopping-cart"></i>????n h??ng<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a  href="<?= base_url(); ?>index.php/order">Qu???n l?? ????n h??ng</a>
                                </li>

                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fas fa-users-cog"></i> T??i kho???n<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                
                                <li>
                                    <a href="<?= base_url(); ?>index.php/account/accountUser">User</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="<?= base_url(); ?>index.php/logout"><i class="fas fa-sign-out-alt"></i> ????ng xu???t</a>
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>




    </div>

    <!-- jQuery -->
    <script src="<?php echo base_url(); ?>public/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url(); ?>public/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url(); ?>public/js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url(); ?>public/js/startmin.js"></script>
 
</body>
</html>
