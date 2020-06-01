# Form/Window Controller - Source Code File

load "SumCalculatorView.ring"

import System.GUI

if IsMainSourceFile() {
	new App {
		StyleFusion()
		open_window(:SumCalculatorController)
		exec()
	}
}

class SumCalculatorController from windowsControllerParent

	oView = new SumCalculatorView

	func calculateSum
		oView {
			n1 = 0+ edtNumber1.text()
			n2 = 0+ edtNumber2.text()
			n = n1+n2
			r = "" + n1 + " + " + n2 + " = " + n
			lblResult.setText(r)
		}
