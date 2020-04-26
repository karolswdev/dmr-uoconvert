#!/bin/bash

./uoconvert multis
cp multis.cfg /realm

./uoconvert tiles
cp tiles.cfg /realm

./uoconvert landtiles
cp landtiles.cfg /realm

#rem Mondain's Legacy use "width=7168" here
./uoconvert map     realm=britannia mapid=0 usedif=0 width=7168 height=4096
./uoconvert statics realm=britannia
./uoconvert maptile realm=britannia

#rem Mondain's Legacy use "width=7168" here
./uoconvert map     realm=britannia_alt mapid=1 usedif=0 width=6144 height=4096
./uoconvert statics realm=britannia_alt
./uoconvert maptile realm=britannia_alt

./uoconvert map     realm=ilshenar mapid=2 usedif=1 width=2304 height=1600
./uoconvert statics realm=ilshenar
./uoconvert maptile realm=ilshenar

./uoconvert map     realm=malas mapid=3 usedif=1 width=2560 height=2048
./uoconvert statics realm=malas
./uoconvert maptile realm=malas

./uoconvert map     realm=tokuno mapid=4 usedif=1 width=1448 height=1448
./uoconvert statics realm=tokuno
./uoconvert maptile realm=tokuno

mv realm/* /realm