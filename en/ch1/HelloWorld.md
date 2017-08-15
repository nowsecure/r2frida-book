# Our first session (iOS)

Here we're assuming a jailbroken device, with r2frida dependencies that you would have with Workstation.

We're going to launch an r2 session using the special `frida://` URI which is
handled by the `r2frida` `r2pm` package that comes installed.

```sh
± r2 frida://$(idevice_id -l)/Safari
 -- Disassemble?! No Disassemble Johnny No. 5!!!
 ```

We use the `idevice_id -l` command which is part of [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice/)

## Help

Getting help for r2frida can be done using the `\?` command. The `?` command
alone will get help for r2, which is the primary environment you start in.
All r2frida commands will use this `\` prefix.

```md
[0x00000000]> \?
r2frida commands available via =!
?                          Show this help
?V                         Show target Frida version
/[x][j] <string|hexpairs>  Search hex/string pattern in memory ranges (see search.in=?)
/w[j] string               Search wide string
/v[1248][j] value          Search for a value honoring `e cfg.bigendian` of given width
i                          Show target information
ii[*]                      List imports
il                         List libraries
ie[*] <lib>                List exports/entrypoints of lib
is[*] (<lib>) <sym>        Show address of symbol
ic <class>                 List Objective-C classes or methods of <class>
ip <protocol>              List Objective-C protocols or methods of <protocol>
fd[*j] <address>           Inverse symbol resolution
dd[-][fd] ([newfd])        List, dup2 or close filedescriptors
dm[.|j|*]                  Show memory regions
dma <size>                 Allocate <size> bytes on the heap, address is returned
dmas <string>              Allocate a string inited with <string> on the heap
dmad <addr> <size>         Allocate <size> bytes on the heap, copy contents from <addr>
dmal                       List live heap allocations created with dma[s]
dma- (<addr>...)           Kill the allocations at <addr> (or all of them without param)
dmp <addr> <size> <perms>  Change page at <address> with <size>, protection <perms> (rwx)
dp                         Show current pid
dpt                        Show threads
dr                         Show thread registers (see dpt)
env [k[=v]]                Get/set environment variable
dl libname                 Dlopen a library
dl2 libname [main]         Inject library using Frida's >= 8.2 new API
dt <addr> ..               Trace list of addresses
dt-                        Clear all tracing
dtr <addr> (<regs>...)     Trace register values
dtf <addr> [fmt]           Trace address with format (^ixz) (see dtf?)
dtSf[*j] [sym|addr]        Trace address or symbol using the stalker (Frida >= 10.3.13)
dtS[*j] seconds            Trace all threads for given seconds using the stalker
di[0,1,-1] [addr]          Intercept and replace return value of address
dx [hexpairs]              Inject code and execute it (TODO)
dxc [sym|addr] [args..]    Call the target symbol with given args
. script                   Run script
<space> code..             Evaluate Cycript code
eval code..                Evaluate Javascript code in agent side
resume                     Resume spawned process
```
