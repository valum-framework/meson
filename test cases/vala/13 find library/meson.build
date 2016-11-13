project('find vala library', 'vala', 'c')

valac = meson.get_compiler('vala')

glib = dependency('glib-2.0')
gobject = dependency('gobject-2.0')
zlib = valac.find_library('zlib')

e = executable('zlibtest', 'test.vala', dependencies : [glib, gobject, zlib])
test('testzlib', e)
