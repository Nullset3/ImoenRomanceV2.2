BEGIN ~HYOUNGIM~

IF ~Global("MRDream3","GLOBAL",3)~ THEN BEGIN MRDream3-sub1
	SAY ~Look at all those stars... I could watch them for hours and hours.~
	=
	~A shame there's a full moon, there'd be a lot more if it wasn't so bright.~ 
	IF ~~ THEN EXTERN HYOUNGCH MRDream3-sub2
END

CHAIN2 ~HYOUNGCH~ MRDream3-sub2
	~(As you turn your head to look at the young Imoen that lies beside you, you realise that you are inside your younger self again)~
	=
	~It's beautiful~
	==
	~Yeah. I feel so...*small* when looking up there.  So overwhelmed by the immensity of the heavens.~
	=
	~I love it though.  It's where I feel best, sleeping under the stars... it's like I'm in my own little perfect paradise.  For a few hours it's like I don't have a care in the world.~
	==
	~(You say nothing.  You both keep staring into the dark sky and its endless space.  The full moon bathes the area with pale, phantasmal light that makes everything around you shine like silver)~
	
END HYOUNGCH MRDream3-sub3

IF ~Global("MRDream3","GLOBAL",4)~ THEN BEGIN MRDream3-sub4
	SAY ~Hmmmmff... MMmmmhmmm... n-no...~ [ MRImNig1 ]  
	IF ~~ THEN EXTERN ~HYOUNGCH~ MRDream3-sub5
END

CHAIN2 ~HYOUNGCH~ MRDream3-sub5
	~(You are awaken by Imoen's moans, which grow ever louder. You glance at her quizzically.)~
	==
	~HMmmpf... no... no don't... please no...~
	==
	~(She's having a nightmare.  You touch her gently on her shoulder to try to awaken her)  Imoen?  Im, wake up.~
	==
	~No... NO! Get away from me, get AWAY!  (She cries out loud as she suffers in her dream; her body twists and contorts as she tries to escape)~
	==
	~Imoen! Imoen, WAKE UP!~
	==
	~I WON'T FALL TO YOU!  GET AWAY!  DON'T-- No, NO!!~
	=
	~(Her eyes suddenly flash open.  Although she doesn't recognize you at first, she throws herself into your arms as soon as her senses return)~
	=
	~<CHARNAME>! Don't let him take me! Please keep him away from me! Please, please...~
	==
	~(You cradle her in your arms as she trembles uncontrollably.  Her tears wet your shoulder with hot saline)~
	=
	~Shhhh... it's over now, Imoen.  I'm here, it's okay.~
	==
	~Don't leave me, <CHARNAME>...  Keep him away from me.  Keep him away!~
	=
	~(You stroke her hair and hold her close, murmuring soft, reassuring words in her ear.  Still she trembles wildly, her heart racing with the aftermath of her dream)~
	=
	~Please stay close to me... protect me... keep him away, please...~
	==
	~I will, Imoen, just calm down...I'll stay right here by your side.~
	==
	~He scares me, <CHARNAME>...~
	==
	~Sssh.  I'm here, Im, no one's going to hurt you.  Go back to sleep now...~
	=
	~(Her chills fade gradually as you gently stroke her hair.  The soft touch of your fingertips over her skin calms her down, bit by bit)~
	=
	~(The rhythm of Imoen's breathing slowly returns to normal, and soon the warmth of your presence lulls her into sleep once more)~
	=
	~(Her chest rises and falls against yours, and you notice how enjoyable it is to have her next to you.  The smoothness of her skin, the soft caress of her breath, the quiet comfort of her form...  You can't help but smile)~
	=
	~(You still wonder who this 'he' is that torments her dreams, but it doesn't matter.  You'll protect her, now and forever)~
	
END HYOUNGCH MRDream3-sub6


	
	
