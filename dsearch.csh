#! /usr/bin/csh -f
if ($1 == "") then
   set dlook = .
else
    set dlook = $1
endif
    
echo "Loking at " $dlook " directory."
echo "There are following subdirectories."
echo "Which directory do want to see? (1=quit): "
set dlist = `ls -aF $dlook | grep / `

@ counter = 0

while ( $counter < $#dlist )
      @ counter++
      echo $counter ":" $dlist[$counter]
end

echo -n "Which subdirectory do you want to see?"
echo -n " (1-"$dlist",0=quit): "
@ henji = $<

if ($henji >= 1 && $henji <= $#dlist) then
   cd $dlook/$dlist[$henji]
   exec ~/literacy/dsearch.csh
endif
      
   # Put this file as $HOME/literacy/dsearch.csh, and make it executable.
   
	      
