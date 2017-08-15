# Target Information

Retrieve information about the target we're connected to.

```md
[0x00000000]> \i
arch    arm
bits    64
os      darwin
pid     666
uid     501
objc    true
java    false
cylang  true
```

Here we can see we're targetting an `arm64` binary. These details can be
useful later when we're scripting r2frida to perform actions based on
information we learn from the binary.