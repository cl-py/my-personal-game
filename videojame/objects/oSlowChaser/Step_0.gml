target = oPlayer

if hp <= 0{
	instance_destroy();
}

var 
vx, vy,
ax, ay;

vx = x-old_x
vy = y-old_y

old_x = x
old_y = y

dir = point_direction(x, y, target.x, target.y)
	
fx += lengthdir_x(accel, dir)
fy += lengthdir_y(accel, dir)


ax = fx/mass
ay = fy/mass

fx = 0
fy = 0

x_calc = vx + ax - vx/decel
y_calc = vy + ay - vy/decel          
				
				   
x += x_calc
y += y_calc