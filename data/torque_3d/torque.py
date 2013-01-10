import math

def spherical(mag,phi,theta):
  z = mag*math.cos(phi*math.pi/180.)
  r = mag*math.sin(phi*math.pi/180.)
  x = r*math.cos(theta*math.pi/180.)
  y = r*math.sin(theta*math.pi/180.)
  return (x,y,z)

def cross(a,b):
  return (a[1]*b[2]-a[2]*b[1],a[2]*b[0]-a[0]*b[2],a[0]*b[1]-a[1]*b[0])

def add(a,b):
  return (a[0]+b[0],a[1]+b[1],a[2]+b[2])

fa = spherical(4.02,26,180+10)
fb = spherical(4.3 ,30,360-1)
fc = spherical(1.55,90-74,122.9)
fd = spherical(.90443*9.8,180,0)

r = .437/2
ra = spherical(r,90,180+18)
rb = spherical(r,90,360-1)
rc = spherical(r,90,109)

ta = cross(ra,fa)
tb = cross(rb,fb)
tc = cross(rc,fc)

print "torques"
print ta
print tb
print tc
print add(ta,add(tb,tc))

print "forces"
print fa
print fb
print fc
print fd
print add(add(fa,fb),add(fc,fd))
