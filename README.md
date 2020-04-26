# DMR uoconvert

This repository contains the source code/binaries used for building the ``dmr-uoconvert`` Docker image. This image is used to convert Ultima Online *.mul* files into realm files, used by 

## How it works

This docker image is a tool 🧰 and is supposed to be used as one. Therefore, when invoked through ``docker run dmr-uoconvert`` it will scan its ``/mul`` directories for all the UO .mul files you are planning to use. The output of this action will appear in the ``/realm`` directory, so make sure that you have mounted a counter-directory on your host to get the output.

By default, those mounting points are empty. You must mount those using docker.

Here's a simple instruction on how to generate your realm folder.

Generally, you only want to run this for a first-time setup, or after changing any of your map files!

* Locate your UO folder with all your .mul files (in this example, it's ``D:/Games/UO-Files/``)

* Create a directory for your realm files for your output (in this example, it's ``D:/Development/Realms``)

* ``docker run -v D:/Games/UO-Files/:/mul -v D:/Development/Realms:/realm ultimadmr/dmr-uoconvert``

* Wait patiently for UOconvert to do its thing

* Check out your realm folder, it's got all the realms built to use with [the core docker image](https://github.com/karolswdev/dmr-core)

## Current build status

![.github/workflows/main.yml](https://github.com/karolswdev/dmr-uoconvert/workflows/.github/workflows/main.yml/badge.svg)