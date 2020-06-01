load "tracelib.ring"
node1()
### FUNCTIONS
func node1
            ? "Node 1"
            node2()
func node2
            ? "Node 2"
            node3()
func node3
            ? "Node 3"
            breakpoint()
