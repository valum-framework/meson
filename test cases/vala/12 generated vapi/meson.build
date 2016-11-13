project('vapi-test', ['c', 'vala'])

gnome = import('gnome')
subdir('libfoo')
subdir('libbar')

vapiexe = executable('vapigen-test',
  'main.vala',
  dependencies: [dependency('glib-2.0'), dependency('gobject-2.0'), libbar_vapi],
  install: true,
)

test('vapigen-test', vapiexe)
