load "guilib.ring"

// Creating a Qt application to host the PDF preview window
	new qApp {
		win1 = new qwidget() {
			setwindowtitle("Printer Preview Dialog")
			setgeometry(100,100,675,480)
			printer1 = new qPrinter(0)
			show()
			// instanciating a Printer (PDF) Preview
			oPreview = new qPrintPreviewDialog(printer1) {
				setParent(win1)
				move(10,10)
				setPaintRequestEdevent("printPreview()")
			exec() 
			}
		}
		show()
}

// Printing the graph inside the PDF preview
func printPreview()
	printer1 {
		painter = new qpainter() {
			begin(printer1)
			myfont = new qfont("Times",18,-1,0)
			setfont(myfont)
			yy=10
			for y = 1 to len(aDatagraph) // =10
				yy += 40
				drawtext(10,yy, spc(1) + graphline(y) )
			next y 
		drawtext(10,yy+40, graphlabels() )

		printer1.newpage()
		endpaint()
		}
	 }
