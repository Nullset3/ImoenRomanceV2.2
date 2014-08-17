BEGIN HYOUNGCH

IF ~~ THEN BEGIN MRDream3-sub3
	SAY ~(The cool breeze caresses the leaves of the few trees that inhabit such heights, creating a relaxing sound that soon renders you asleep)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim14")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CutiF14")~
	EXIT	
END

IF ~~ THEN BEGIN MRDream3-sub6
	SAY ~She is all that matters.~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim15")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CutiF15")~
	EXIT
END