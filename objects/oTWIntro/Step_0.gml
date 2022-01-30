if cs==0
{
		
	if ph==0
	{
		if a>0 a--;
		else
		{
			ph+=1
			a=a1
			audio_play_sound(sfxTWGFlute,10000, false)
		}
	}
	else if ph==1
	{
	
		//if !scrAIP(mTWIntro)
		if a>0 a--;
		else
		{
			ph+=1
			
			fade0.fadeTarget=1
			fade0.fadeRate=1/200
			fade0.color=c_black
			fade0.fade=0
		}
	}
	else if ph==2
	{
		if fade0.fade>=fade0.fadeTarget
		{
			ph+=1
			event_user(0)
		}
	}
}
else
{
	if ph==0
	{
		if a>0 a--;
		else
		{
			ph+=1
			fade0.fadeTarget=1
			fade0.fadeRate=1/30
			fade0.color=c_black
			fade0.fade=0
		}
	}
	else
	{
		if fade0.fade>=fade0.fadeTarget
		{
			ph+=1
			event_user(0)
		}
		
	}
	
}
