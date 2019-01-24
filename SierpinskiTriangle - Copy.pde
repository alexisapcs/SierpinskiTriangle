public void setup()
{
	size(500, 500);
}
public void draw()
{
	fill(#c4fdff, 20);
	sierpinski(0, 0, 500);
}
public void mouseDragged()//optional
{

}

public void equalBaseHeightTri(int x, int y, int base) {
	triangle( x, y, x+base, y, x+base/2, base );
}

public void sierpinski(int x, int y, int len) 
{
	equalBaseHeightTri( x, y, len );
	if ( len <= 20 ) {
		//equalBaseHeightTri( x, y, len );
	} else {
		sierpinski( x, y, len/2 );
		sierpinski( x + (len/2) , y, len/2 );
		sierpinski( x + (len/4) , y + (len/2) , len/2 );
	}
}