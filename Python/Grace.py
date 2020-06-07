# Hey Grace
try:
	s = "# Hey Grace{0:c}try:{0:c}{1:c}s = {2:c}{3:s}{2:c}{0:c}{1:c}f = open({2:c}Grace_kid.py{2:c}, {2:c}w{2:c}){0:c}{1:c}f.write(s.format(10,9,34,s)){0:c}{1:c}f.close(){0:c}except:{0:c}{1:c}exit"
	f = open("Grace_kid.py", "w")
	f.write(s.format(10,9,34,s))
	f.close()
except:
	exit