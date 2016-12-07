public Foo.PluginModule plugin_module;

public int main () {
    plugin_module = new Foo.PluginModule (".", "bar");

    if (!plugin_module.load ()) {
        return 1;
    }

    var plugin = Object.new (plugin_module.plugin_type) as Foo.Plugin;

    assert ("bar" == plugin.bar ());

    return 0;
}
