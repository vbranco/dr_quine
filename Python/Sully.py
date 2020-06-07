import os
i = 5
if (i > 0):
	try:
		if (os.path.isfile("Sully_5.py") is False):
			i += 1
		s = "import os{0:c}i = {4:d}{0:c}if (i > 0):{0:c}{1:c}try:{0:c}{1:c}{1:c}if (os.path.isfile({2:c}Sully_5.py{2:c}) is False):{0:c}{1:c}{1:c}{1:c}i += 1{0:c}{1:c}{1:c}s = {2:c}{3:s}{2:c}{0:c}{1:c}{1:c}exe = {2:c}Sully_{2:c} + str(i-1) + {2:c}.py{2:c}{0:c}{1:c}{1:c}f = open(exe, {2:c}w{2:c}){0:c}{1:c}{1:c}f.write(s.format(10,9,34,s,i-1)){0:c}{1:c}{1:c}f.close(){0:c}{1:c}{1:c}os.system({2:c}python {2:c} + exe){0:c}{1:c}except:{0:c}{1:c}{1:c}exit"
		exe = "Sully_" + str(i-1) + ".py"
		f = open(exe, "w")
		f.write(s.format(10,9,34,s,i-1))
		f.close()
		os.system("python " + exe)
	except:
		exit