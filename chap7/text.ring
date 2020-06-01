o1 = new text("I love you, Ring!") # sent to init() method

? o1 * 3	# * is the operator and 3 is the paramter				# we will call them cOp and p here after

class text
	content	# the only attribute of the class

	def init(txt) # txt contains text received from line 1
	   content = txt # the attribute is set with the txt text

	def operator(cOperator, nValue) # fired by * 3 in line 3

		switch cOperator  # The operator, * in our case
		on "*"
			cStr = ""
			for i=1 to nValue # text is repeated 3 times
				cStr += content + NL
			next i
		off

		return cStr # The repeated text is returned
