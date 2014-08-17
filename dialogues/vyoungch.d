BEGIN VYOUNGCH

IF ~Global("MRDream1","GLOBAL",4)~
THEN BEGIN MRDream1-sub1 
SAY ~Imoen!  Are you okay??~ [ MRImRom2 ]
IF ~~ THEN EXTERN VYOUNGIM MRDream1-sub2
END

CHAIN VYOUNGIM MRDream1-sub2
~(Her eyes filled with tears, the little girl holds her stomach with both hands.  Blood is smeared across her fingers.)~
=
~<CHARNAME>, it hurts!~
== VYOUNGCH
~You're bleedin'!  What'd that goblin do to you? ~ 
== VYOUNGIM
~It... *sniff*  It hurt my tummy!  *sniff*  It would hurt me more if you hadn't come!~
== VYOUNGCH
~It won't hurt you no more!  I smashed it with this rock!  It's...ewww...  I smashed it dead.~
=
~Im, that don't look so good.  I'm gonna take you to Frendan, okay?~
== VYOUNGIM
~Please!  It hurts really bad!  *sniff*~
== VYOUNGIM IF ~Gender(Player1,MALE)~ THEN ~(The boy takes her in his arms with a grunt.  Young Imoen is unable to suppress a giggle.)~
== VYOUNGIM IF ~Gender(Player1,FEMALE)~ THEN ~(The girl takes Imoen in her arms with a grunt.  Young Imoen is unable to suppress a giggle.)~
== VYOUNGIM
~My hero!~
== VYOUNGCH
~Haha yeah!  Even when we're all growed up, I'm always gonna be there for ya!  I'll take care of your an' love you an' protect ya from stupid goblins!~
== VYOUNGIM
~Really?~
== VYOUNGCH
~'course!  I promise!~
EXTERN VYOUNGIM MRDream1-sub3
