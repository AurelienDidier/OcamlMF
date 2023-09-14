build:
	dune build

utop:
	dune utop format-tool

.PHONY: test
test:
	dune exec test/main.exe

clean:
	dune clean
