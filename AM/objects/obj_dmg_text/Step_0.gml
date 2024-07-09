y += acely
x += acelx

acely += grav

if(y >= start + 20){
	instance_destroy(self)
}