uname -r -v


sudo apt install -y \\n    build-essential flex bison \\n    libgtk-3-dev libelf-dev libncurses-dev autoconf \\n    libudev-dev libtool zip unzip v4l-utils libssl-dev \\n    python3-pip cmake git iputils-ping net-tools dwarves \\n    guvcview python-is-python3 bc
  105  cd /usr/src
  106  TAGVERNUM=5.15.153.1
  107  TAGVER=linux-msft-wsl-${TAGVERNUM} \\n  && WINUSERNAME=<windows username>
  108  TAGVER=linux-msft-wsl-${TAGVERNUM} \\n  && WINUSERNAME=nthings
  109  sudo git clone --depth 1 -b ${TAGVER} \\n    https://github.com/microsoft/WSL2-Linux-Kernel.git \\n    ${TAGVERNUM}-microsoft-standard \\n  && cd ${TAGVERNUM}-microsoft-standard



sudo chmod 777 .config \\n  && sudo make clean
  121  sudo make -j$(nproc) KCONFIG_CONFIG=.config \\n  && sudo make modules_install -j$(nproc) \\n  && sudo make install -j$(nproc)
  122  sudo rm /mnt/c/Users/${WINUSERNAME}/vmlinux
  123  WINUSERNAME=nthings
  124  sudo rm /mnt/c/Users/${WINUSERNAME}/vmlinux
  125  sudo cp /usr/src/${TAGVERNUM}-microsoft-standard/vmlinux /mnt/c/Users/${WINUSERNAME}/
  126  TAGVERNUM=5.15.153.1
  127  TAGVER=linux-msft-wsl-${TAGVERNUM} \\n  && WINUSERNAME=nthings
  128  sudo cp /usr/src/${TAGVERNUM}-microsoft-standard/vmlinux /mnt/c/Users/${WINUSERNAME}/
  129  cat << 'EOT' > /mnt/c/Users/${WINUSERNAME}/.wslconfig\n[wsl2]\nkernel=C:\\Users\\nthings\\vmlinux\nEOT
  130  uname -r -v