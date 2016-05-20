Functional Vilnius #9 Haskell workshop
=============

This guide will prepare on setting up your computer
for the workshop.


Installing Haskell
------------------

We recommend to install Haskell locally on your computer
instead of using a VM, because you can then use your favourite
text editor and a familiar environment. If, however, you are
having issues with doing so, we will provide an Ubuntu-based
Vagrant VM, see below on **Using Vagrant**.

The easiest way to do so is using [stack](http://www.haskellstack.org).

### Installing `stack`

stack is a tool for building Haskell projects and managing dependencies,
including installing the GHC Haskell compiler itself. It is essentially
a wrapper around an older and 'lower-level' Haskell build tool called `cabal`.

stack is available on most platforms, please follow the [official guides from
stack](http://docs.haskellstack.org/en/stable/README/#how-to-install) on how to
install it on your OS.

Next, you should install GHC via stack.

### Installing GHC

The Glasgow Haskell Compiler (GHC) is the 'default' Haskell compiler, which
we will use.

To install it, simply run:

    stack setup 7.10

This might take a while.


### Using Vagrant

* [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Install Vagrant](https://www.vagrantup.com/downloads.html)
* First, obtain this repository, either via `git`:

    git clone  https://github.com/functional-vilnius/fpv9-haskell-workshop

or simply by downloading the zip archive and extracting it.

From within the `fpv9-haskell-workshop/bmp-editor` directory run:

    cd fpv9-haskell-workshop/huskysay
    vagrant up

Finally run

        vagrant ssh

to enter the VM.


Editor integration
------------------

We won't need any fancy IDE features during the workshop, so feel free to use
any text editor you prefer. If you're not sure what to use,
[Atom](http://atom.io) has quite decent Haskell support.
