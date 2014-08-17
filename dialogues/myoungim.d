BEGIN ~MYOUNGIM~

IF ~~ THEN BEGIN MRDream2-sub3
	SAY ~(Imoen throws her backpack to the ground beside a tree.  She starts undressing as she runs towards the water, with you following close behind.  Soon she's completely naked before your eyes, her clothes scattered all over the soft grass.)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutim08")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CutiF08")~
	EXIT
END

IF ~~ THEN BEGIN MRDream2-sub5
	SAY ~It's great! C'mon, move your butt and enjoy this paradise!~  
	IF ~~ THEN EXTERN MYOUNGCH MRDream2-sub6
END