<%-- 
    Document   : home
    Created on : Aug 12, 2019, 9:37:56 PM
    Author     : Owner
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Addressbook</title>

        <!-- Custom fonts for this template-->
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/>">

        <!-- Custom styles for this template-->
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/sb-admin-2.min.css"/>">

        <!--javascript and css file from resources-->
        <script type ="text/javascript" src="<c:url value="/resources/javascript/function.js"/>"></script>        
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">

    </head>
    <body id="page-top" onload='loadDashboard()'>

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Fakhry's Addressbook</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Addons
                </div>

                <!-- Nav Item-->
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#newAddress" >
                        <i class="fas fa fa-users"></i>
                        <span>Add Friends</span></a>
                </li>

                <!-- Nav Item -->
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#newReminder">
                        <i class="fas fa-clipboard-list"></i>
                        <span>Add To-do list</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Fakhry Fauzi</span>
                                    <img class="img-profile rounded-circle" src="<c:url value="/resources/images/Fakhry.jpg"/>">
                                </a>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Date Card -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Date</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800" id='currentDate'></div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Number of Friends Card -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">No. Of Friends</div>
                                                <div class="row no-gutters align-items-center">
                                                    <div class="col-auto">
                                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><span id="numberOfFriends">0</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-address-book fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pending To-do list Card -->
                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">To-do </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800"><span id="numberOfReminder">0</span></div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->

                        <div class="row">

                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">Address book</h6>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Action:</div>
                                                <a class="dropdown-item" href="#">Download</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div id = "address-display"">
                                            <table class ="table table-condensed table-bordered">
                                                <thead id ="address-display-header" class="font-weight-bolder"></thead>
                                                <!--Testing-->
                                                <tbody id ="address-display-body">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Reminder List -->
                            <div class="col-xl-4 col-lg-5">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">To-do list</h6>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Action:</div>
                                                <a class="dropdown-item" href="#">Download</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="card-body">
                                        <div id = "reminder-display"">
                                            <table class ="table table-condensed table-bordered">
                                                <thead id ="reminder-display-header" class="font-weight-bolder"></thead>
                                                <!--Testing-->
                                                <tbody id ="reminder-display-body">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Fakhry Fauzi's Addressbook 2019</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!--Add Address dialog-->
        <div class="modal fade" id="newAddress" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add New Friends to Address Book</h6>
                    </div>
                    <div class="card-body">
                        <!--Form is placed here-->
                        <form id="addressForm">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <span class="form-label">Full Name</span>
                                        <input class="form-control" type="text" id="friendName" value="" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <span class="form-label">Phone Number</span>
                                        <input class="form-control" type="text" id="friendNumber" value="" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <span class="form-label">Email</span>
                                        <input class="form-control" type="email" id="friendEmail" value="" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <span class="form-label">Address</span>
                                        <textarea class="form-control" type="text" id="friendAddress" value="" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <a onclick="addFriend()" class="btn btn-primary text-white">
                            <span class="text">Add Friend</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!--Add to-do-list dialog-->
        <div class="modal fade" id="newReminder" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add To-do List</h6>
                    </div>
                    <div class="card-body">
                        <!--Form is placed here-->
                        <form id="reminderForm">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <span class="form-label">Note</span>
                                        <textarea class="form-control" type="text" id="reminderNote" value="" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <a onclick="addReminder()" class="btn btn-primary btn-icon-split btn-sm text-white">
                            <span class="text">Add to-do list</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Bootstrap core JavaScript-->
        <script type ="text/javascript" src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
        <script type ="text/javascript" src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

        <!-- Core plugin JavaScript-->
        <script type ="text/javascript" src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

        <!-- Custom scripts for all pages-->
        <script type ="text/javascript" src="<c:url value="/resources/javascript/sb-admin-2.min.js"/>"></script>

    </body>

</html>

