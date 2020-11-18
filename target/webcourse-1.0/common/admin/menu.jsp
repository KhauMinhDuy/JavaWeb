<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <em class="ace-icon fa fa-signal"></em>
            </button>

            <button class="btn btn-info">
                <em class="ace-icon fa fa-pencil"></em>
            </button>

            <button class="btn btn-warning">
                <em class="ace-icon fa fa-users"></em>
            </button>

            <button class="btn btn-danger">
                <em class="ace-icon fa fa-cogs"></em>
            </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>

    <ul class="nav nav-list">
        <li class="">
            <a href="#" class="dropdown-toggle">
                <em class="menu-icon fa fa-list"></em>
                <span class="menu-text"></span>
                Quan Ly Bai Viet
                <strong class="arrow fa fa-angle-down"></strong>
            </a>

            <strong class="arrow"></strong>

            <ul class="submenu">
                <li class="">
                    <a href="${pageContext.request.contextPath}/admin-new" >
                        <em class="menu-icon fa fa-caret-right"></em>
                            Danh sach bai viet
                        <strong class="arrow fa fa-angle-down"></strong>
                    </a>
                    <strong class="arrow"></strong>
                </li>
            </ul>
        </li>
    </ul>

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <em id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
           data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right">
        </em>
    </div>
</div>
