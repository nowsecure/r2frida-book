# Troubleshooting

## Checking if the plugin is installed

List the IO plugins loaded into r2 with this line frida should appear in the list

`$ r2 -L | grep frida`

In case the plugin is not listed you can use the R\_DEBUG environment to get verbose logs when loading the plugins.

```
$ R_DEBUG=1 r2 -L 2>&1 | grep frida
```

## Installation order

If you install r2frida before r2 it is possible that r2 will not be able to create the last -&gt; ${VERSION} symlink in /usr/lib/radare2 and therefor not being able to load the plugin.

## Cleaning up

If you have multiple versions of r2 installed in different paths it is possible that r2 will missbehave because of loading incompatible APIs and ABIs.

* If you have installed r2 with the package manager, remove it
  * `$ apt remove radare2`
  * `$ dpkg --purge radare2`
* If did it from source:
  * `$ make uninstall`
  * `$ make purge`



