// Let's talk in basic
LoadSyntax "basicon.ring" 

x = 10
while x > 0
        print "x = " + x + nl
        for t = 1 to 10
                if t = 3
                        print "number three" + nl
                endif
        endfor
        x--
endwhile

# Back to Ring dialect
	ChangeRingKeyword	print 		see	
	ChangeRingKeyword	endif 		ok	
	ChangeRingKeyword	endfor 		next	
	ChangeRingKeyword	endwhile 	end	

see "done" + nl
