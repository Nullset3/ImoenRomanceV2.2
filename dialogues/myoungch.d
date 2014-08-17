BEGIN MYOUNGCH

IF ~Global("MRDream2","GLOBAL",3)~ THEN BEGIN MRDream2-sub1
	SAY ~(You suddenly feel different; your body is smaller and your mind is full of happy, trivial thoughts.)~
	=
	~(You feel yourself glance to your right when you hear Imoen's voice and realize that you are *inside* your younger manifestation.)~
	IF ~~ THEN EXTERN MYOUNGIM MRDream2-sub2
END

CHAIN2 MYOUNGIM MRDream2-sub2
~We're finally here!  Whoa, this place hasn't changed a bit, has it?~ [ MRImRom3 ]  
==
~Sure hasn't...~
==
~So what are we waiting for? Let's get into the water!~
==
~Great!  I'm really sweating from this heat!~
END MYOUNGIM MRDream2-sub3

IF ~Global("MRDream2","GLOBAL",4)~ THEN BEGIN MRDream2-sub4
	SAY ~(This realization makes your younger self stop where <PRO_HESHE> is and stare at Imoen's body, noticing something <PRO_HESHE> hadn't considered before...)~
	=
	~(She's a very beautiful girl, with a sculptural body...)~
	=
	~(As your young hormones are struck by these thoughts, Imoen has already reached the waters edge and has dived into the lake. Watching as her tanned figure arches gracefully as it meets and then breaks the crystalline surface of the lake only fuels these unexpected thoughts)~
	=
	~(A moment later her head comes out of the primal element, her fire-like hair covering her neck and shoulders. She looks back at you.)~
	IF ~~ THEN EXTERN MYOUNGIM MRDream2-sub5
END


IF ~~ THEN BEGIN MRDream2-sub6
	SAY ~(Your younger self is roused from <PRO_HISHER> daydreams as her cheerful voice penetrates <PRO_HISHER> head. Looking at her again, <PRO_HESHE> just sees the happy-go-lucky girl that has been <PRO_HISHER> friend for so long...)~
	=
	~(However you, the actual <CHARNAME>, feel that the other thoughts still remain in the back of <PRO_HISHER> head, *your* head, and are there to stay)~
 	=
	~Here I come!!~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutim09")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CutiF09")~
	EXIT
END





