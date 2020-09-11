///@desc vert_icosahedron
///@param x
///@param y
///@param z
///@param radius
///@param color
///@param alpha
function vert_icosahedron() {
	var X,Y,Z,R,C,A; 
	X = argument[0];
	Y = argument[1];
	Z = argument[2];
	R = argument[3];
	C = argument[4];
	A = argument[5];

	var P,O,I;
	P = (1+sqrt(5))/2;
	O = R/sqrt(1+1/(P*P)); 
	I = R/P/sqrt(1+1/(P*P)); 

	vert_triangle(X+O,Y+I,Z+0,X+0,Y+O,Z+I,X+I,Y+0,Z+O,C,A);
	vert_triangle(X+O,Y+-I,Z+0,X+O,Y+I,Z+0,X+I,Y+0,Z+O,C,A); 
	vert_triangle(X+0,Y+O,Z+I,X+-I,Y+0,Z+O,X+I,Y+0,Z+O,C,A); 
	vert_triangle(X+0,Y+-O,Z+I,X+O,Y+-I,Z+0,X+I,Y+0,Z+O,C,A); 
	vert_triangle(X+-I,Y+0,Z+O,X+0,Y+-O,Z+I,X+I,Y+0,Z+O,C,A);

	vert_triangle(X+0,Y+O,Z+I,X+O,Y+I,Z+0,X+0,Y+O,Z+-I,C,A); 
	vert_triangle(X+O,Y+I,Z+0,X+O,Y+-I,Z+0,X+I,Y+0,Z+-O,C,A); 
	vert_triangle(X+-I,Y+0,Z+O,X+0,Y+O,Z+I,X+-O,Y+I,Z+0,C,A);
	vert_triangle(X+O,Y+-I,Z+0,X+0,Y+-O,Z+I,X+0,Y+-O,Z+-I,C,A); 
	vert_triangle(X+0,Y+-O,Z+I,X+-I,Y+0,Z+O,X+-O,Y+-I,Z+0,C,A);

	vert_triangle(X+0,Y+-O,Z+-I,X+-O,Y+-I,Z+0,X+-I,Y+0,Z+-O,C,A); 
	vert_triangle(X+-O,Y+-I,Z+0,X+-O,Y+I,Z+0,X+-I,Y+0,Z+-O,C,A); 
	vert_triangle(X+I,Y+0,Z+-O,X+0,Y+-O,Z+-I,X+-I,Y+0,Z+-O,C,A); 
	vert_triangle(X+-O,Y+I,Z+0,X+0,Y+O,Z+-I,X+-I,Y+0,Z+-O,C,A); 
	vert_triangle(X+0,Y+O,Z+-I,X+I,Y+0,Z+-O,X+-I,Y+0,Z+-O,C,A);

	vert_triangle(X+-O,Y+-I,Z+0,X+0,Y+-O,Z+-I,X+0,Y+-O,Z+I,C,A); 
	vert_triangle(X+-O,Y+I,Z+0,X+-O,Y+-I,Z+0,X+-I,Y+0,Z+O,C,A);
	vert_triangle(X+0,Y+-O,Z+-I,X+I,Y+0,Z+-O,X+O,Y+-I,Z+0,C,A);
	vert_triangle(X+0,Y+O,Z+-I,X+-O,Y+I,Z+0,X+0,Y+O,Z+I,C,A);
	vert_triangle(X+I,Y+0,Z+-O,X+0,Y+O,Z+-I,X+O,Y+I,Z+0,C,A);


}
