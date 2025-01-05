# Normally, # is the comment character, however, when it is followed by !
# it becomes a `shebang` line, which is recognizd by the OS as a directive to the interpreter
# that will be used to execute the script.
#!/bin/sh
sudo parted /dev/sdc --script mklabel gpt mkpart xfspart xfs 0% 100%
sudo mkfs.xfs /dev/sdc1
sudo partprobe /dev/sdc1