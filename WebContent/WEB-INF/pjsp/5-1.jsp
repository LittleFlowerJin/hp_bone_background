<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>医保政策管理</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">

</head>

<body>
       <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> 
                        	<a href="index.jsp"> <span><img alt="image" class="img-circle" src="img/logo.png" />	</span></a>
                        </div>
                        <div class="logo-element">
                            HP+
                        </div>
                    </li>
                    <li>
                        <a href="1-1.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">住院流程</span></a>        
                    </li>
                    <li>
                        <a href="2-1.jsp"><i class="fa fa-flask"></i> <span class="nav-label">药品咨询</span></a>
                    </li>
                    <li>
                        <a href="3-1.jsp"><i class="fa fa-sitemap"></i> <span class="nav-label">医药公司政策</span></a>
                    </li>
                    <li>
                        <a href="4-1.jsp"><i class="fa fa-diamond"></i> <span class="nav-label">药品用量估计</span></a>
                    </li>
                    <li class="active">
                        <a href="5-1.jsp"><i class="fa fa-files-o"></i> <span class="nav-label">医保政策</span></a>
                    </li>
                    <li>
                        <a href="6-1.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">诊疗计划</span></a>
                    </li>
                    <li>
                        <a href="7-1.jsp"><i class="fa fa-table"></i> <span class="nav-label">出诊信息</span></a>
                    </li>
                    <li>
                        <a href="8-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料</span></a>
                    </li>
                    <li>
                    	 <a href="9-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
                    </li>
                </ul>
            </div>
        </nav>

  <div id="page-wrapper" class="gray-bg">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>医保政策信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.jsp">首页</a>
                        </li>
                         <li>
                                                  <strong>   医保政策信息</strong>  
                        </li>
                       
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

<form role="search" onsubmit="false" id="searchForm">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="mcp_id">医保编号</label>
                            <input type="text" id="mcp_id" name="mcp_id" value="" placeholder="请输入医保编号" class="form-control">
                        </div>
                    </div>
                     <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="num">政策编号</label>
                            <input type="text" id="num" name="num" value="" placeholder="请输入政策编号" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="title">政策标题</label>
                            <input type="text" id="title" name="title" value="" placeholder="请输入政策标题" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="date_added">发布时间</label>
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_added" type="text" class="form-control" value="03/04/2014">
                            </div>
                        </div>
                    </div>
                  
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="place">地区</label>
                           <select class="form-control m-b" name="account">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                    </select>
                        </div>
                    </div>
                    
                </div>

