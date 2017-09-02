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

## Loading information into r2

One key concept of r2 is the ortogonality, that allows us to mix different commands together to achieve new functionalities instead of having to deploy an entire new program.

By following this, most commands accept the '\*' suffix to show the output in r2 commands, also, if we prefix the command with a dot '.', r2 will interpret the output of the command

```
[0x00000000]> .\i*
```



