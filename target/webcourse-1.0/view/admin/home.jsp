<%@ include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Admin</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <em class="ace-icon fa fa-home home-icon"></em>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
                    <span class="input-icon">
                        <label for="nav-search-input"></label>
                            <input type="text" placeholder="Search ..."
                                   class="nav-search-input"
                                   id="nav-search-input"
                                   autocomplete="off"/>
                            <em class="ace-icon fa fa-search nav-search-icon"></em>
                    </span>
                </form>
            </div><!-- /.nav-search -->
        </div>

        <div class="page-content">
            <div class="ace-settings-container" id="ace-settings-container">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <em class="ace-icon fa fa-cog bigger-130"></em>
                </div>

                <div class="ace-settings-box clearfix" id="ace-settings-box">
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <div class="pull-left">
                                <label for="skin-colorpicker"></label>
                                <select id="skin-colorpicker" class="hide">
                                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                </select>
                            </div>
                            <span>&nbsp; Choose Skin</span>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-navbar" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-sidebar" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-breadcrumbs" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-add-container" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-add-container">
                                Inside
                                <strong>.container</strong>
                            </label>
                        </div>
                    </div><!-- /.pull-left -->

                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                        </div>
                    </div><!-- /.pull-left -->
                </div><!-- /.ace-settings-box -->
            </div><!-- /.ace-settings-container -->

            <div class="page-header">
                <h1>
                    Dashboard
                    <small>
                        <em class="ace-icon fa fa-angle-double-right"></em>
                        overview &amp; stats
                    </small>
                </h1>
            </div><!-- /.page-header -->

            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    <div class="alert alert-block alert-success">
                        <button type="button" class="close" data-dismiss="alert">
                            <em class="ace-icon fa fa-times"></em>
                        </button>

                        <em class="ace-icon fa fa-check green"></em>

                        Welcome to
                        <strong class="green">
                            Ace
                            <small>(v1.4)</small>
                        </strong>,
                        лёгкий, многофункциональный и простой в использовании шаблон для админки на bootstrap 3.3.6.
                        Загрузить исходники с <a href="https://github.com/bopoda/ace">github</a> (with minified ace
                        js/css files).
                    </div>

                    <div class="row">
                        <div class="space-6"></div>

                        <div class="col-sm-7 infobox-container">
                            <div class="infobox infobox-green">
                                <div class="infobox-icon">
                                    <em class="ace-icon fa fa-comments"></em>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">32</span>
                                    <div class="infobox-content">comments + 2 reviews</div>
                                </div>

                                <div class="stat stat-success">8%</div>
                            </div>

                            <div class="infobox infobox-blue">
                                <div class="infobox-icon">
                                    <em class="ace-icon fa fa-twitter"></em>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">11</span>
                                    <div class="infobox-content">new followers</div>
                                </div>

                                <div class="badge badge-success">
                                    +32%
                                    <em class="ace-icon fa fa-arrow-up"></em>
                                </div>
                            </div>

                            <div class="infobox infobox-pink">
                                <div class="infobox-icon">
                                    <em class="ace-icon fa fa-shopping-cart"></em>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">8</span>
                                    <div class="infobox-content">new orders</div>
                                </div>
                                <div class="stat stat-important">4%</div>
                            </div>

                            <div class="infobox infobox-red">
                                <div class="infobox-icon">
                                    <em class="ace-icon fa fa-flask"></em>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">7</span>
                                    <div class="infobox-content">experiments</div>
                                </div>
                            </div>

                            <div class="infobox infobox-orange2">
                                <div class="infobox-chart">
                                    <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-data-number">6,251</span>
                                    <div class="infobox-content">pageviews</div>
                                </div>

                                <div class="badge badge-success">
                                    7.2%
                                    <em class="ace-icon fa fa-arrow-up"></em>
                                </div>
                            </div>

                            <div class="infobox infobox-blue2">
                                <div class="infobox-progress">
                                    <div class="easy-pie-chart percentage" data-percent="42" data-size="46">
                                        <span class="percent">42</span>%
                                    </div>
                                </div>

                                <div class="infobox-data">
                                    <span class="infobox-text">traffic used</span>

                                    <div class="infobox-content">
                                        <span class="bigger-110">~</span>
                                        58GB remaining
                                    </div>
                                </div>
                            </div>

                            <div class="space-6"></div>

                            <div class="infobox infobox-green infobox-small infobox-dark">
                                <div class="infobox-progress">
                                    <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
                                        <span class="percent">61</span>%
                                    </div>
                                </div>

                                <div class="infobox-data">
                                    <div class="infobox-content">Task</div>
                                    <div class="infobox-content">Completion</div>
                                </div>
                            </div>

                            <div class="infobox infobox-blue infobox-small infobox-dark">
                                <div class="infobox-chart">
                                    <span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
                                </div>

                                <div class="infobox-data">
                                    <div class="infobox-content">Earnings</div>
                                    <div class="infobox-content">$32,000</div>
                                </div>
                            </div>

                            <div class="infobox infobox-grey infobox-small infobox-dark">
                                <div class="infobox-icon">
                                    <em class="ace-icon fa fa-download"></em>
                                </div>

                                <div class="infobox-data">
                                    <div class="infobox-content">Downloads</div>
                                    <div class="infobox-content">1,205</div>
                                </div>
                            </div>
                        </div>

                        <div class="vspace-12-sm"></div>

                        <div class="col-sm-5">
                            <div class="widget-box">
                                <div class="widget-header widget-header-flat widget-header-small">
                                    <h5 class="widget-title">
                                        <em class="ace-icon fa fa-signal"></em>
                                        Traffic Sources
                                    </h5>

                                    <div class="widget-toolbar no-border">
                                        <div class="inline dropdown-hover">
                                            <button class="btn btn-minier btn-primary">
                                                This Week
                                                <em class="ace-icon fa fa-angle-down icon-on-right bigger-110"></em>
                                            </button>

                                            <ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
                                                <li class="active">
                                                    <a href="#" class="blue">
                                                        <em class="ace-icon fa fa-caret-right bigger-110">&nbsp;</em>
                                                        This Week
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <em class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</em>
                                                        Last Week
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <em class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</em>
                                                        This Month
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <em class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</em>
                                                        Last Month
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main">
                                        <div id="piechart-placeholder"></div>

                                        <div class="hr hr8 hr-double"></div>

                                        <div class="clearfix">
                                            <div class="grid3">
															<span class="grey">
																<em class="ace-icon fa fa-facebook-square fa-2x blue"></em>
																&nbsp; likes
															</span>
                                                <h4 class="bigger pull-right">1,255</h4>
                                            </div>

                                            <div class="grid3">
															<span class="grey">
																<em class="ace-icon fa fa-twitter-square fa-2x purple"></em>
																&nbsp; tweets
															</span>
                                                <h4 class="bigger pull-right">941</h4>
                                            </div>

                                            <div class="grid3">
															<span class="grey">
																<em class="ace-icon fa fa-pinterest-square fa-2x red"></em>
																&nbsp; pins
															</span>
                                                <h4 class="bigger pull-right">1,050</h4>
                                            </div>
                                        </div>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div><!-- /.widget-box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <div class="hr hr32 hr-dotted"></div>

                    <div class="row">
                        <div class="col-sm-5">
                            <div class="widget-box transparent">
                                <div class="widget-header widget-header-flat">
                                    <h4 class="widget-title lighter">
                                        <em class="ace-icon fa fa-star orange"></em>
                                        Popular Domains
                                    </h4>

                                    <div class="widget-toolbar">
                                        <a href="#" data-action="collapse">
                                            <em class="ace-icon fa fa-chevron-up"></em>
                                        </a>
                                    </div>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main no-padding">
                                        <table class="table table-bordered table-striped">
                                            <caption></caption>
                                            <thead class="thin-border-bottom">
                                            <tr>
                                                <th scope="col">
                                                    <em class="ace-icon fa fa-caret-right blue"></em>name
                                                </th>

                                                <th scope="col">
                                                    <em class="ace-icon fa fa-caret-right blue"></em>price
                                                </th>

                                                <th scope="col" class="hidden-480">
                                                    <em class="ace-icon fa fa-caret-right blue"></em>status
                                                </th>
                                            </tr>
                                            </thead>

                                            <tbody>
                                            <tr>
                                                <td>internet.com</td>

                                                <td>
                                                    <small>
                                                        <s class="red">$29.99</s>
                                                    </small>
                                                    <strong class="green">$19.99</strong>
                                                </td>

                                                <td class="hidden-480">
                                                    <span class="label label-info arrowed-right arrowed-in">on sale</span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>online.com</td>

                                                <td>
                                                    <strong class="blue">$16.45</strong>
                                                </td>

                                                <td class="hidden-480">
                                                    <span class="label label-success arrowed-in arrowed-in-right">approved</span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>newnet.com</td>

                                                <td>
                                                    <strong class="blue">$15.00</strong>
                                                </td>

                                                <td class="hidden-480">
                                                    <span class="label label-danger arrowed">pending</span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>web.com</td>

                                                <td>
                                                    <small>
                                                        <s class="red">$24.99</s>
                                                    </small>
                                                    <strong class="green">$19.95</strong>
                                                </td>

                                                <td class="hidden-480">
                                                    <span class="label arrowed">
                                                        <s>out of stock</s>
                                                    </span>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>domain.com</td>

                                                <td>
                                                    <strong class="blue">$12.00</strong>
                                                </td>

                                                <td class="hidden-480">
                                                    <span class="label label-warning arrowed arrowed-right">SOLD</span>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div><!-- /.widget-box -->
                        </div><!-- /.col -->

                        <div class="col-sm-7">
                            <div class="widget-box transparent">
                                <div class="widget-header widget-header-flat">
                                    <h4 class="widget-title lighter">
                                        <em class="ace-icon fa fa-signal"></em>
                                        Sale Stats
                                    </h4>

                                    <div class="widget-toolbar">
                                        <a href="#" data-action="collapse">
                                            <em class="ace-icon fa fa-chevron-up"></em>
                                        </a>
                                    </div>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main padding-4">
                                        <div id="sales-charts"></div>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div><!-- /.widget-box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <div class="hr hr32 hr-dotted"></div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="widget-box transparent" id="recent-box">
                                <div class="widget-header">
                                    <h4 class="widget-title lighter smaller">
                                        <em class="ace-icon fa fa-rss orange"></em>RECENT
                                    </h4>

                                    <div class="widget-toolbar no-border">
                                        <ul class="nav nav-tabs" id="recent-tab">
                                            <li class="active">
                                                <a data-toggle="tab" href="#task-tab">Tasks</a>
                                            </li>

                                            <li>
                                                <a data-toggle="tab" href="#member-tab">Members</a>
                                            </li>

                                            <li>
                                                <a data-toggle="tab" href="#comment-tab">Comments</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main padding-4">
                                        <div class="tab-content padding-8">
                                            <div id="task-tab" class="tab-pane active">
                                                <h4 class="smaller lighter green">
                                                    <em class="ace-icon fa fa-list"></em>
                                                    Sortable Lists
                                                </h4>

                                                <ul id="tasks" class="item-list">
                                                    <li class="item-orange clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Answering customer questions</span>
                                                        </label>

                                                        <div class="pull-right easy-pie-chart percentage"
                                                             data-size="30" data-color="#ECCB71" data-percent="42">
                                                            <span class="percent">42</span>%
                                                        </div>
                                                    </li>

                                                    <li class="item-red clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Fixing bugs</span>
                                                        </label>

                                                        <div class="pull-right action-buttons">
                                                            <a href="#" class="blue">
                                                                <em class="ace-icon fa fa-pencil bigger-130"></em>
                                                            </a>

                                                            <span class="vbar"></span>

                                                            <a href="#" class="red">
                                                                <em class="ace-icon fa fa-trash-o bigger-130"></em>
                                                            </a>

                                                            <span class="vbar"></span>

                                                            <a href="#" class="green">
                                                                <em class="ace-icon fa fa-flag bigger-130"></em>
                                                            </a>
                                                        </div>
                                                    </li>

                                                    <li class="item-default clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Adding new features</span>
                                                        </label>

                                                        <div class="pull-right pos-rel dropdown-hover">
                                                            <button class="btn btn-minier bigger btn-primary">
                                                                <em class="ace-icon fa fa-cog icon-only bigger-120"></em>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-caret dropdown-close dropdown-menu-right">
                                                                <li>
                                                                    <a href="#" class="tooltip-success"
                                                                       data-rel="tooltip"
                                                                       title="Mark&nbsp;as&nbsp;done">
                                                                        <span class="green">
                                                                            <em class="ace-icon fa fa-check bigger-110"></em>
                                                                        </span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-error"
                                                                       data-rel="tooltip" title="Delete">
                                                                        <span class="red">
                                                                            <em class="ace-icon fa fa-trash-o bigger-110"></em>
                                                                        </span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>

                                                    <li class="item-blue clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Upgrading scripts used in template</span>
                                                        </label>
                                                    </li>

                                                    <li class="item-grey clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Adding new skins</span>
                                                        </label>
                                                    </li>

                                                    <li class="item-green clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Updating server software up</span>
                                                        </label>
                                                    </li>

                                                    <li class="item-pink clearfix">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace"/>
                                                            <span class="lbl"> Cleaning up</span>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div id="member-tab" class="tab-pane">
                                                <div class="clearfix">
                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Bob Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/user.jpg"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Bob Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">20 min</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-warning label-sm">pending</span>

                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-yellow btn-no-border dropdown-toggle"
                                                                            data-toggle="dropdown"
                                                                            data-position="auto">
                                                                        <em class="ace-icon fa fa-angle-down icon-only bigger-120"></em>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-success"
                                                                               data-rel="tooltip" title="Approve">
                                                                                <span class="green">
                                                                                    <em class="ace-icon fa fa-check bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-warning"
                                                                               data-rel="tooltip" title="Reject">
                                                                                <span class="orange">
                                                                                    <em class="ace-icon fa fa-times bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error"
                                                                               data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <em class="ace-icon fa fa-trash-o bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Joe Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar2.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Joe Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">1 hour</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-warning label-sm">pending</span>

                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-yellow btn-no-border dropdown-toggle"
                                                                            data-toggle="dropdown"
                                                                            data-position="auto">
                                                                        <em class="ace-icon fa fa-angle-down icon-only bigger-120"></em>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-success"
                                                                               data-rel="tooltip" title="Approve">
                                                                                <span class="green">
                                                                                    <em class="ace-icon fa fa-check bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-warning"
                                                                               data-rel="tooltip" title="Reject">
                                                                                <span class="orange">
                                                                                    <em class="ace-icon fa fa-times bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error"
                                                                               data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <em class="ace-icon fa fa-trash-o bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Jim Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Jim Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">2 hour</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-warning label-sm">pending</span>

                                                                <div class="inline position-relative">
                                                                    <button class="btn btn-minier btn-yellow btn-no-border dropdown-toggle"
                                                                            data-toggle="dropdown"
                                                                            data-position="auto">
                                                                        <em class="ace-icon fa fa-angle-down icon-only bigger-120"></em>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                        <li>
                                                                            <a href="#" class="tooltip-success"
                                                                               data-rel="tooltip" title="Approve">
                                                                                <span class="green">
                                                                                    <em class="ace-icon fa fa-check bigger-110"></em>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-warning"
                                                                               data-rel="tooltip" title="Reject">
                                                                                    <span class="orange">
                                                                                        <em class="ace-icon fa fa-times bigger-110"></em>
                                                                                    </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error"
                                                                               data-rel="tooltip" title="Delete">
                                                                                    <span class="red">
                                                                                        <em class="ace-icon fa fa-trash-o bigger-110"></em>
                                                                                    </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Alex Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar5.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Alex Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">3 hour</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-danger label-sm">blocked</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Bob Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar2.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Bob Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">6 hour</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-success label-sm arrowed-in">approved</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Susan's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar3.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Susan</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">yesterday</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-success label-sm arrowed-in">approved</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Phil Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar4.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Phil Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">2 days ago</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-info label-sm arrowed-in arrowed-in-right">online</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv memberdiv">
                                                        <div class="user">
                                                            <img alt="Alexa Doe's avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar1.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Alexa Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">3 days ago</span>
                                                            </div>

                                                            <div>
                                                                <span class="label label-success label-sm arrowed-in">approved</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="space-4"></div>

                                                <div class="center">
                                                    <em class="ace-icon fa fa-users fa-2x green middle"></em>

                                                    &nbsp;
                                                    <a href="#" class="btn btn-sm btn-white btn-info">
                                                        See all members &nbsp;
                                                        <em class="ace-icon fa fa-arrow-right"></em>
                                                    </a>
                                                </div>

                                                <div class="hr hr-double hr8"></div>
                                            </div><!-- /.#member-tab -->

                                            <div id="comment-tab" class="tab-pane">
                                                <div class="comments">
                                                    <div class="itemdiv commentdiv">
                                                        <div class="user">
                                                            <img alt="Bob Doe's Avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Bob Doe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="green">6 min</span>
                                                            </div>

                                                            <div class="text">
                                                                <em class="ace-icon fa fa-quote-left"></em>
                                                                Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Quisque commodo massa sed ipsum porttitor
                                                                facilisis &hellip;
                                                            </div>
                                                        </div>

                                                        <div class="tools">
                                                            <div class="inline position-relative">
                                                                <button class="btn btn-minier bigger btn-yellow dropdown-toggle"
                                                                        data-toggle="dropdown">
                                                                    <em class="ace-icon fa fa-angle-down icon-only bigger-120"></em>
                                                                </button>

                                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                    <li>
                                                                        <a href="#" class="tooltip-success"
                                                                           data-rel="tooltip" title="Approve">
                                                                                <span class="green">
                                                                                    <em class="ace-icon fa fa-check bigger-110"></em>
                                                                                </span>
                                                                        </a>
                                                                    </li>

                                                                    <li>
                                                                        <a href="#" class="tooltip-warning"
                                                                           data-rel="tooltip" title="Reject">
                                                                                <span class="orange">
                                                                                    <em class="ace-icon fa fa-times bigger-110"></em>
                                                                                </span>
                                                                        </a>
                                                                    </li>

                                                                    <li>
                                                                        <a href="#" class="tooltip-error"
                                                                           data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <em class="ace-icon fa fa-trash-o bigger-110"></em>
                                                                                </span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv commentdiv">
                                                        <div class="user">
                                                            <img alt="Jennifer's Avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar1.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Jennifer</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="blue">15 min</span>
                                                            </div>

                                                            <div class="text">
                                                                <em class="ace-icon fa fa-quote-left"></em>
                                                                Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Quisque commodo massa sed ipsum porttitor
                                                                facilisis &hellip;
                                                            </div>
                                                        </div>

                                                        <div class="tools">
                                                            <div class="action-buttons bigger-125">
                                                                <a href="#">
                                                                    <em class="ace-icon fa fa-pencil blue"></em>
                                                                </a>

                                                                <a href="#">
                                                                    <em class="ace-icon fa fa-trash-o red"></em>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv commentdiv">
                                                        <div class="user">
                                                            <img alt="Joe's Avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar2.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Joe</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="orange">22 min</span>
                                                            </div>

                                                            <div class="text">
                                                                <em class="ace-icon fa fa-quote-left"></em>
                                                                Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Quisque commodo massa sed ipsum porttitor
                                                                facilisis &hellip;
                                                            </div>
                                                        </div>

                                                        <div class="tools">
                                                            <div class="action-buttons bigger-125">
                                                                <a href="#">
                                                                    <em class="ace-icon fa fa-pencil blue"></em>
                                                                </a>

                                                                <a href="#">
                                                                    <em class="ace-icon fa fa-trash-o red"></em>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="itemdiv commentdiv">
                                                        <div class="user">
                                                            <img alt="Rita's Avatar"
                                                                 src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar3.png"/>
                                                        </div>

                                                        <div class="body">
                                                            <div class="name">
                                                                <a href="#">Rita</a>
                                                            </div>

                                                            <div class="time">
                                                                <em class="ace-icon fa fa-clock-o"></em>
                                                                <span class="red">50 min</span>
                                                            </div>

                                                            <div class="text">
                                                                <em class="ace-icon fa fa-quote-left"></em>
                                                                Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Quisque commodo massa sed ipsum porttitor
                                                                facilisis &hellip;
                                                            </div>
                                                        </div>

                                                        <div class="tools">
                                                            <div class="action-buttons bigger-125">
                                                                <a href="#">
                                                                    <em class="ace-icon fa fa-pencil blue"></em>
                                                                </a>

                                                                <a href="#">
                                                                    <em class="ace-icon fa fa-trash-o red"></em>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="hr hr8"></div>

                                                <div class="center">
                                                    <em class="ace-icon fa fa-comments-o fa-2x green middle"></em>

                                                    &nbsp;
                                                    <a href="#" class="btn btn-sm btn-white btn-info">
                                                        See all comments &nbsp;
                                                        <em class="ace-icon fa fa-arrow-right"></em>
                                                    </a>
                                                </div>

                                                <div class="hr hr-double hr8"></div>
                                            </div>
                                        </div>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div><!-- /.widget-box -->
                        </div><!-- /.col -->

                        <div class="col-sm-6">
                            <div class="widget-box">
                                <div class="widget-header">
                                    <h4 class="widget-title lighter smaller">
                                        <em class="ace-icon fa fa-comment blue"></em>
                                        Conversation
                                    </h4>
                                </div>

                                <div class="widget-body">
                                    <div class="widget-main no-padding">
                                        <div class="dialogs">
                                            <div class="itemdiv dialogdiv">
                                                <div class="user">
                                                    <img alt="Alexa's Avatar"
                                                         src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar1.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="time">
                                                        <em class="ace-icon fa fa-clock-o"></em>
                                                        <span class="green">4 sec</span>
                                                    </div>

                                                    <div class="name">
                                                        <a href="#">Alexa</a>
                                                    </div>
                                                    <div class="text">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit. Quisque commodo massa sed ipsum porttitor
                                                        facilisis.
                                                    </div>

                                                    <div class="tools">
                                                        <a href="#" class="btn btn-minier btn-info">
                                                            <em class="icon-only ace-icon fa fa-share"></em>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv dialogdiv">
                                                <div class="user">
                                                    <img alt="John's Avatar"
                                                         src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="time">
                                                        <em class="ace-icon fa fa-clock-o"></em>
                                                        <span class="blue">38 sec</span>
                                                    </div>

                                                    <div class="name">
                                                        <a href="#">John</a>
                                                    </div>
                                                    <div class="text">Raw denim you probably haven&#39;t heard of
                                                        them jean shorts Austin.
                                                    </div>

                                                    <div class="tools">
                                                        <a href="#" class="btn btn-minier btn-info">
                                                            <em class="icon-only ace-icon fa fa-share"></em>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv dialogdiv">
                                                <div class="user">
                                                    <img alt="Bob's Avatar" src="${pageContext.request.contextPath}/template/admin/images/avatars/user.jpg"/>
                                                </div>

                                                <div class="body">
                                                    <div class="time">
                                                        <em class="ace-icon fa fa-clock-o"></em>
                                                        <span class="orange">2 min</span>
                                                    </div>

                                                    <div class="name">
                                                        <a href="#">Bob</a>
                                                        <span class="label label-info arrowed arrowed-in-right">admin</span>
                                                    </div>
                                                    <div class="text">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit. Quisque commodo massa sed ipsum porttitor
                                                        facilisis.
                                                    </div>

                                                    <div class="tools">
                                                        <a href="#" class="btn btn-minier btn-info">
                                                            <em class="icon-only ace-icon fa fa-share"></em>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv dialogdiv">
                                                <div class="user">
                                                    <img alt="Jim's Avatar"
                                                         src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar4.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="time">
                                                        <em class="ace-icon fa fa-clock-o"></em>
                                                        <span class="grey">3 min</span>
                                                    </div>

                                                    <div class="name">
                                                        <a href="#">Jim</a>
                                                    </div>
                                                    <div class="text">Raw denim you probably haven&#39;t heard of
                                                        them jean shorts Austin.
                                                    </div>

                                                    <div class="tools">
                                                        <a href="#" class="btn btn-minier btn-info">
                                                            <em class="icon-only ace-icon fa fa-share"></em>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv dialogdiv">
                                                <div class="user">
                                                    <img alt="Alexa's Avatar"
                                                         src="${pageContext.request.contextPath}/template/admin/images/avatars/avatar1.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="time">
                                                        <em class="ace-icon fa fa-clock-o"></em>
                                                        <span class="green">4 min</span>
                                                    </div>

                                                    <div class="name">
                                                        <a href="#">Alexa</a>
                                                    </div>
                                                    <div class="text">Lorem ipsum dolor sit amet, consectetur
                                                        adipiscing elit.
                                                    </div>

                                                    <div class="tools">
                                                        <a href="#" class="btn btn-minier btn-info">
                                                            <em class="icon-only ace-icon fa fa-share"></em>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <form>
                                            <div class="form-actions">
                                                <div class="input-group">
                                                    <label>
                                                        <input placeholder="Type your message here ..." type="text"
                                                               class="form-control" name="message"/>
                                                    </label>
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-sm btn-info no-radius"
                                                                type="button">
                                                            <em class="ace-icon fa fa-share"></em>
                                                            Send
                                                        </button>
                                                    </span>
                                                </div>
                                            </div>
                                        </form>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div><!-- /.widget-box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <!-- PAGE CONTENT ENDS -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->
</body>
</html>
