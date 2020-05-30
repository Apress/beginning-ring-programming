load "weblib.ring" 
import System.Web

p = new htmlpage {
	for y = 1 to len(aDatagraph) // = 10
		div { text( spc(1) + graphline(y) + NL ) }
	next y 

	div { text( graphlabels() ) }
}

write("graph.html",p.output())
