<%@ page language="java" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>总控制平台</title>
    <%--gd资源--%>
    <!--<base href="http://webapi.amap.com/ui/1.0/ui/overlay/SimpleInfoWindow/examples/" />-->
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main.css?v=1.0" />
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <link  rel="stylesheet" href="../resources/totalcont/css/ngDialog-theme-plain.css" />
    <link  rel="stylesheet" href="../resources/totalcont/css/ngDialog-custom-width.css" />
    <link  rel="stylesheet" href="../resources/totalcont/css/ngDialog.css" />
    <link rel="stylesheet" href="../resources/totalcont/css/ngDialog-theme-default.css">
    <script type="text/javascript" src="../resources/js/plugin/angular.min.js"></script>
    <script type="text/javascript" src="../resources/js/plugin/angular-route.js"></script>
    <script src="../resources/js/plugin/echarts.simple.min.js"></script>
    <script src="../resources/js/plugin/angular-ui-bootstrap.js"></script>
    <script type="text/javascript" src="../resources/js/ocLazyLoad/ocLazyLoad.min.js"></script>

    <script src="http://webapi.amap.com/maps?v=1.4.0&key=d99621e386290c9667fd8bfe2513de32&plugin=AMap.Scale,AMap.OverView,AMap.ToolBar,AMap.PolyEditor,AMap.CircleEditor,AMap.MouseTool,AMap.RangingTool,AMap.MapType"></script>
    <script type="text/javascript" src="../resources/js/jquery/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="../resources/js/angular/ngDialog.min.js"></script>
    <!-- UI组件库 1.0 -->
    <script src="http://webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <%--杀鸡师资源--%>
    <link rel="stylesheet" href="../resources/totalcont/css/common.css">
    <link rel="stylesheet/less" type="text/css" href="../resources/totalcont/css/main.less"/>
    <script src="../resources/totalcont/js/less.js"></script>
    <script src="../resources/totalcont/js/main.js"></script>
</head>
<body ng-app="app" ng-controller="mainCtrl">
<header>
    <h1>电子车牌GIS系统</h1>
    <button ng-click="logout('/login')"><img src="../resources/totalcont/images/exit.png"/> 退出系统</button>
</header>
<aside>
    <ul>
        <dd ng-repeat="menu in routeList">
            <span><a href="#[[menu.path]]"><i></i>[[menu.name]]</a></span>
            <p>
                <a ng-repeat="menus in menu.childMenu" href="#[[menus.path]]" class="">[[menus.name]]</a>
            </p>
        </dd>
    </ul>
</aside>
<div class="main" ng-view>
</div>

<script type="text/javascript" src="../app/app.js"></script>
<script src="../ctrl/home.js"></script>
<script src="../ctrl/dataAnalsys.js"></script>
<script src="../ctrl/permission.js"></script>
<script src="../ctrl/personnelManagement.js"></script>
<script src="../ctrl/prisonManagement.js"></script>
<script src="../ctrl/device.js"></script>
</body>
</html>