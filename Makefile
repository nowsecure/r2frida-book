all : pdf

.PHONY : all pdf html serve-open

pdf:
	gitbook pdf

html:
	gitbook build . html

serve-open:
	gitbook serve --open

