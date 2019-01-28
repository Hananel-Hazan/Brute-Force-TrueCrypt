dim $one, $two, $three, $four, $five, $six, $seven, $eight, $pw, $pp, $count, $truecryptPath, $containerPath
$truecryptPath = "C:\PROGRA~1\TrueCrypt\TrueCrypt.exe /q background /s "
$containerPath = "d:\cscs2.tre"
dim $numberOfCharacters = 92
dim $Array[$numberOfCharacters+1]
$Array[0]="a"
$Array[1]="b"
$Array[2]="c"
$Array[3]="d"
$Array[4]="e"
$Array[5]="f"
$Array[6]="g"
$Array[7]="h"
$Array[8]="i"
$Array[9]="j"
$Array[10]="k"
$Array[11]="l"
$Array[12]="m"
$Array[13]="n"
$Array[14]="o"
$Array[15]="p"
$Array[16]="q"
$Array[17]="r"
$Array[18]="s"
$Array[19]="t"
$Array[20]="u"
$Array[21]="v"
$Array[22]="w"
$Array[23]="x"
$Array[24]="y"
$Array[25]="z"
$Array[26]="A"
$Array[27]="B"
$Array[28]="C"
$Array[29]="D"
$Array[30]="E"
$Array[31]="F"
$Array[32]="G"
$Array[33]="H"
$Array[34]="I"
$Array[35]="J"
$Array[36]="K"
$Array[37]="L"
$Array[38]="M"
$Array[39]="N"
$Array[40]="O"
$Array[41]="P"
$Array[42]="Q"
$Array[43]="R"
$Array[44]="S"
$Array[45]="T"
$Array[46]="U"
$Array[47]="V"
$Array[48]="W"
$Array[49]="X"
$Array[50]="Y"
$Array[51]="Z"
$Array[52]="!"
$Array[53]="@"
$Array[54]="#"
$Array[55]="$"
$Array[56]="%"
$Array[57]="^"
$Array[58]="&"
$Array[59]="*"
$Array[60]="("
$Array[61]=")"
$Array[62]="_"
$Array[63]="+"
$Array[64]="~"
$Array[65]="`"
$Array[66]="1"
$Array[67]="2"
$Array[68]="3"
$Array[69]="4"
$Array[70]="5"
$Array[71]="6"
$Array[72]="7"
$Array[73]="8"
$Array[74]="9"
$Array[75]="0"
$Array[76]="-"
$Array[77]="="
$Array[78]="["
$Array[79]="]"
$Array[80]="\"
$Array[81]="{"
$Array[82]="}"
$Array[83]="|"
$Array[84]=";"
$Array[85]=":"
$Array[86]="'"
$Array[87]=""""
$Array[88]=","
$Array[89]="."
$Array[90]="/"
$Array[91]="?"

$count = 0
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
Wend
EndIf

Next
Next

While ProcessExists($pp)>0
Wend


$count = 0
for $three = 0 to $numberOfCharacters
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$pw &= $Array[$three]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
$count = 0
Wend
EndIf

Next
Next
Next

While ProcessExists($pp)>0
Wend

$count = 0
for $four = 0 to $numberOfCharacters
for $three = 0 to $numberOfCharacters
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$pw &= $Array[$three]
$pw &= $Array[$four]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
$count = 0
Wend
EndIf

Next
Next
Next
Next

While ProcessExists($pp)>0
Wend

$count = 0
for $five = 0 to $numberOfCharacters
for $four = 0 to $numberOfCharacters
for $three = 0 to $numberOfCharacters
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$pw &= $Array[$three]
$pw &= $Array[$four]
$pw &= $Array[$five]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
Wend
$count = 0
EndIf

Next
Next
Next
Next
Next

While ProcessExists($pp)>0
Wend

$count = 0
FOR $six = 0 to $numberOfCharacters
for $five = 0 to $numberOfCharacters
for $four = 0 to $numberOfCharacters
for $three = 0 to $numberOfCharacters
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$pw &= $Array[$three]
$pw &= $Array[$four]
$pw &= $Array[$five]
$pw &= $Array[$six]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
Wend
$count = 0
EndIf

Next
Next
Next
Next
Next
Next

While ProcessExists($pp)>0
Wend

$count = 0
for $seven = 0 to $numberOfCharacters
FOR $six = 0 to $numberOfCharacters
for $five = 0 to $numberOfCharacters
for $four = 0 to $numberOfCharacters
for $three = 0 to $numberOfCharacters
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$pw &= $Array[$three]
$pw &= $Array[$four]
$pw &= $Array[$five]
$pw &= $Array[$six]
$pw &= $Array[$seven]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
Wend
$count = 0
EndIf

Next
Next
Next
Next
Next
Next
Next

While ProcessExists($pp)>0
Wend

for $eight = 0 to $numberOfCharacters
for $seven = 0 to $numberOfCharacters
FOR $six = 0 to $numberOfCharacters
for $five = 0 to $numberOfCharacters
for $four = 0 to $numberOfCharacters
for $three = 0 to $numberOfCharacters
for $two = 0 to $numberOfCharacters
for $one = 0 to $numberOfCharacters
$pw = $Array[$one]
$pw &= $Array[$two]
$pw &= $Array[$three]
$pw &= $Array[$four]
$pw &= $Array[$five]
$pw &= $Array[$six]
$pw &= $Array[$seven]
$pw &= $Array[$eight]
$count = $count+1
$pp  = Run(@COMSPEC & " /c " & $truecryptPath & " /p "& $pw & " /e /m ro /m rm /v " &$containerPath )
ProcessSetPriority($pp, 0)

if $count>25 then
While ProcessExists($pp)>0
Wend
$count = 0
EndIf

Next
Next
Next
Next
Next
Next
Next
Next