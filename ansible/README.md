
Install:

```
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible --version
```

then

```ansible-playbook setup.yml --ask-become-pass```

I'm sure this is doable in ansible too, but it was a bit of a hassle
when I implemented the configuration, so I didn't bother. 

You have to manually set the font to `MesloLGS NF` in the ubuntu terminal.

also, you need to run 

`chsh -s $(which zsh)`

todo: install docker, jetbrains apps, vs code etc


The docker file is for testing in a container. 

# Nvidia

When running Debian, make sure that `/etc/apt/sources.list` include non-free packages

deb http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free

Try executing `xrandr --auto` if laptop monitor is black. 









