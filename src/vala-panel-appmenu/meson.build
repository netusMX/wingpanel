subdir('dbusmenu-importer')
sources = files(
    'appmenu-abstractions.vala',
    'registrar.vala',
    'menu-widget.vala',
    'helper-desktop.vala',
    'helper-dbus.vala',
    'helper-dbusmenu.vala',
    'helper-menumodel.vala',
    'launcher.vapi',
    'dbus-menu-importer.vapi',
    'launcher.c',
    'launcher.h'
)

bamf_src = files(
    'appmenu-bamf.vala'
)

wnck_src = files(
    'appmenu-wnck.vala',
    'matcher.c',
    'matcher.h',
    'libwnck-aux.c',
    'libwnck-aux.h',
    'matcher.vapi'
)

libres = gnome.compile_resources(
    'vala-panel-appmenu', 'libappmenu.gresource.xml',
    source_dir: '.',
    c_name: 'lib'
)
valac = meson.get_compiler('vala')
posix_dep = valac.find_library('posix')
vver = valac.version()
addons_versions = {
    '>0.35.0': '<0.36.18',
    '>0.39.0': '<0.40.14',
    '>0.41.0': '<0.42.6',
    '>0.43.0': '<0.44.0'
}
foreach series, ver : addons_versions
    if vver.version_compare(series) and vver.version_compare(ver)
            sources += files('../vapi/gio-addons-2.0.vapi')
        break
    endif
endforeach

appmenu_deps = [gio_unix_dep, gtk_dep, importer_dep, posix_dep]
appmenu_cflags = []
sources += bamf_src
appmenu_deps += bamf_dep

appmenu_lib = static_library('libappmenu',
        sources, config,
        dependencies: appmenu_deps,
        c_args: appmenu_cflags,
        pic: true
    )
appmenu_inc = include_directories('.')

appmenu_dep = declare_dependency(
    include_directories: appmenu_inc,
    dependencies: [gtk_dep, gio_unix_dep],
    link_whole: appmenu_lib
)
