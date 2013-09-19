# Add your custom functions
example() {
	echo "foobar"
}
zle -N example-function
bindkey . example-function