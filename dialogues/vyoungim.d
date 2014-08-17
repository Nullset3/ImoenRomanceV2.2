BEGIN ~VYOUNGIM~

IF ~~ THEN BEGIN MRDream1-sub3
	SAY ~(The girl smiles brightly.)~
IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("Cutim03")~
EXIT
IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("CutiF03")~
EXIT
END

