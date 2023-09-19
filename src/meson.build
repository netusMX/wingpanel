subdir('vala-panel-appmenu')
wingpanel_files = files(
    'PanelWindow.vala',
    'SessionManager.vala',
    'Application.vala',
    'Utils.vala',
    'Services/BackgroundManager.vala',
    'Services/IndicatorSorter.vala',
    'Services/PopoverManager.vala',
    'Widgets/IndicatorEntry.vala',
    'Widgets/IndicatorMenuBar.vala',
    'Widgets/IndicatorPopover.vala',
    'Widgets/Panel.vala',
    'Widgets/StyleClass.vala',
)

wingpanel_deps = [
    appmenu_dep,
    libwingpanel_dep,
    granite_dep,
    gdk_x11_dep,
    posix_dep
]

executable(meson.project_name(),
    css_gresource,
    wingpanel_files,
    libres,
    dependencies: wingpanel_deps,
    install: true
)
