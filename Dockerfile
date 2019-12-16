FROM archlinux/base

RUN pacman -Syy --noconfirm  \
    && pacman --noconfirm -S gcc bash awk grep python python-pip root
