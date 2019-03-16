#!/bin/sh
gst-launch-1.0 -v ximagesrc starty=1080 use-damage=false xname=/usr/lib/torcs/torcs-bin \
! videoconvert ! videoscale ! video/x-raw,format=I420,framerate=30/1 \
! jpegenc ! rtpjpegpay ! udpsink host=localhost port=6666
