function approach(value, goal, spd)
{
	/// Approach(a, b, amount)
	// Moves "a" towards "b" by "amount" and returns the result
	/// @param value
	/// @param goal
	/// @param spd
	
	if (value < goal)
	{
	    value += spd;
	    if (value > goal)
	        return goal;
	}
	else
	{
	    value -= spd                 ;
	    if (value < goal)
	        return goal;
	}
	return value;
}

function modDistance(a, b, d) {
    // Wrapping a and b in posmod before subtraction so that 0 < a,b < 360
    a = posmod(a, d);
    b = posmod(b, d);
    if (a == b) 
    { 
        return 0 
    }
    // Need to use programmer's modulo to obtain the magnitude the negative difference without it just wrapping around to 335
    var diff1 = ((a + d) - b) % d; // (355 + 360) - 20 = 695; 695 % 360 = 335
    var diff2 = (a - (b + d)) % d; // 355 - (20 + 360) = -25; -25 % 360 = -25
    // Return the smaller of the two distances as a positive integer
    return min(abs(diff1), abs(diff2))
}


function posmod(n, d) { return ((n % d) + d) % d }

function angle_lerp(argument0, argument1, argument2) {
    var angle = (argument0 - angle_difference(argument0, argument1) * argument2)
    
    if(angle < 0) angle+=360;
    if(angle >= 360) angle -= 360;

    return angle;
}