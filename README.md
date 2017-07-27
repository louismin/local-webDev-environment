# A Comprehensive Guide for faster local web application development
## Getting Started
**Tools Used:**
* [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)
* [Vagrant](https://www.vagrantup.com/)
* [BrowserSync](https://browsersync.io/)

### TL;DR
The purpose of this configuration is to keep your host machine clean while efficiently utilizing development environments and improving local web application development using cross-browser tools.

To get started, you will need to download [virtualBox](https://www.virtualbox.org/wiki/Downloads) and [vagrant](https://www.vagrantup.com/downloads.html). On a side note, I will be using Ubuntu v16.04 as my main OS.

After installing virtualBox and vagrant, simply clone the repository for an easier setup. Some important files to note are: Vagrantfile, bootstrap.sh, and bs-config.js (used for Browsersync).

Within the same directory of the installed files, run:
```
vagrant up
```
(this process will take a couple of minutes)
This process will create a virtual machine and install some essential packages and dependencies.

Next, to access your virtual machine directly from your terminal:
```
vagrant ssh
```
After doing so, you will need to access the root directory (do this process twice to reach the root):
```
cd ..
```
At this point, you will be able to access a folder called "vagrant." This folder has all the files that are shared from your host machine and the guest machine (the virtual machine you created). This is the beauty of using vagrant. Having a shared folder allows you to seemelesly work on files from the host machine and/or guest machine.

The next step to this guide is installing Browsersync.

In order to install Browsersync, Node.Js must initially be installed. You can install [Node.js](https://nodejs.org/en/download/) with the following command (directly taken from the official page):
```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```
Installing Node.js also installs npm which is a package manager for node.
If, for any reason, npm does not install you can manually install npm with the following command:
```
sudo apt-get install npm
```
and update it to the latest version with this command:
```
sudo npm install npm@latest -g
```
After the installation is complete, run:
```
sudo npm install -g browser-sync
```
Now, you have fully configured your setup!

All that is left is to run this last command (make sure you are in the "project_name" folder):
```
browser-sync start --config bs-config.js
```
It will prompt a message with the url to access your webpage (http://localhost:3000). Since BrowserSync has opened a server, you are able to access your web page given the url and directly see updates when changing your html, css, js files without having to refresh the page!

I hope i was able to throughly explain the process of using virtual machines and BrowserSync to optimize your development. Please feel free to comment if you have any questions.
