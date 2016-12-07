project('valatest', 'c', 'vala')

glib = dependency('glib-2.0')
gobject = dependency('gobject-2.0')
gmodule = dependency('gmodule-2.0')

foo_sources = ['plugin.vala', 'plugin-loader.vala']
foo_lib = shared_library('foo', foo_sources,
                         dependencies: [glib, gobject, gmodule])

foo_bin  = executable('foo', 'foo.vala',
                      dependencies: [glib, gobject],
                      link_with: foo_lib)

shared_module('bar', 'plugin-bar.vala',
              dependencies: [glib, gobject],
              link_with: foo_lib)

test('shared module', foo_bin)
