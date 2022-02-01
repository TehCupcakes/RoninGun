targetRoom = rMenu

a0=120
a1=60 //fade out
a2=60*2 //song duration
a3=60*3 //if you hit
a=a0

fade=1
cs=0
ph=0

fade0=instance_create_layer(x,y,"Transitions",oFade) //white flash front

fade0.fadeTarget=0
fade0.fadeRate=.01
fade0.color=c_black
fade0.fade=1
