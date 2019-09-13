# atomic-boxes

Vagrant boxes with Atomic OS like VMware-Photon / CoreOS / Feroda-CoreOS

This repository contains files used by [Packer](https://www.packer.io/) to create images for Vagrant Cloud with Atomic OS

####Table of Contents

1. [Overview](#overview)
2. [Requirements](#requirements)
3. [Building](#building)

##Overview

CoreOS provides Vagrant boxes for each release, in formats compatible with the [VirtualBox](http://alpha.release.core-os.net/amd64-usr/current/coreos_production_vagrant.json) and [VMware Fusion](http://alpha.release.core-os.net/amd64-usr/current/coreos_production_vagrant_vmware_fusion.json) providers. However, they do not (at the time of this writing) provide a Vagrant box for use with the libvirt provider. This repository provides a Packer template that can build such a box.

##Requirements

For box creation:

1. [Packer](https://www.packer.io/downloads.html)

For launching VMs using the box:

1. [Vagrant](http://www.vagrantup.com/downloads.html)
2. [libvirt](http://libvirt.org/)
3. [vagrant-libvirt](https://github.com/pradels/vagrant-libvirt)

# Installation
```
$ git clone https://gitlab.com/actiniumio/atomic-boxes .
$ cd atomic-boxes
```

## With Makefile

### Basic example
```
$ make all
```
```
$ make coreos
```
```
$ make photon
```
## Without Makefile
Without buidling from the Makefile

### Basic example
```
$ packer build -force coreos.json
```
```
$ packer build -force photon.json
```
