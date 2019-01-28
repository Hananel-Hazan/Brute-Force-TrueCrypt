#!/usr/bin/python
#-------------------------------------------------------------------------------
# Name:        Brut-Force Password Generator
# Purpose:
#
# Author:      Hananel
#
# Created:     26/06/2013
# Copyright:   (c) Hananel Hazan 2013
# Licence:     <GPLv3>
#-------------------------------------------------------------------------------

from array import array

# characters for the combinations
characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\!\"#$%\&\\\'\(\)*+,-.\/:\;\<\=\>?@[\\]\ \^_\`\{\|\}\~";
letter = 3; # how many combination of letters?
startFrom = ''; # If you want to continue from previous run, write here the last combination to start from.

counter = [0];
if (startFrom==''):
    printFlag = 0;
else:
    printFlag = 1;
charactersSize = len(characters)

while True:

    sentence = '';
    for p in range(len(counter)):
        sentence+= characters[counter[p]];

    if ((printFlag ==1)&(sentence==startFrom)):
        printFlag =2;

    if ((printFlag ==2)|(printFlag==0)):
        print sentence;

    flag = -1;
    if counter[0]+1<charactersSize:
        counter[0]+=1;
    elif (counter[0]+1)==charactersSize:
        flag+=1;
        counter[0]=0;
        if len(counter)>1:
            for c in range(1,len(counter)):
                if counter[c]+1<charactersSize:
                    counter[c]+=1;
                    flag = -1;
                    break;
                elif (counter[c]+1)==charactersSize:
                    counter[c] = 0;
                    flag+=1;

    if flag==letter:
        break;
    elif flag>-1:
        counter.append(0);
        continue;

