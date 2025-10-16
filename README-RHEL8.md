0. podman run --name 'ministrace-ubi8'  -ti ubi8  /bin/bash
or podman run --name 'ministrace-ubi9'  -ti ubi9  /bin/bash
or podman run --name 'ministrace-ubi10' -ti ubi10 /bin/bash

1. # dnf install -y git gcc make kernel-headers curl python3
2. $ git clone https://github.com/masatake/ministrace
3. $ cd ministrace
4. $ git checkout RHEL
5. $ curl -LO https://git.kernel.org/torvalds/t/linux-6.18-rc1.tar.gz
6. $ tar zxvf linux-6.18-rc1.tar.gz
7. $ make LINUX_SRC=./linux-6.18-rc1
8. $ ./ministrace echo
   ...
