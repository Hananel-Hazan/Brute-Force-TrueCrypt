#!/usr/bin/python
#
# Copyright (c) 2012 Hananel Hazan
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. The names of the authors may not be used to endorse or promote
#    products derived from this software without specific prior written
#    permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
# SUCH DAMAGE.
#


import os, sys, subprocess, itertools, glob
from array import *
import platform



################## Configuration #############################
tc_file = "cscs2.tc"		# TrueCrypt file location
Num_of_characters = 2	# Number of keyfiles
mount_point = "/mnt/test"	# Mount point if TrueCrypt is able to decrypt the file
verbose = 2 		# verbose level of the output, 0 means no output at all, 1 will only output when completed, 2 will output during iterations

#######################################

################## check conf  ############################
if (os.path.isfile(tc_file) == 0):
  print "File in config file does not exist"
  sys.exit(1)
if (Num_of_characters == 0):
  print "You need at least 1 keyfile"
  sys.exit(1)
if ((platform.system()=='Linux')&(os.path.isdir(mount_point) == 0)):
  print "Mount point does not exist"
  sys.exit(1)
if (os.path.ismount(mount_point) == 1):
  print "Mount point already mounted"
  sys.exit(1)
###################################################################


###read pasword files##############################################
char=""
file = open("char.txt")
charcount=0;

while 1:
    line = file.readline()
    if not line:
        break
    else:
        char = char + line[0]
        charcount=charcount+1

#########################################################################

##make combinatore######################################################
comb = array('i',[-1])

while 1:
    if comb.count(-1)==Num_of_characters:
        break
    else:
        comb.append(-1)
#########################################################################


####Next Permutation######################################################
def Next(n):
    global comb
    global charcount

    if (n == Num_of_characters):
       return -1

    if (comb[n] < (charcount-2)):
        comb[n] = comb[n] + 1
        return 0
    else:
        if Next(n+1) == 0:
            comb[n] = 0
            return 0

#########################################################################

mone = 1

while 1:

  if Next(0) < 0:
    break

  for i in range(0,Num_of_characters):
    if i == 0:
        if comb[i]>-1:
            password = char[comb[i]]
    else:
        if comb[i]>-1:
            password = password + char[comb[i]]

  if (verbose >= 2):
    output = "Trying "
    print output, password

### Invoke TrueCrypt ################################################

  if (platform.system()=='Linux'):

        child = subprocess.Popen(['truecrypt', '--quick', '--non-interactive', '-p', password, tc_file, mount_point], \
        stderr=open(os.devnull, 'w'), stdout=open(os.devnull, 'w'))
  else:
        child = subprocess.Popen(
            ['C:\\PROGRA~1\\TrueCrypt\\TrueCrypt.exe ', '/q ','/s ','/a ','/p', password, ' /v ', tc_file],
            stderr=open(os.devnull, 'w'), stdout=open(os.devnull, 'w'))

  child_output = child.communicate()[0]
  child_rc =  child.returncode
#####################################################################

  if (child_rc == 0):
    if (verbose >= 1):
      print "Successfully opened TrueCrypt file with password: " + password
    sys.exit(0)



# if we are here, then the return value from truecrypt was never 0 and therefore not successful
if (verbose >= 1):
  print "Failed to open TrueCrypt file"
sys.exit(1)
