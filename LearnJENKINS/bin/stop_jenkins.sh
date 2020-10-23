#!/bin/bash
kill -9 `ps aux |grep jenkins.war |head -n1 |awk '{print $2}'`