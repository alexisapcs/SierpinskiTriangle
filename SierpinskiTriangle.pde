public void setup()
{
	size(500, 500);
}
public void draw()
{
	background(#000000);
	noFill();
	stroke(#ff1919);
	strokeWeight(3);
	sierpinski(0, 500, 500);
}
public void mouseDragged()//optional
{

}

public void equalBaseHeightTri(int x, int y, int base) {
	triangle( x, y, x+base/2, y-base, x+base, y );
}

public void sierpinski(int x, int y, int len) 
{
	equalBaseHeightTri( x, y, len );
	if ( len <= 20 ) {
		
	} else {
		sierpinski( x, y, len/2 );
		sierpinski( x + (len/2) , y, len/2 );
		sierpinski( x + (len/4) , y - (len/2) , len/2 );
	}
}