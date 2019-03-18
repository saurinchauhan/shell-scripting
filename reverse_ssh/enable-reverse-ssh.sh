#!/bin/bash

#	authentication using username and password
ssh -N -R 7001:localhost:22 <username>@<ran.dom-s.sh>

#	authentication using username and private key .pem file <used with aws instance>
ssh -N -R 7001:localhost:22 -i ~/priveteKey.pem <username>@<ran.dom-s.sh>
