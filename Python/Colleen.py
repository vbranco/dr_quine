def output(s):
	print "%s" % (s)

def main():
	# Commentaire main
	s = "def output(s):{0:c}{1:c}print {2:c}%s{2:c} % (s){0:c}{0:c}def main():{0:c}{1:c}# Commentaire main{0:c}{1:c}s = {2:c}{3}{2:c}{0:c}{1:c}output(s.format(10,9,34,s)){0:c}{0:c}# Start{0:c}if __name__ == {2:c}__main__{2:c}:{0:c}{1:c}main()"
	output(s.format(10,9,34,s))

# Start
if __name__ == "__main__":
	main()
