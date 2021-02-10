cssfile         = manual.css
name            = book
web_build_dir   = online
print_build_dir = print

html: $(name).texi
	@echo '<><><><> Building HTML output to ' $(web_build_dir) ' <><><><>'
	makeinfo --html --split=section --css-include=$(cssfile) -o $(web_build_dir) $^

pdf: $(name).texi
	@echo '<><><><> Building PDF output to' $(name).pdf ' <><><><>'
	texi2dvi --pdf --build-dir=$(print_build_dir) --build=tidy $^

clean:
	rm -rf $(print_build_dir)
	rm -rf $(web_build_dir)
	rm -f $(name).pdf 