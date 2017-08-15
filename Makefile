all : pdf

.PHONY : all

pdf :
	gitbook pdf

serve-open:
	gitbook serve --open

