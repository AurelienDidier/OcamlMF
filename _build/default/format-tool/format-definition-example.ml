pre "\n\t" : "{", "}"
post "\n" : ";", "}"
surround " " : EQUALS, PLUS
child "\t" : LPAREN

expected outputs:


a + b =
	{
	c + d
	}