<button type="button" class="btn btn-w-m btn-primary">查找</button>

            </div>
            
            </form>
            

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15">
                                <thead>
                                <tr>

                                    <th>医保编号</th>
                                    <th data-hide="phone">政策编号</th>
                                    <th data-hide="phone">政策标题</th>
                                    <th data-hide="phone">发布时间</th>
                                    <th data-hide="phone,tablet" >地区</th>
                                    <th data-hide="all">內容</th>
                                    

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                       3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                          这是一个长期公认的事实，一个读者会被可读的
                                           一页的内容，当看它的布局。使用Lorem存有点
                                          它有一个更多或更少的正常分布的信件，而不是使用
                                           内容在这里，内容在这里，使它看起来像可读的英语。
                                    </td>
                                    
                                  
                                </tr>
                                 <tr>
                                    <td>
                                       3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                          这是一个长期公认的事实，一个读者会被可读的
                                           一页的内容，当看它的布局。使用Lorem存有点
                                          它有一个更多或更少的正常分布的信件，而不是使用
                                           内容在这里，内容在这里，使它看起来像可读的英语。
                                    </td>
                                    
                                    
                                </tr>
                                 <tr>
                                    <td>
                                       3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                          这是一个长期公认的事实，一个读者会被可读的
                                           一页的内容，当看它的布局。使用Lorem存有点
                                          它有一个更多或更少的正常分布的信件，而不是使用
                                           内容在这里，内容在这里，使它看起来像可读的英语。
                                    </td>
                                    
                                   
                                </tr>
                                 <tr>
                                    <td>
                                       3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                        03/04/2015
                                    </td>
                                   <td>
                                          这是一个长期公认的事实，一个读者会被可读的
                                           一页的内容，当看它的布局。使用Lorem存有点
                                          它有一个更多或更少的正常分布的信件，而不是使用
                                           内容在这里，内容在这里，使它看起来像可读的英语。
                                    </td>
                                    
                                
                                </tr>
                                <tr>
                                    <td>
                                        642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $6843.00
                                    </td>
                                    <td>
                                        10/04/2015
                                    </td>
                                    <td>
                                        13/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                  
                                </tr>
                                <tr>
                                    <td>
                                        7435
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $750.00
                                    </td>
                                    <td>
                                        04/04/2015
                                    </td>
                                    <td>
                                        14/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                    <td>
                                        03/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                        324
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $320.00
                                    </td>
                                    <td>
                                        12/04/2015
                                    </td>
                                    <td>
                                        21/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        546
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $2770.00
                                    </td>
                                    <td>
                                        06/07/2015
                                    </td>
                                    <td>
                                        04/08/2015
                                    </td>
                                    <td>
                                        <span class="label label-danger">Canceled</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        6327
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $8560.00
                                    </td>
                                    <td>
                                        01/12/2015
                                    </td>
                                    <td>
                                        05/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $6843.00
                                    </td>
                                    <td>
                                        10/04/2015
                                    </td>
                                    <td>
                                        13/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        7435
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $750.00
                                    </td>
                                    <td>
                                        04/04/2015
                                    </td>
                                    <td>
                                        14/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        324
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $320.00
                                    </td>
                                    <td>
                                        12/04/2015
                                    </td>
                                    <td>
                                        21/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-warning">Expired</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        546
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $2770.00
                                    </td>
                                    <td>
                                        06/07/2015
                                    </td>
                                    <td>
                                        04/08/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                  
                                </tr>
                                <tr>
                                    <td>
                                        6327
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $8560.00
                                    </td>
                                    <td>
                                        01/12/2015
                                    </td>
                                    <td>
                                        05/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $6843.00
                                    </td>
                                    <td>
                                        10/04/2015
                                    </td>
                                    <td>
                                        13/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        7435
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $750.00
                                    </td>
                                    <td>
                                        04/04/2015
                                    </td>
                                    <td>
                                        14/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                    <td>
                                        03/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        324
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $320.00
                                    </td>
                                    <td>
                                        12/04/2015
                                    </td>
                                    <td>
                                        21/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        546
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $2770.00
                                    </td>
                                    <td>
                                        06/07/2015
                                    </td>
                                    <td>
                                        04/08/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        6327
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $8560.00
                                    </td>
                                    <td>
                                        01/12/2015
                                    </td>
                                    <td>
                                        05/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $6843.00
                                    </td>
                                    <td>
                                        10/04/2015
                                    </td>
                                    <td>
                                        13/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        7435
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $750.00
                                    </td>
                                    <td>
                                        04/04/2015
                                    </td>
                                    <td>
                                        14/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        324
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $320.00
                                    </td>
                                    <td>
                                        12/04/2015
                                    </td>
                                    <td>
                                        21/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        546
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $2770.00
                                    </td>
                                    <td>
                                        06/07/2015
                                    </td>
                                    <td>
                                        04/08/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        6327
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $8560.00
                                    </td>
                                    <td>
                                        01/12/2015
                                    </td>
                                    <td>
                                        05/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                        642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $6843.00
                                    </td>
                                    <td>
                                        10/04/2015
                                    </td>
                                    <td>
                                        13/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                  
                                </tr>
                                <tr>
                                    <td>
                                        7435
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $750.00
                                    </td>
                                    <td>
                                        04/04/2015
                                    </td>
                                    <td>
                                        14/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-success">Shipped</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        3214
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $500.00
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                    <td>
                                        03/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                        324
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $320.00
                                    </td>
                                    <td>
                                        12/04/2015
                                    </td>
                                    <td>
                                        21/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td>
                                        546
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                        $2770.00
                                    </td>
                                    <td>
                                        06/07/2015
                                    </td>
                                    <td>
                                        04/08/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">Pending</span>
                                    </td>
                                    </tr>



                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="7">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>

                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2015
            </div>
        </div>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Data picker -->
    <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

    <!-- FooTable -->
    <script src="js/plugins/footable/footable.all.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();

            $('#date_added').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#date_modified').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

        });
        $("#searchForm").submit(function(){
				var mcp_id = $("#mcp_id").val();
				var num = $("#num").val();
				var title = $("#title").val();
				var date_added = $("#date_added").val();
				var place = $("#place").val();
				
				
				
				
				
			});

    </script>

</body>

</html>