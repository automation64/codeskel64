BEGIN {

	A="ABC"

	if( A ~ /B/ ) { print "A ~ /B/" }
	if( A ~ "B" ) { print "A ~ 'B'" }

}
