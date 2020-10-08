#!/usr/bin/python
# -*- coding: utf-8 -*-
# http://elecrow.com/

import RPi.GPIO as GPIO
import time
import os

shutdown_pin = 0
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(shutdown_pin, GPIO.OUT)

GPIO.output(shutdown_pin, GPIO.LOW)

