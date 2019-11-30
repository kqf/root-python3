FROM archlinux/base

RUN pacman -Syy --noconfirm 

# Install all dependencies and python
RUN pacman --noconfirm -S gcc bash awk grep python python-pip

# Install root itself
RUN pacman --noconfirm -S root
