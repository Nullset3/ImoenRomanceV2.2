// Ye Grande Olde Sex Scene

// I have no idea how the global incrementation here is working -- I guess it's set in cutscenes?  
// The MRCampfire global used to be "WereGonnaHaveSexInTheElvenCamp" or some such, if that helps
// And "MRCampfireMusic" used to be "TalkingAboutMusic"

// Act One:  Exiting the Underdark

APPEND IMOEN2J

IF WEIGHT #-900
~Global("MRExitUnderdark","GLOBAL",2)
!Global("ImoenRomanceActive","GLOBAL",3)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN MRCampfire
	SAY ~I can't believe we are finally outta that hellhole, ugh... (She sighs) It's really great breathing this air!~ [ MRImRom3 ]  
	IF ~~ THEN DO ~SetGlobal("MRExitUnderdark","GLOBAL",3)~ GOTO MRCampfire2
END

IF ~~ THEN BEGIN MRCampfire2
	SAY ~Y'know <CHARNAME>, I'd really enjoy resting somewhere *green* and *beautiful* for a change... wouldn't you?~
	IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN JAHEIRAJ MRCampfire2
	IF ~!IsValidForPartyDialog("Jaheira")
	IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ MRCampfire2
	IF ~!IsValidForPartyDialog("Jaheira")
	!IsValidForPartyDialog("Aerie")
	IsValidForPartyDialog("Cernd")~ THEN EXTERN CERNDJ MRCampfire2 
	IF ~!IsValidForPartyDialog("Jaheira")
	!IsValidForPartyDialog("Aerie")
	!IsValidForPartyDialog("Cernd")
	IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ MRCampfire2 
	IF ~!IsValidForPartyDialog("Jaheira")
	!IsValidForPartyDialog("Aerie")
	!IsValidForPartyDialog("Cernd")
	!IsValidForPartyDialog("Nalia")~ THEN GOTO MRCampfire3
END
 
IF ~~ THEN BEGIN MRCampfire3
	SAY ~I think... hmm... (Imoen looks around her) This seems quite a neat spot, eh?~
	=
	~So, what if we spend a night here 'fore we go get this 'Lanthorn' thing?  After all we've been through, we can wait a few hours longer before we set off after Bodhi, right?~
	IF ~IsValidForPartyDialog("Viconia")~ THEN REPLY ~let's do it. I'm exhausted after all that darkness and cruelty and drow deceit... no offense intended, Viconia.~ EXTERN VICONIJ MRCampfire3
	IF ~!IsValidForPartyDialog("Viconia")~ THEN REPLY ~let's do it. I'm exhausted after all that darkness and cruelty and those drow...~ GOTO MRCampfireYes
	++ ~(Shrug) Alright, let's spend the night here.~ GOTO MRCampfireYes
	++ ~I don't really think so. I'd prefer to get to Bodhi, then Irenicus, and *then* we can do whatever you want to do.~ GOTO MRCampfireNo
	++ ~Haven't I told you that when you have an idea, you should tell it to the nearest rock and leave ME alone?~ GOTO MRCampfireCruel
END

IF ~~ THEN BEGIN MRCampfireCruel
	SAY ~Yeah but I thought you were babbling stupidly as always... how could I know it was the first time you spoke actually *knowing* what you were saying?~
	=  ~Jerk.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfireNo
	SAY ~(She shrugs) If you insist... but I think you're losin' a great opportunity...~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfireYes
	SAY ~Great!  This is gonna be awesome!~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("MRCampfire","GLOBAL",1)~
	EXIT
END


// *** Losing the opportunity ***


IF WEIGHT #1
~Global("MRCampfire","GLOBAL",5)~ THEN BEGIN MRCampfireLost
	SAY ~Aaww... I thought we'd go camping! It wasn't that hard to go and spend a few hours there an' just forget about everything for *once* in our lives...~
	=
	~(She sighs deeply) Oh well, I guess we've lost a great opportunity.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("MRCampfire","GLOBAL",100)
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END



// *** Act 2 ***

   IF WEIGHT #-900
~Global("MRCampfire","GLOBAL",1)~ THEN BEGIN MRCampfireAct2
	SAY ~Aah... (Imoen stretches) This place is great... look, that spot over there will do.~
	IF ~~ THEN DO ~SetGlobal("MRCampfire","GLOBAL",4)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe1")~
	EXIT	
END

IF WEIGHT #522
	~Global("MRCampfireMusic","GLOBAL",1)~ THEN BEGIN MRCampfireMusic
	SAY ~Yeah, a beautiful place dontcha think? Let's rest here!~
	IF ~~ THEN DO ~SetGlobal("MRCampfireMusic","GLOBAL",2)~ GOTO MRCampfireMusic2
END

IF ~~ THEN BEGIN MRCampfireMusic2
	SAY ~(You unpack your bedroll and prepare to lie down for the night.)~ 
	= ~... huh?  What're you doing?~
	++ ~I'm preparing the place where I am going to sleep - as I do every time we rest, obviously.~ DO ~ActionOverride(Player1,SetDialog("Player1"))~ GOTO MRCampfireMusic2Rest
	++ ~uh... going to sleep? I thought you wanted to sleep here.~ DO ~ActionOverride(Player1,SetDialog("Player1"))~ GOTO MRCampfireMusic2Rest
	++ ~You said you wanted to rest here.  Disobeying you is not a wise thing to do, so I am doing what you said!~ DO ~ActionOverride(Player1,SetDialog("Player1"))~ GOTO MRCampfireMusic2Rest
	++ ~Have you seen my teddy bear? I need it to fall asleep. You haven't stolen it again, have you?~ DO ~ActionOverride(Player1,SetDialog("Player1"))~ GOTO MRCampfireMusic2Rest
END

IF ~~ THEN BEGIN MRCampfireMusic2Rest
	SAY ~No no, I wanted to *rest* here, but not just go to sleep and that's all! Y'know what I mean?~
	++ ~Ahh... you want me to get to know you a little better... and do... umm... naughty things? I'd like to, mind you...~ GOTO MRCampfireMusic2Naughty
	IF ~NumInPartyGT(2)~ THEN REPLY ~Um... no?~ GOTO MRCampfireMusic2Group
	IF ~!NumInPartyGT(2)~ THEN REPLY ~Um... no?~ GOTO MRCampfireMusic2Solo
	IF ~NumInPartyGT(2)~ THEN REPLY ~so what do you have in mind?~ GOTO MRCampfireMusic2Group
	IF ~!NumInPartyGT(2)~ THEN REPLY ~So what do you have in mind?~ GOTO MRCampfireMusic2Solo
END

IF ~~ THEN BEGIN MRCampfireMusic2Naughty
	SAY ~(Imoen looks at you warily.)~
	= ~What in Torm's name are you talkin' about?  I hope that doesn't mean what I *think* it means, <CHARNAME>!~
	IF ~Gender(Player1,MALE)~ THEN REPLY ~Knockin' boots, a bit of the ol' in and out, a roll in the hay - have SEX, SEX dammit! I think I've earned it!~ GOTO MRCampfireMusic2Naughty2
	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Knockin' boots, bumping uglies, a roll in the hay - have SEX, SEX dammit! I think I've earned it!~ GOTO MRCampfireMusic2Naughty2
	IF ~~THEN REPLY ~I meant that... well, you've come to mean a lot to me, much more than I thought you would and... if you wanted to... we could *ahem* sleep together?~ GOTO MRCampfireMusic2NaughtyNice
	++ ~Hah, of course not, I was just joking, Imoen! You aren't the only one that can do that, you know?~ GOTO MRCampfireMusic2NaughtyJoke
END

IF ~~ THEN BEGIN MRCampfireMusic2NaughtyJoke
	SAY ~Heh, guess you're right.~ 
	IF ~NumInPartyGT(2)~ THEN GOTO MRCampfireMusic2Solo
	IF ~!NumInPartyGT(2)~ THEN GOTO MRCampfireMusic2Group
END

IF ~~ THEN BEGIN MRCampfireMusic2Naughty2
	SAY ~(Imoen's face goes completely pale) All the times you listened to me, all we've talked about, everything you've told me - it was just to get me in bed with you?~
	IF ~Gender(Player1,MALE)~ THEN GOTO MRCampfireMusic2Naughty2Male
	IF ~Gender(Player1,FEMALE)~ THEN GOTO MRCampfireMusic2Naughty2Female
END

IF ~~ THEN BEGIN MRCampfireMusic2Naughty2Male
	SAY ~You- you BASTARD!  How dare you take advantage of me like that!  Even if I weren't your SISTER - or did you forget that part, you creep? - I would never, EVER let you touch me!~
	= ~I'd rather try to get my soul back alone, or rot without it rather than stay in the party with someone as twisted as you!  How- how could I ever trust you, knowing that all you want is- is to bed me like some cheap whore?~
	= ~I thought you were a better <PRO_MANWOMAN> than that.  And obviously I was wrong.  Goodbye!~
	IF ~~ THEN DO ~LeaveParty()
	ReputationInc(-1) 
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	IncrementGlobal("MRKinCounter","GLOBAL",-5)
	SetGlobal("MRConsequences","GLOBAL",1)
	END
	EscapeArea() // IMOEN SHOULD GO TO THE COPPER CORONET~
	EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2Naughty2Female
	SAY ~You- you BITCH!  How dare you take advantage of me like that!  Even if I weren't your SISTER - or did you forget that part, you creep? - I would never, EVER let you touch me!~
	= ~I'd rather try to get my soul back alone, or rot without it rather than stay in the party with someone as twisted as you!  How- how could I ever trust you, knowing that all you want is- is to bed me like some cheap whore?~
	= ~I thought you were a better <PRO_MANWOMAN> than that.  And obviously I was wrong.  Goodbye!~
	IF ~~ THEN DO ~LeaveParty()
	ReputationInc(-1) 
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	IncrementGlobal("MRKinCounter","GLOBAL",-5)
	SetGlobal("MRConsequences","GLOBAL",1)
	END
	EscapeArea() // IMOEN SHOULD GO TO THE COPPER CORONET~
	EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2NaughtyNice
	SAY ~(Imoen's face goes completely pale; she is troubled and confused. It is as if she has imagined this situation countless times before.)~
	= ~Oh... no, no, <CHARNAME>...  You... I mean, you matter a lot to me, you're the most important person in my life right now, but...~
	=~I do love you but... not in that way... you understand?~
	++ ~Oh...~ GOTO MRCampfireMusic2NaughtyNiceSad
	IF ~Gender(Player1,MALE)~ THEN REPLY ~What?  You don't like guys?  Is that it?~ GOTO MRCampfireMusic2NaughtyNiceSadF
	IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Is it because I'm a woman?  Because I love you more than any man ever could.~ GOTO MRCampfireMusic2NaughtyNiceSadF
	++ ~Yeah, I understand. You're just another bitch that wants my help but who isn't planning on giving anything back in exchange.~ GOTO MRCampfireMusic2NaughtyNiceBitch
END

IF ~~ THEN BEGIN MRCampfireMusic2NaughtyNiceSad
	SAY ~Oh, I'm so sorry <CHARNAME>! I didn't want to disappoint you so much but... it just can't be...~
	=
	~(Her voice drops to a barely audible whisper) I've... I decided some time ago... that I wouldn't let myself love you... no matter what.~
	=
	~I am sorry, <CHARNAME>... it cannot be.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3) 
	SetGlobal("MRKinCounter","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2NaughtyNiceSadF
	SAY ~No, that's not it at all!  Oh, I'm so sorry <CHARNAME>! I didn't want to disappoint you so much but... it just can't be.~
	=
	~(Her voice drops to a barely audible whisper) I've... I decided some time ago... that I wouldn't let myself love you... no matter what.~
	=
	~I am sorry, <CHARNAME>...~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2NaughtyNiceBitch
	SAY ~Fine, get mad at me... this time I won't hold your words against you; I know it's your pain that is talking, not you.~
	=
	~I am sorry, <CHARNAME>. It cannot be.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	IncrementGlobal("MRKinCounter","GLOBAL",-2)~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2Group
	SAY ~Well just light a fire, sit down all of you and I'll show you the kind of relaxation I have in mind for tonight!~
	++ ~Whoa! It was about time... party orgy! (Begin to undress.)~ GOTO MRCampfireMusic2Orgy
	++ ~(do as she says.)~	DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2")~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2Solo
	SAY ~Well just light a fire, sit down and I'll show you the kind of relaxation I have in mind for tonight!~ 
	++ ~Whoa! It was about time... alone in the forest, let's have some action! (Begin to undress.)~ GOTO MRCampfireMusic2Orgy
	++ ~(do as she says.)~	DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2")~ EXIT
END


IF ~~ THEN BEGIN MRCampfireMusic2Orgy
	SAY ~Uh, what didya say, <CHARNAME>? I got distracted by the bird that just took off out of that bush...~
	++ ~(Discreetly put your clothes back on and just do as she says.)~ DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2")~ EXIT
	IF ~NumInPartyGT(2)~ THEN REPLY ~(Ignore her and get completely naked.)~ GOTO MRCampfireMusic2OrgyGroup
	IF ~!NumInPartyGT(2)~ THEN REPLY ~(Ignore her and get completely naked.)~ GOTO MRCampfireMusic2OrgySolo
END
END

CHAIN IF ~~ THEN IMOEN2J MRCampfireMusic2OrgyGroup
	~(She - and everyone else - is astounded when they see you like that. You realize too late that this is no orgy.)~
	= ~(She stares at you in shock.  Her lips begin to tremble. Then she can't hold it anymore and bursts into laughter.)~
	==VICONIJ IF ~CheckStatGT(Player1,13,CHR) IsValidForPartyDialog("Viconia")~ THEN ~(Viconia arches an eyebrow as she regards your naked form - and her gaze is most certainly appreciative.)~
	==AERIEJ IF ~Gender(Player1,MALE) IsValidForPartyDialog("Aerie")~ THEN ~<CHARNAME>!  W-w-what are you-  Put back on your c-clothes!~
	==NALIAJ IF ~Gender(Player1,MALE) IsValidForPartyDialog("Nalia")~ THEN ~*ahem*  <CHARNAME>?  Could you... ah.. cover yourself?~
	==NALIAJ IF ~Gender(Player1,MALE) CheckStatGT(Player1,13,CHR) IsValidForPartyDialog("Nalia")~ THEN ~Not that I'm complaining of the view, mind you.~	
	==NALIAJ IF ~Gender(Player1,MALE) !CheckStatGT(Player1,10,CHR) IsValidForPartyDialog("Nalia")~ THEN ~Some of us could live without seeing your 'charms'.~
	==MAZZYJ IF ~Gender(Player1,MALE) IsValidForPartyDialog("Mazzy")~ THEN ~That is hardly appropriate, <CHARNAME>.  Is there a purpose to this tawdry display?~
	==VICONIJ IF ~!CheckStatGT(Player1,13,CHR) IsValidForPartyDialog("Viconia")~ THEN ~(Viconia rolls her eyes)  Were I you, <CHARNAME>, I would not be so quick to parade your... shortcomings.~
	==JAHEIRAJ IF ~Gender(Player1,MALE) IsValidForPartyDialog("Jaheira")~ THEN ~(Jaheira merely snorts and turns away, obviously unimpressed by your antics.)~

	==KORGANJ IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,9,CHR) IsValidForPartyDialog("Korgan")~ THEN ~Oi! Oi!  Now that be worth campin' in a bloody field o' flowers!~
	==KORGANJ IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,10,CHR) IsValidForPartyDialog("Korgan")~ THEN ~Kin o' a god or not, yer still an ugly bugger.  Put yer clothes back on 'fore ye ruin me eyes for good!~
	==EDWINJ IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,13,CHR) IsValidForPartyDialog("Edwin")~ THEN ~Idiocy!  Everywhere I turn, idiocy!  (Although if idiocy always had such succulent breasts, perhaps I would be more forgiving.)~
	==EDWINJ IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,13,CHR) !CheckStatLT(Player1,10,CHR) IsValidForPartyDialog("Edwin")~ THEN ~Idiocy!  Everywhere I turn, idiocy!~
	==EDWINJ IF ~Gender(Player1,FEMALE) CheckStatLT(Player1,10,CHR) IsValidForPartyDialog("Edwin")~ THEN ~Idiocy!  Everywhere I turn, idiocy!  (Ugh!  Hideous!  It shall take a week to get that image out of my mind!)~
	==JANJ IF ~Gender(Player1,FEMALE) IsValidForPartyDialog("Jan")~ THEN ~Did I ever tell you about the time my second-cousin-twice-removed Bertle went skinny dipping in the jungle?  No?  There were flesh-eating fish in the water.  It didn't end well.~
	==HAERDAJ IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,12,CHR) IsValidForPartyDialog("HaerDalis")~ THEN ~Ah, my ravishing raven - how long I have yearned to see you in all your glory.~
	==HAERDAJ IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,12,CHR) IsValidForPartyDialog("HaerDalis")~ THEN ~Ah, my raven - while you have a unique beauty, often concealment is the greater part of glamour.~
	==ANOMENJ IF ~Gender(Player1,FEMALE) IsValidForPartyDialog("Anomen")~ THEN ~Milady, I must protest!  Have some dignity for yourself!~
	==VALYGARJ IF ~Gender(Player1,FEMALE) IsValidForPartyDialog("Valygar")~ THEN ~Well, that was... unexpected.~
	==KELDORJ IF ~Gender(Player1,FEMALE) !CheckStatGT(Player1,13,CHR) IsValidForPartyDialog("Keldorn")~ THEN ~That is hardly appropriate, <CHARNAME>.  Is there a purpose to this tawdry display?~
	==MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN ~Yes!  Wait - Boo says that I should not also take off my clothes and dance around.  Boo has ruined my fun!~
	==CERNDJ IF ~IsValidForPartyDialog("Cernd")~ THEN ~Is it not normal that <PRO_HESHE> wears what nature has provided?  Do not be bothered by their comments, <CHARNAME>.~
END IMOEN2J MRCampfireMusic2OrgyResponse

APPEND IMOEN2J
IF ~~ THEN BEGIN MRCampfireMusic2OrgyResponse
	SAY ~(She barely manages to speak)  What... what are... you doing...!?~
	++ ~Euhh... we were supposed to get it on!~ GOTO MRCampfireMusic2OrgySex
	++ ~Uh... I'm gonna take a bath... in that lake over there... yeah, that's it.~ GOTO MRCampfireMusic2OrgyBath
END

IF ~~ THEN BEGIN MRCampfireMusic2OrgySolo
	SAY ~(Her eyes widen when she sees you like that. You realize too late that, surprisingly enough, Imoen wasn't suggesting you have some wild sex by the campfire.)~ 
	~(She stares at you in shock.  Her lips begin to tremble. Then she can't hold it anymore and bursts into laughter.)~
	= ~(She barely manages to speak) What... what are... you doing...!?~
	++ ~Euhh... we were supposed to get it on!~ GOTO MRCampfireMusic2OrgySex
	++ ~Uh... I'm gonna take a bath... in that lake over there... yeah, that's it.~ GOTO MRCampfireMusic2OrgyBath
END


IF ~~ THEN BEGIN MRCampfireMusic2OrgyBath
	SAY ~G-get your clothes on! We'll have time for that later!~
	=
	~(She's laughing so hard that she has to wipe a tear from her eye)  Gods, you're a nutter!~
	=
	~Just sit down and stay there!~
	IF ~~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2")~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic2OrgySex
	SAY ~Get it... on?  (She's laughing so hard that she has to wipe a tear from her eye)~
	~Gods, you're such a pervert! Get your clothes on and sit down there, dammit!~
	IF ~~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2")~ EXIT
END




// *** Act 3 ***

IF WEIGHT #-900 ~NumInPartyGT(2) Global("MRCampfireMusic","GLOBAL",3)~ THEN BEGIN MRCampfireMusic3Group
	SAY ~(Imoen stares at the flames. Everyone is sitting around the small fire, but few words have been said up to now. Finally, Imoen speaks.)~ [ MRImRom5 ]
	IF ~~ DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2a")~ EXIT
END

IF WEIGHT #-900 ~!NumInPartyGT(2) Global("MRCampfireMusic","GLOBAL",3)~ THEN BEGIN MRCampfireMusic3Solo
	SAY ~(Imoen stares at the flames. You both are sitting around the small fire, but few words have been said up to now. Finally, Imoen speaks.)~ [ MRImRom5 ]
	IF ~~ DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe2a")~ EXIT
END
END

APPEND BIMOEN2

IF WEIGHT #-900 ~Global("MRCampfireMusic","GLOBAL",4)~ THEN BEGIN MRCampfireMusic4
        SAY ~This place is so *perfect*!  It's just so peaceful... well, now that the drow have given up for a while.~
        IF ~~ THEN GOTO MRCampfireMusic4Chain
END
END

CHAIN BIMOEN2 MRCampfireMusic4Chain
~It's been a long time since I've felt like this... a really long time...~ 
= ~(For a moment it seems she may sink into sadness, but she gives her head a light shake as if she is clearing away bad memories)~
= ~(There's a hint of anticipation and expectancy in her eyes that tells you she's just decided to finally reveal a jealously guarded secret. She smiles, but it is clear that she is a bit nervous)~	
= ~Y'know what?  I've finally made up my mind - I'm going to do it!  No one's ever seen what I'm about to show ya.  Well *I've* seen it, of course - and so has Gorion and ol' PuffGuts - but no one else in the Realms has!  And it's just the perfect moment for it, you'll see!~ 
= ~(Imoen looks for something inside her backpack. After searching through her belongings, she finally takes out a small object.)~
== BIMOEN2 IF ~!Class(Player1,BARD)~ THEN ~(She shows it to you; upon further examination you can see it's a little figurine, made of ivory, in the form of a musical instrument.  You aren't sure due to its small proportions and your lack of knowledge on the matter, but it reminds you of a lute or similar stringed instrument.)~
== BIMOEN2 IF ~Class(Player1,BARD)~ THEN ~(She shows it to you; upon further examination you can see it's a little figurine, made of ivory, in the form of a musical stringed instrument; you are not sure given its small proportions, but your expert eyes suspect that it is a guitar, a very rare instrument you have only seen in books.)~
== BIMOEN2 IF ~NumInPartyGT(2)~ THEN ~(Without pausing, she casts a spell before the eyes of the entire party.)~ 
== BIMOEN2 IF ~!NumInPartyGT(2)~ THEN ~(Without pausing, she starts casting a spell before your eyes.)~
== BIMOEN2 ~*Scyrooh... Vyxdiq'ly... Hekt-toh...*~ 
= ~(The arcane words echo in your head as the small figurine begins to move by itself. It slowly grows until a full-sized instrument rests in Imoen's arms; it looks wooden now, but still the colour of ivory.)~ 
= ~Tee heee!  Look at your face!  Petrified, aren't ya?  Well, *that* wasn't the surprise!~ 
= ~(Imoen's fingers begin to gracefully fly over the strings, playing a beautiful melody.)~ 
= ~(She raises her head and smiles gently and triumphantly at you. She *knows* you knew absolutely nothing of this ability of hers.  Noticing your inquisitive look, she begins to explain.)~ [ MRImInt3 ]  
= ~Gorion... well, he was always tryin' to teach me magic spells, remember?  Gosh, how boring.  Or that's what I thought back then.  Anyways, once he recognized my... *ahem* ... sneaking-around skills and wonderful inventiveness- (She winks at you)~
= ~He tried to encourage me to become some sort of bard so I wouldn't end up as a 'common thief', I think his words were.~ 
= ~To do that, he gave me... this. (She is still playing, having no trouble whatsoever talking and playing simultaneously.)~
= ~I was amazed when I first saw it 'grow', heh... I had no idea things like this existed. He didn't tell me from where he had gotten it; he just told me it was from far away to the south, 'past Lapaliiya and Halruaa', he said. I didn't even know those places existed back then.~
= ~He said it's a 'guitar"', and a magic one at that... it sounds kinda funny, dontcha think? 'Guitar'... (She shrugs) I didn't care much about the name anyway.~
== BIMOEN2 IF ~Class(Player1,BARD)~ THEN ~Y'know, I was quite surprised he didn't give it to ya instead... you were all into music an' all the bardish stuff... I guess maybe he didn't want to spoil you even *more*?~
== BIMOEN2 ~He showed me the spell to make it grow and shrink - that one OF COURSE I wanted to learn, hehe - an' told me to have patience and take my time to learn...~ 
= ~'Course, Gorion didn't know how to play a guitar, but he told me PuffGut - uh, Winthrop - did. An' that surprised me *even* more, heh... I mean, why would Winthrop know how to play such a rare instrument?  He went all serious 'n somber every time I asked, got quite upset with me... so I never got to know.~ 
= ~(She giggles loudly)  Aah, what a hard time I had convincing him to teach me something to start with!  I had to threaten him with telling everyone that he played the guitar if he didn't teach me... he was all secretive with it, he was *really* upset with Gorion for telling me about it... But he ended up teaching me, hehe.~ 
= ~He was very timid, y'know... no one but Gorion and very few others knew this... I think he and Gorion were much closer friends than they let anyone know. Anyway, he was a master at it.  A true master indeed!~ 
= ~He just taught me a little - the basics, y'know?  He constantly spoke of 'developing yourself' and all that... 'course now I see he was right, but back then I was an impatient little git.~ = ~And I didn't become a bard, obviously!  I couldn't stand playing in front of people. I played everything wrong! It was awful... neither Gorion and Winthrop could believe I played *so* horribly, although they really tried to hide it...~
== BIMOEN2 IF ~Class(Player1,BARD)~ THEN ~'Sides - there was already one bard around.  No need for two, 'specially if the second was as *bad* as me.~
== BIMOEN2 ~Neither Winthrop nor Gorion knew I went on practicing when I was completely alone. They thought I had given it up, 'like everything else', heheh...~
= ~An' that's the story of the Imoen's magic guitar! (She giggles and starts to play something different.)~ [ MRImInt2 ] 
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN ~Most impressive I'd say, child. That you've been able to learn this all by yourself demonstrates a great determination.~
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN ~Imoen, that was great! It sounded so beautiful, I wish I could play as you do... I can defend myself with a flute, but not with as much skill as you!~
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN ~I witnessed a great concert with stringed instruments once, back in my home. The group was excellent... I can see you becoming a professional some day, Imoen.~
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN ~Aah, it's so beautiful it reminds me of the time when Uncle Squishberry challenged a traveling minstrel who had a passion for turnips to a bagpipe contest. They were both such windbags that they played non-stop from dawn to dusk never tiring. The contest, which likely could have gone on for days, was ended abruptly when Aunt Squishberry pierced their instruments with her cooking knife. It was a terrible, terrible loss...~
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN ~I don't understand all that mystery, liggr.  Playing an instrument is perhaps the most useless activity I can think of.~
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN ~Look, the monkey does have some digital dexterity after all; she knows how to use her opposable fingers! (The only ability she has managed to develop in all these years of worthless living, I can be sure.)~
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN ~Arr this is stupid!  We should be killin' some bloody foes instead of sittin' here huggin' trees!~
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN ~Ooh, it's such a nice thing. Boo likes it a lot, right Boo?~
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis")~ THEN ~Ahh, I wish I had known this before... such a wonderful style, such a delicious technique, such a delightful melody! My precious wildflower, you are made for music.~
== KELDORJ IF ~IsValidForPartyDialog("Keldorn")~ THEN ~You handle that instrument as well as your magic, young one. Your potential is truly impressive. I wonder what else you can do that you have not shown us yet.~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN ~Very impressive indeed, Imoen. I'm surprised you could keep this marvelous thing to yourself all this time. (Mazzy smiles) You have been too selfish!~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN ~Incredible! Promise you will play more frequently from now on, Imoen.~
END BIMOEN2 MRCampfireMusic5



APPEND BIMOEN2
IF ~~ THEN BEGIN MRCampfireMusic5
	SAY ~Surprised, hmm?~
	++ ~You're incredibly good, Imoen - but you didn't have that much time to spend alone! How is it you've become such a good musician?~ DO ~SetGlobal("MRCampfireMusic","GLOBAL",4)~ GOTO MRCampfireMusic5How
	++ ~how come you've been able to learn so much? You didn't spend much time alone, as I recall.~ DO ~SetGlobal("MRCampfireMusic","GLOBAL",4)~ GOTO MRCampfireMusic5How
	++ ~I knew nothing of this... why didn't you tell me?~ DO ~SetGlobal("MRCampfireMusic","GLOBAL",4)~ GOTO MRCampfireMusic5WhyNot
	IF ~Class(Player1,BARD)~ THEN REPLY ~Imoen, I would have welcome a 'partner in arms' very gladly... we could have been a great duo. Why did you hide this from me?~ DO ~SetGlobal("MRCampfireMusic","GLOBAL",4)~ GOTO MRCampfireMusic5WhyNot
	IF ~!Class(Player1,BARD)~ THEN REPLY ~Imoen, please take no offense, but I don't like music at all... I beg that you stop playing.~ DO ~SetGlobal("MRCampfireMusic","GLOBAL",4)~ GOTO MRCampfireMusic5Hate
	++ ~I hate music, please stop it at once!~ DO ~SetGlobal("MRCampfireMusic","GLOBAL",4)~ GOTO MRCampfireMusic5Hate
END

IF ~~ THEN BEGIN MRCampfireMusic5Hate
	SAY ~(She stops playing, puzzled) Whatcha mean ya *don't like music*? Everyone likes at least some sort of music!~ [ MRImEndG ]  
	++ ~Uh, actually it was just a joke, heheh...~ GOTO MRCampfireMusic5HateJoke
	IF ~!Class(Player1,BARD)~ THEN REPLY ~Well, *I* don't, Imoen.~ GOTO MRCampfireMusic5HateYes
	++ ~It's not that I hate all music, but *your* music.~ GOTO MRCampfireMusic5HateYou
END

IF ~~ THEN BEGIN MRCampfireMusic5HateYou
	SAY ~You really know how to make an insecure girl feel comfortable, you jerk!~
	=
	~I don't even know why I ever wanted to play in front of *you* anyway.~
	=
	~Whatever.  I'm going to bed.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	IncrementGlobal("MRKinCounter","GLOBAL",-2)
	RestParty()~ 
	EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic5HateYes
	SAY ~How's it you never mentioned that?  It's quite unusual, you know... I'd bet even *Irenicus* likes some kind of music.~
	IF ~~ THEN GOTO MRCampfireMusic5HateStopGroup
	IF ~!NumInPartyGT(2)~ THEN GOTO MRCampfireMusic5HateStopSolo
END

IF ~~ THEN BEGIN MRCampfireMusic5HateStopGroup
	SAY ~Oh well, if ya don't like it there's no point in going on playing... sorry people, show's over!~
	IF ~~ THEN GOTO MRCampfireMusic5HateStopEnd
END

IF ~~ THEN BEGIN MRCampfireMusic5HateStopSolo
	SAY ~Oh well, if ya don't like it there's no point in going on playing... show's over then!~
	IF ~~ THEN GOTO MRCampfireMusic5HateStopEnd
END

IF ~~ THEN BEGIN MRCampfireMusic5HateStopEnd
	SAY ~(She shrinks her instrument again; she seems a little uncomfortable at first, but she shrugs it off soon enough and behaves normally again. You spend some more time talking around the fire, chatting about anything but Irenicus and Bodhi, and then go to bed to get some much deserved rest.)~
	IF ~Global("ImoenRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("MRCampfireFriendlyEnd","GLOBAL",1)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe3")~ EXIT
	IF ~Global("ImoenRomanceActive","GLOBAL",3)~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	RestParty()~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic5HateJoke
	SAY ~Ah, fine, ya had me worried there, heheh... (she starts playing again.)~ [ MRImInt2 ]  
	++ ~Anyway, you're incredibly good, Imoen. But you didn't have all that much time to spend alone! How's it you've become such a good musician?~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ GOTO MRCampfireMusic5How
	++ ~How come you've been able to learn so much? You didn't spend much time alone, as I recall.~ GOTO MRCampfireMusic5How
	++ ~Oh well... I didn't know anything about this... why didn't you tell me?~ GOTO MRCampfireMusic5WhyNot
END

IF ~~ THEN BEGIN MRCampfireMusic5How
	SAY ~Well, not to sound big-headed, but... I progressed really fast.  You aren't the only one with talent, y'know!  I'm a quick study.~
	=
	~How could I have changed from a 'common thief' to such a powerful mage *so* easily in *so* little time if I wasn't?  I'm just great, dontcha think? (She laughs playfully, winking at you with a cocky expression)~
	=
	~Hehe - nah, don't mind me.  It's just that I liked it a lot.  I dunno... it felt kinda exciting knowing that I could play something that most people didn't even know *existed*.~
	=
	~So I spent all the time I could on it.  And, well... I'm usually pretty good at what I really like, obviously!~
	++ ~and why didn't you tell me before?~ GOTO MRCampfireMusic5WhyNot
	++ ~(Nod and let her continue playing.)~ GOTO MRCampfireMusic6
	++ ~Well I lied; all that sounds like a huge load of elephant turds, both your music *and* your story.~ GOTO MRCampfireMusic5Turd
	++ ~Great! Go on playing then.~ GOTO MRCampfireMusic5Continue
	++ ~Yeah, you're a big-headed alright. Why don't you take your 'fabulous guitar' and your 'fantastic magic' and get outta my sight?~ DO ~ActionOverride(Player1,SetDialog("Player1"))~ EXTERN PLAYER1 MRCampfireMusic5Bitch
END

IF ~~ THEN BEGIN MRCampfireMusic5WhyNot
	SAY ~Well, I didn't want to until I was at least kinda good at it. I always get all shaky playin' in public.  Just *thinking* about it nearly made me sick!~
	=
	~Y'know, when everything in Baldur's Gate was solved I was toying with the idea, trying to find the appropriate situation... But then Irenicus showed up and ruined it all.~
	=
	~I hadn't played again 'til now. And I'm surprised I'm not trembling right now, playing in front of ya... guess I've got more confidence now.~
	++ ~oh, that's fine then. Go on playing, I'll enjoy listening.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ GOTO MRCampfireMusic5Continue
	++ ~(Nod and let her continue playing.)~ GOTO MRCampfireMusic6
	++ ~You know what, I lied; all that sounds like a huge load of horse crap, both your music *and* your story.~ GOTO MRCampfireMusic5Turd
	++ ~Yeah, you're a big-headed alright. Why don't you take your 'fabulous guitar' and your 'fantastic magic' and get outta my sight?~ DO ~ActionOverride(Player1,SetDialog("Player1"))~ EXTERN PLAYER1 MRCampfireMusic5Bitch
END

IF ~~ THEN BEGIN MRCampfireMusic5Turd
	SAY ~(She looks at you suspiciously, and nearly ceases her strumming.)~
	=
	~That's another one of your humorless jokes... right?~
	++ ~Hahah, you got me this time... c'mon, go on playing...~ GOTO MRCampfireMusic6
	++ ~I'm not joking, it's so bad it *stinks* from here, and that's quite difficult since it's music!~ GOTO MRCampfireMusic5HateYou
END
END

APPEND PLAYER1
IF ~~ THEN BEGIN MRCampfireMusic5Bitch
	SAY ~(When you are about to utter these words, you notice Imoen is in a very susceptible mood this night. Perhaps saying this would hurt her much more than any other thing you might tell her.)~
	=
	~(Maybe you should take a few seconds to reconsider.)~
	++ ~(Say what you intended to.)~ EXTERN BIMOEN2 MRCampfireMusic5Bitch
	++ ~(Swallow your words and be nice) Oh, that's fine then. Go on playing, and I'll enjoy listening.~ EXTERN BIMOEN2 MRCampfireMusic5Continue
	++ ~(Tell her something a little less harsh) You know what, I lied; all that sounds like a huge load of cow excrement, both your music *and* your story.~ EXTERN BIMOEN2 MRCampfireMusic5Turd
END
END

APPEND BIMOEN2
IF ~~ THEN BEGIN MRCampfireMusic5Bitch
	SAY ~(The music stops at once. Imoen looks up in shock)  I- what??  I was JOKING!~
	=
	~An' I know you can't be serious about that... so I won't 'overreact' to what you just said.~
	=
	~I'm no longer in the mood... if you'll excuse me...~
	=
	~(Imoen stands up and walks out of the scene, taking the guitar with her. You can see how a tear reflects the flames as she walks away.)~
	IF ~NumInPartyGT(2)~ THEN GOTO MRCampfireMusic5BitchGroup
	IF ~!NumInPartyGT(2)~ THEN GOTO MRCampfireMusic5BitchSolo
END

IF ~~ THEN BEGIN MRCampfireMusic5BitchGroup
	SAY ~(After this no one really feels talkative anymore, so you all prepare to retire. You fall asleep hearing the faint sound of a slow, sad melody from afar.)~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-2)
	RestParty()~
	EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic5BitchSolo
	SAY ~(There is no longer any point to staying awake, so you go head off to bed. You fall asleep hearing the faint sound of a slow, sad melody from afar.)~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-2)
	RestParty()~
	EXIT
END

IF ~~ THEN BEGIN MRCampfireMusic5Continue
	SAY ~Of course you will! (She chuckles happily, and stops the melody she was playing.)~ [ MRImEndG ]  
	=
	~Listen... (Imoen prepares a chord and clears her throat with a slight cough.)~
	IF ~~ THEN GOTO MRCampfireMusic6
END

IF ~~ THEN BEGIN MRCampfireMusic6
	SAY ~(She closes her eyes and the melody starts, a soft, simple tune that serves as cover for her voice.)~ 
	=	~(She sings with a voice you've never heard before. It resembles the sweetest of flutes, dancing in harmony with the guitar's notes.)~ [ MRImInt1 ] 

	= ~Tears upon the dust, they fall-
	drops of rage at a stolen life
	His soulmate dead, his daughter slain
	Their protector - where was he?~
	
	= ~Vengeance sworn, he takes the quest
	To a distant foe, step by step
	What matters the price?  Blood will spill
	And wrath will take the pain away.~
	
	= ~Years of dust upon his boots, rust upon his sword
	A dead life lived for the memory of ash and bone
	A withered rose in his pocket remains
	And crumbles, just like him.~
	
	= ~Into a tomb of thorn, he falls
	Hollow-hearted, soul-slain
	A hundred deaths upon his hands
	He dies alone - in dread and shame.~
	
	= ~(Her voice fades, as the last chord echoes in the night air. She opens her eyes, and looks around as if she has just come out of a trance, a faint smile on her lips and her eyes close to tears.)~

	IF ~~ THEN GOTO MRCampfireMusic7
END
END

CHAIN BIMOEN2 MRCampfireMusic7
~(You realize you've never heard Imoen sing before. You can remember her whistling or humming - maybe even this exact song - but never singing.)~ [ MRImRom6 ] 
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN ~Your voice is something worthy of notice, Imoen.~
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN ~You... you have a great voice, Imoen.  I hadn't noticed until now... how is it possible you had not sung in front of others before?~
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN ~That was beautiful.~
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN ~You should come over to my home and play in front of the whole family. I'm sure they'd enjoy it! Well, except Granny Jansen, she's completely deaf...~
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN ~Hah, this is even worse! This is a worthless waste of time, <CHARNAME>. I already regret agreeing to stay in this forsaken place.~
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN ~So the simian is able to follow the music with some coherent words too! (These inferior monkeys are learning far too fast for my taste.)~
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN ~Alright so the lass is done with 'er bloody music! Let's get back to the killin'!~
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN ~Boo loves your singing!  We both want to hear more!~
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis")~ THEN ~I'm serious here, my little bird. You should consider playing and singing professionally. We would be a marvelous match indeed.~
== KELDORJ IF ~IsValidForPartyDialog("Keldorn")~ THEN ~As I might already have said, you'll never stop astounding me, Imoen.~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy")~ THEN ~That song is something to think on, Imoen. I don't believe I agree with its lyrics though.~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN ~Now I am really surprised. I never suspected you had such a wonderful voice.~
END BIMOEN2 MRCampfireMusic8


APPEND BIMOEN2
IF ~~ THEN BEGIN MRCampfireMusic8
	SAY ~(Imoen is looking at you - obviously more than a little nervous. She expects some sort of opinion or words from you.)~
	++ ~(say nothing and look at her completely mesmerized - you can't believe it at all)~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ GOTO MRCampfireMusic8Stun
	++ ~Incredible, Imoen... by any standards. I had never *ever* thought you'd have this kind of gift!~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ GOTO MRCampfireMusic8Gift
	++ ~It's good but, you know, you should work on those high notes.~ GOTO MRCampfireMusic8High
	++ ~(Shrug) Whatever.~ GOTO MRCampfireMusic8Shrug
	++ ~Not bad, but it doesn't suit my tastes.~ GOTO MRCampfireMusic8Suit
	++ ~You have wasted a lot of time trying to be a good musician - and it hasn't worked at all.~ GOTO MRCampfireMusic8Waste
	++ ~(Fart loudly) Hear that? Better than your *horrid* song!~ GOTO MRCampfireMusic8Fart
END

IF ~~ THEN BEGIN MRCampfireMusic8Stun
	SAY ~(Imoen laughs loudly)  Hey, <CHARNAME>!  You're still awake, right?  Hello?~
	=
	~Hehee, I'll take that as a compliment.~
	IF ~~ THEN GOTO MRCampfireMusic9
END

IF ~~ THEN BEGIN MRCampfireMusic8Gift
	SAY ~Gee I can't be *that* good!~
	=
	~Well... maybe a little, heheeh!(She winks at you.)~
	IF ~~ THEN GOTO MRCampfireMusic9
END

IF ~~ THEN BEGIN MRCampfireMusic8High
	SAY ~(She sighs) I know, I know... I try, but I'm no bard by any means.~
	=
	~At least not yet! (She smiles and winks at you.)~
	IF ~~ THEN GOTO MRCampfireMusic9
END

IF ~~ THEN BEGIN MRCampfireMusic8Shrug
	SAY ~And that's all? You sure aren't very expressive.~
	IF ~~ THEN GOTO MRCampfireMusic9
END

IF ~~ THEN BEGIN MRCampfireMusic8Suit
	SAY ~Oh, sorry 'bout that... maybe ya'd like some 'fast-paced' music better?~
	=
	~I can try an' play things like that too... I've got a wide offering for my public, heheh! (She winks at you.)~
	IF ~~ THEN GOTO MRCampfireMusic9
END

IF ~~ THEN BEGIN MRCampfireMusic8Waste
	SAY ~Hmpf, that was *mean*, y'know?~
	IF ~!NumInPartyGT(2)~ THEN GOTO MRCampfireMusic5HateStopSolo
	IF ~NumInPartyGT(2)~ THEN GOTO MRCampfireMusic5HateStopGroup
END

IF ~~ THEN BEGIN MRCampfireMusic8Fart
	SAY ~(Imoen can't help it and laughs loudly) That was *gross*, hahahaah!~
	=
	~So 'horrid song', huh!? Well I'll try to play something better, but only if you put a plug in your 'instrument'! (She chuckles.)~
	IF ~~ THEN GOTO MRCampfireMusic9
END
END

CHAIN BIMOEN2 MRCampfireMusic9
~(The night goes on in a friendly, cheerful mood, Imoen's music gradually allowing other topics to surface.)~
== BIMOEN2 IF ~NumInPartyGT(2)~ THEN ~(Indeed, her music seems to have instilled a spirit of companionship in the hearts of those in your party that had previously been absent.)~
== BIMOEN2 IF ~NumInPartyGT(2)~ THEN ~(Everyone enjoys the night in their own way, regardless of their different beliefs and personalities. The opportunity for taking a break from everything that is going on around you and your party won't show up again soon, after all...)~
== BIMOEN2 IF ~NumInPartyGT(2)~ THEN ~(Topics wander from reminiscence of the past to future plans until the fire is reduced to embers, always avoiding the present. For tonight, Irenicus and Bodhi are replaced by mundane stories, heated discussions or lighthearted jokes, making all the tension and worry about your present situation fade away.)~
== BIMOEN2 IF ~NumInPartyGT(2)~ THEN ~(Finally, the time to rest comes, and everyone retires to their respective bedroll. You see Imoen prepares hers a little away from the rest... then she lies on her back and just stays there, gazing the stars until she falls asleep.)~
== BIMOEN2 IF ~!NumInPartyGT(2)~ THEN ~(Soon enough Imoen is laughing lightheartedly as you retell stories from happier times in Candlekeep, and you spend the night talking about past and future alike until the fire is reduced to embers, always avoiding the present.)~
== BIMOEN2 IF ~!NumInPartyGT(2)~ THEN ~(For tonight, Irenicus and Bodhi are replaced by mundane stories and lighthearted jokes, making all the tension and worry about your present situation fade away.)~
== BIMOEN2 IF ~!NumInPartyGT(2)~ THEN ~(Somehow you end up lying on the turf resting on your backs, talking about anything and everything while you gaze at the countless stars that populate the firmament, until she falls asleep.)~

END BIMOEN2 MRCampfireMusic10

APPEND BIMOEN2
IF ~~ THEN BEGIN MRCampfireMusic10
	SAY ~(With the background of the crickets' song and the soft zephyr passing through the branches overhead, the tranquility slowly lulls you into peaceful sleep)~
	IF ~~ THEN DO ~SetGlobal("ImoenRomanceActive","GLOBAL",2) ActionOverride("Imoen2",SetDialog("IMOEN2J")) RestParty()~ EXIT
	IF ~Global("ImoenRomanceActive","GLOBAL",1) GlobalGT("MRLoveTalk","GLOBAL",5)~ THEN DO ~SetGlobal("MRCampfireSuccess","GLOBAL",1)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe3")~ EXIT
	IF ~OR(2) Global("ImoenRomanceActive","GLOBAL",3) !GlobalGT("MRLoveTalk","GLOBAL",5)~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	RestParty()~ EXIT
END







// *** Act 4 ***

IF WEIGHT #-900 ~Global("MRCampfireMusic","GLOBAL",6)~ THEN BEGIN MRCampfireMorning
	SAY ~WAKE UP, <CHARNAME>!~ [ MRImRom4 ]  
	IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("Player1"))~ GOTO MRCampfireMorning2
	END

IF ~~ THEN BEGIN MRCampfireMorning2
	SAY ~*SShhwhoooosshhrrrrttt*~
	IF ~~ THEN EXTERN PLAYER1 MRCampfireMorning2
END

IF ~~ THEN BEGIN MRCampfireMorning3
	SAY ~YES! GOTCHA!! The almighty Bhaalspawn <CHARNAME> caught defenseless by the great Imoen, hehehe!~
	=
	~(Imoen can't stop laughing. She seems to find it extremely hilarious, but you probably can't say the same as you stare at her from the ground, completely soaked in *freezing* water)~
	++ ~(look at her puzzled) Imoen, b- but why!?~ GOTO MRCampfireMorning3Why
	++ ~Grrargh! Come here you! (Tolerate the joke and play along, try to catch her.)~ GOTO MRCampfireMorning3Catch
	++ ~Grrargh! Come here you! (Try to catch her so you'll be able to hit her hard enough so she won't think of *ever* trying that again.)~ GOTO MRCampfireMorning3Catch
	++ ~You brat, look at what you've done!~ GOTO MRCampfireMorning3Bitch
	++ ~(Gather the bit of dignity you have left, try to dry yourself, pick up your belongings and completely ignore Imoen.)~ GOTO MRCampfireMorning3Why4
END

IF ~~ THEN BEGIN MRCampfireMorning3Why
	SAY ~(Your confused expression only makes her laugh even harder. She doubles over, bracing her belly with both hands, from the enjoyable pain of laughing so much.)~
	++ ~(Look very hurt, betrayed) Imoen, I- I thought you... Why did you do that to me? It's... (sniffle)... it's not funny!~ GOTO MRCampfireMorning3Why2
	++ ~(you decide to play along with the joke and try to grab her while you decide on a suitable 'punishment') Grrargh! Come here you!~ GOTO MRCampfireMorning3Catch
	++ ~Grrargh!  Come here you! (Try to catch her so you'll be able to hit her hard enough so she won't think of *ever* trying that again.)~ GOTO MRCampfireMorning3Catch
	++ ~Argh, you- you brat!~ GOTO MRCampfireMorning3Bitch
	++ ~(You are rather annoyed. You grunt as you gather the little bit of dignity you have left and begin to dry yourself. You pick up your belongings and proceed to ignore Imoen completely.)~  GOTO MRCampfireMorning3Why4
END

IF ~~ THEN BEGIN MRCampfireMorning3Why2
	SAY ~(Hearing the tone of your voice, she begins to feel a bit guilty and her laughter dies down.)~
	=
	~C'mon, <CHARNAME>! (She giggles) It was just a joke!~
	++ ~(You are so disappointed with her that you say nothing, just sadly shaking your head in response to her comment.)~ GOTO MRCampfireMorning3Why3
	++ ~(Show your bad temper) Grrargh!  A joke, huh?  Come here you! (You feign anger and try to catch her, but in actuality you intend to play along with the joke.)~ GOTO MRCampfireMorning3Catch
	++ ~(Show your killer instincts) Grrargh!  A joke, huh?  Come here you.! (Try to catch her so that you'll be able to hit her hard enough that she will *never* think of trying it again)~ GOTO MRCampfireMorning3Catch
	++ ~Argh!  You- you bitch! I hate you!~ GOTO MRCampfireMorning3Bitch
	++ ~(You are rather annoyed. You grunt as you gather the little bit of dignity you have left and begin to dry yourself. You pick up your belongings and proceed to ignore Imoen completely.)~ GOTO MRCampfireMorning3Why4
END

IF ~~ THEN BEGIN MRCampfireMorning3Why3
	SAY ~(She gets closer to you and puts her hand on your shoulder) Aaww, c'mon, c'mon, it was just a joke!  I didn't think you'd take it that way! Forgive me?  Please?~
	++ ~(Your charade has been successful, and now's your chance to get some playful 'revenge') Hahah, COME HERE!! (Grab her wrist in an attempt to immobilize her.)~ GOTO MRCampfireMorning3Catch
	++ ~(She has no right to pity you)  Hmph!  Come here, you!  (Grab her wrist and try to catch her, so you'll be able to hit her so hard she won't think of trying it again in a thousand years.)~ GOTO MRCampfireMorning3Catch
	++ ~You have no right to pity me! Get out of my sight and never utter another word in my presence again!~ GOTO MRCampfireMorning3Bitch
	++ ~(Shake your head disgustedly.  Gather the little bit of dignity you have left, try to dry yourself, pick up your belongings, and don't talk to her anymore.)~ GOTO MRCampfireMorning3Why4
END

IF ~~ THEN BEGIN MRCampfireMorning3Why4
	SAY ~(She finds your attitude just too much to bear; if she had been restraining any mirth, she unleashes it all now, laughing so wildly she almost falls to the ground.)~
	=
	~(Seeing you are *really* serious, she manages to calm down a little, and looks at you with joyful tears still in her eyes.)~ 
	=
	~C'mon don't be like that, I was joking! (She can't help another giggle.)~
	++ ~(You think better of it and decide to play along) Hmpf... so joking, huh? COME HERE!~ GOTO MRCampfireMorning3Catch
	++ ~(You think about it and go mad) You were JOKING, HUH!? COME HERE YOU! (Try to catch her so you'll be able to hit her so hard that she won't ever think of trying that again.)~ GOTO MRCampfireMorning3Catch
	++ ~(You realize what a harpy she's been) You bitch, you have no right to do that to me! Get out of my sight and never utter another word in my presence again!~ GOTO MRCampfireMorning3Bitch
	++ ~(Just shake your head at her disapprovingly and ignore her.)~ GOTO MRCampfireMorning3Why5
END

IF ~~ THEN BEGIN MRCampfireMorning3Why5
	SAY ~Ooh, fine then! (She frowns childishly) You always have to ruin all the fun!~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3) SetGlobal("MRKinCounter","GLOBAL",-3)
	SetGlobal("MRCampfireMusic","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMorning3Bitch
	SAY ~Wow, whoa, easy there! Sheesh, it was just a damn joke!~
	++ ~(You think better of it and decide to play along) Hmpf... so joking, huh?  COME HERE!~ GOTO MRCampfireMorning3Catch
	++ ~(You think about it and go mad) You were *joking*, huh?  COME HERE! (Try to catch her so you'll be able to hit her so hard that she won't ever think of trying that again.)~ GOTO MRCampfireMorning3Catch
	++ ~(Just shake your head at her disapprovingly and ignore her.)~ GOTO MRCampfireMorning3Why5
END

IF ~~ THEN BEGIN MRCampfireMorning3Catch
	SAY ~(You stand up and attempt to grab her, but she jumps out of reach too quickly.)~
	=
	~Hahahah, yer too clumsy for me, slowpoke! (She sticks out her tongue at you and carries on laughing!)~
	++ ~(Playfully chase her.)~ GOTO MRCampfireMorning3Chase
	++ ~(Chase her so you can beat her face to a bloody pulp!)~ GOTO MRCampfireMorning3Chase
	++ ~Arrgh, just... just let me be! I'm tired of this, and I'm tired of *you*!~ GOTO MRCampfireMorning3Why5
	++ ~fine, let's see what happens next time you're sleeping, Imoen... hehehe... (Rub your hands together and grin wickedly.)~ GOTO MRCampfireMorning3Revenge
END

IF ~~ THEN BEGIN MRCampfireMorning3Revenge
	SAY ~Hahah, well then I guess I'll have to cast some contingency spells on myself tonight!  You won't have a chance!~
	++ ~Oh... that's true... (Forget about everything and just play along, playfully chasing her.)~ GOTO MRCampfireMorning3Chase
	++ ~(out of options, you'll have to chase her if you want to teach her a lesson.)~ GOTO MRCampfireMorning3Chase
	++ ~Ugh, not fair! Just... just let me be! I'm tired of you and your stupid jokes!~ GOTO MRCampfireMorning3Why5
END

IF ~~ THEN BEGIN MRCampfireMorning3Chase
	SAY ~WHOAH! (Guessing your intentions, she runs off, still teasing you and still laughing) Try if you want, you won't catch me, heheeeh!~
	IF ~~ THEN DO ~SetGlobal("MRCampfireMusic","GLOBAL",7)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("LoveMe4")
	~ EXIT
END



// *** Act 5 ***

IF ~~ THEN BEGIN MRCampfireMorning4
	SAY ~Hahahahahah... hahahah... (She keeps giggling uncontrollably, incredibly happy. Even with all she has been through, it seems there's a part of her that will never change.)~ [ MRImRom1 ]  
	++ ~(forget about what she did and just keep looking at Imoen, not wanting to disturb such a pure feeling of happiness and joy.)~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~  GOTO MRCampfireMorning4Stare
	++ ~Now you'll see, I'll have my revenge! (Playfully tickle her in the sensitive spots you remember from childhood.)~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ GOTO MRCampfireMorning4Tickle
	++ ~REVENGE! (Slap her face with *all* your strength for what she did to you.)~ GOTO MRCampfireMorning4Revenge
	++ ~(Simply stand up)  Well, that is enough! We had some fun, but it's about time we continue on our quest.~ GOTO MRCampfireMorning4Quit
END

IF ~~ THEN BEGIN MRCampfireMorning4Quit
	SAY ~Haheheh... ooh, alright... now I was having some real fun...~
	=
	~(She sighs) But guess you're right, of course. Let's get my soul back, <CHARNAME>!~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END


IF ~~ THEN BEGIN MRCampfireMorning4Ravager
	SAY ~(Something burns inside of Imoen, controlling her from within. Her eyes glow with abyssal flames as she begins to change. She's not Imoen anymore.)~
	=
	~(She is something else. Something very powerful.)~
	=
	~(This may have been the last mistake you ever make.)~
	
	//** Force Imoen into a Ravager change, go hostile, attack until one of you is dead. **//
	
END


IF ~~ THEN BEGIN MRCampfireMorning4Revenge
	SAY ~(Imoen didn't expect this at all. She thought you were playing along, and not seeking to punish her.)~ [ MRImNig2 ]  
	=
	~(You slap as hard as you can - hard enough to split her lip.  She gapes at you utterly surprised as blood begins to trickle down her chin.)~
	++ ~(Go on roughly slapping her face in a frenzy.)~ GOTO MRCampfireMorning4Revenge2
	++ ~Now we are even.~ GOTO MRCampfireMorning4RevengeEven
	++ ~Wow, I think I went too far! I didn't want to hit you that hard, I swear!~ GOTO MRCampfireMorning4RevengeSorry
END


IF ~~ THEN BEGIN MRCampfireMorning4RevengeSorry
	SAY ~(She stares at you with disgust) You- you lie! I saw the look in your eyes, the hatred burning inside you!~
	=
	~(Her look softens, but just a little, as she tries to be understanding) You're a beast, <CHARNAME>. You're losing control of yourself and if you don't get your soul back soon, I don't know what might happen.~
	=
	~Now I know teasing you is a bad idea. I'll help you get back to normal, but... don't expect me to trust you anymore...~
	=
	~At least until you get your soul back.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	IncrementGlobal("MRKinCounter","GLOBAL",-10)
	~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMorning4RevengeEven
	SAY ~WE ARE EVEN??? (She spits blood at you) It was a JOKE, <CHARNAME>!  Or have you forgotten what 'joke' means?~
	=
	~Stay away from me, you psychotic troll!  Hmpf.  Rest assured I won't try to slip a bit of humor into your sorry life again.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)
	SetGlobal("MRKinCounter","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN MRCampfireMorning4Revenge2
	SAY ~(Imoen isn't stupid. Now that she is over her initial surprise and realizes what you intend, she acts quickly to defend herself.)~
	=
	~(She casts stoneskin on herself and plants her agile feet on your stomach, and pushes with all of her adrenaline-boosted strength, throwing you back far enough so she can jump out of your immediate reach.)~
	=
	~What in the Nine Hells has gotten into you, <CHARNAME>?  I'm not your enemy!  I'm your friend, Imoen!~
	++ ~(Get hold of your instincts) I-Imoen...?  I... I don't know what happened to me...~ GOTO MRCampfireMorning4RevengeSorry
	++ ~You soak me with cold water, I punch some teeth out of your mouth. Fair exchange, I think; now we are even.~ GOTO MRCampfireMorning4RevengeEven
END

IF ~~ THEN BEGIN MRCampfireMorning4Tickle
	SAY ~Aaah, no, no, (She laughs hysterically, twisting and struggling from your well-directed tickles; sometimes she manages to utter some words between the laughs.)~
	=
	~Stop it, STOP IT, hahahahaah! You're killing me!~
	=
	~(Seeing she has taken just about all she can stand without 'suffering' from it, you give her one last poke in the ribs and stop to look at her.)~
	IF ~~ THEN GOTO MRCampfireMorning4Tickle2
END

IF ~~ THEN BEGIN MRCampfireMorning4Tickle2
	SAY ~(Imoen's eyes and cheeks are wet with joyful tears, and even though you have stopped tickling her she continues to giggle.)~
	=
	~(Looking at her, you notice how the soft light of dawn reflects off her tears; her face seems tenderly caressed by the faint rays that manage to slip between the foliage of the trees.)~
	=
	~(The filtered beams perform a strange dance of light and shadows over Imoen's face and skin, making her lines blur. You find yourself mesmerized by the sight and are overcome, perhaps for the first time in your life, perhaps not...)~
	=
	~(By the realization that Imoen is a beautiful woman. Maybe it's only the situation, but you are suddenly struck by this strange feeling. Her sweet voice... her cheerful demeanor... her tender body... her kind-hearted soul... Imoen's aura itself wraps around your heart like a blanket, its warmth comforting you.)~
	=
	~(As she lies beneath you, you feel Imoen's body tremble with each and every giggle. When she finally stops she raises her head to look at you, a warm smile still on her face.)~
	=
	~(Locking gazes, you stare into each other's eyes. A fresh breeze embraces both of you like an ethereal lover. The smile slowly fades.)~
	=
	~<CHARNAME>... (The melodious whistle of a bird sounds just as she utters your name. The look in her eyes is different now, as she struggles against her inner self.)~
	=
	~(As the gentle wind blows one of her cherry locks off of her face, you feel the urge to do something... anything.)~ [ MRImRom3 ]  
	++ ~(This is your opportunity; Take off the first of her clothes you can find and begin to undress her, adoringly fondling her as you do so.)~ GOTO MRCampfirePivotFondle
	++ ~(Get a grip. This situation has almost gotten out of hand; stand up to prevent whatever could happen between the two of you) Aah, we really should get moving...~ GOTO MRCampfirePivotStand
	++ ~(Lovingly stroke her cheek, drying one of her tears with your thumb. You give in to desire, and slowly lower your head to softly, tenderly bond her trembling lips with yours in a long, ardent kiss.)~ EXTERN PLAYER1 MRCampfirePivotYes
	++ ~(Remain silent and motionless, uncertain about what to do.)~ GOTO MRCampfirePivotDelay
	++ ~Imoen, I...~ GOTO MRCampfirePivotSpeak
END

IF ~~ THEN BEGIN MRCampfireMorning4Stare
	SAY ~(Looking at her, you notice how the soft light of dawn soften her cheeks; her face seems tenderly caressed by the faint rays that manage to slip between the foliage of the trees.)~
	=
	~(The filtered beams perform a strange dance of light and shadows over Imoen's face and skin, making her lines blur. You find yourself mesmerized by the sight and are overcome, perhaps for the first time in your life, perhaps not...)~
	=
	~(By the realization that Imoen is a beautiful woman. Maybe it's only the situation, but you are suddenly struck by this strange feeling. Her sweet voice... her cheerful demeanor... her tender body... her kind-hearted soul... Imoen's aura itself wraps around your heart like a blanket, its warmth comforting you.)~
	=
	~(As she lies beneath you, you feel Imoen's chest rise and fall with every breath. When she raises her head to look at you, a warm smile lits up her face.)~
	=
	~(Locking gazes, you stare into each other's eyes. A fresh breeze embraces both of you like an ethereal lover. The smile slowly fades.)~
	=
	~<CHARNAME>... (The melodious whistle of a bird sounds just as she utters your name. The look in her eyes is different now, as she struggles against her inner self.)~
	=
	~(As the gentle wind blows one of her cherry locks off of her face, you feel the urge to do something... anything.)~ [ MRImRom3 ]  
	++ ~(This is your opportunity; Take off the first of her clothes you can find and begin to undress her, adoringly fondling her as you do so.)~ GOTO MRCampfirePivotFondle
	++ ~(Get a grip. This situation has almost gotten out of hand; stand up to prevent whatever could happen between the two of you) Aah, we really should get moving~ GOTO MRCampfirePivotStand
	++ ~(Lovingly stroke her cheek, drying one of her tears with your thumb. You give in to desire, and slowly lower your head to softly, tenderly bond her trembling lips with yours in a long, ardent kiss.)~ GOTO/*EXTERN PLAYER1*/ MRCampfirePivotKiss
	++ ~(Remain silent and motionless, uncertain about what to do.)~ GOTO MRCampfirePivotDelay
	++ ~imoen, I...~ GOTO MRCampfirePivotSpeak
END
	
IF ~~ THEN BEGIN MRCampfirePivotSpeak
	SAY ~Shhhh... (She puts her index finger on your lips and smiles) Nothing needs to be said...~
	++ ~(This is your opportunity; Take off the first of her clothes you can find and begin to undress her, adoringly fondling her as you do so.)~ GOTO MRCampfirePivotFondle
	++ ~(Get a grip. This situation has almost gotten out of hand; stand up to prevent whatever could happen between the two of you)~ GOTO MRCampfirePivotStand
	++ ~(lovingly stroke her cheek, drying one of her tears with your thumb. You give in to desire, and slowly lower your head to softly, tenderly bond her trembling lips with yours in a long, ardent kiss.)~ GOTO/*EXTERN PLAYER1*/ MRCampfirePivotKiss
	++ ~(Remain silent and motionless, uncertain about what to do.)~ GOTO MRCampfirePivotDelay
END

IF ~~ THEN BEGIN MRCampfirePivotDelay
	SAY ~(You let time pass. The breeze stops, the sun fades, the birds fall silent. The mood has gone.)~
	=
	~<CHARNAME>... you are hurting my leg!~
	=
	~(You quickly roll off of her and stand up so her legs can be free.)~
	=
	~Better if we... *ahem*... get going. (She quickly stands up, seemingly cheerful as always) We have some souls to get back, lil' <PRO_BROTHERSISTER>!~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotStand
	SAY ~(As you stand up the breeze stops, the sunlight fades, the birds fall silent. The moment is gone.)~
	=
	~Yeah... Better if we... *ahem* get going. (She quickly stands up, seemingly cheerful as always) We have some souls to get back, lil' <PRO_BROTHERSISTER>!~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotFondle
	SAY ~(Imoen watches as you begin to undress her, but her sense of reason overpowers her yearnings, and suddenly she becomes aware of what you two were about to do) N-no, <CHARNAME>. Please stop...~
	=
	~Please don't ruin what we have... alright? Let's... let's just stay friends like we've always been. It's the right thing to do.~
	=
	~Better if we... *ahem* get going... (She quickly stands up, seemingly cheerful as always) We have some souls to get back, lil' <PRO_BROTHERSISTER>!~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotKiss
	SAY ~<CHARNAME>... this... this is wrong... we... we can't do this... we cannot...~
	=
	~(She speaks between kisses, barely managing to not lose control and forget about everything.)~
	=
	~<CHARNAME>... let's not... do this to each other...~
	IF ~GlobalGT("MRKinCounter","GLOBAL",0)
	!GlobalGT("MRKinCounter","GLOBAL",12)~ THEN REPLY ~But I want you, Imoen.~ GOTO MRCampfirePivotMean
	IF ~GlobalGT("MRKinCounter","GLOBAL",11) !GlobalGT("MRKinCounter","GLOBAL",17)~ THEN REPLY ~But I want to do it, Imoen... I truly do...~ GOTO MRCampfirePivotSibling
	IF ~GlobalGT("MRKinCounter","GLOBAL",17) !Global("MRSexDistract","GLOBAL",1)~ THEN REPLY ~imoen... you've become the most important thing in my life, more than my soul itself... I'd give up my life for your happiness so... I'll agree to whatever you decide.~ GOTO MRCampfirePivotYes
	IF ~GlobalGT("MRKinCounter","GLOBAL",17) Global("MRSexDistract","GLOBAL",1)~ THEN REPLY ~Imoen... you've become the most important thing in my life, more than my soul itself... I'd give up my life for your happiness so... I'll agree to whatever you decide.~ GOTO MRCampfirePivotSexDistract
	IF ~GlobalGT("MRKinCounter","GLOBAL",17)~ THEN REPLY ~Imoen... I can't hold back any longer... I love you and... I want you.~ GOTO MRCampfirePivotSex
	++ ~It's difficult, Imoen, but... you're right.  We... we cannot do this. (Move away from her gently.)~ GOTO MRCampfirePivotNo
END

IF ~~ THEN BEGIN MRCampfirePivotSexDistract
	SAY ~I- I don't know...~
	= ~I know we shouldn't but...  Gods, I feel... I feel like I belong in your arms...~
	= ~(Imoen moans in pleasure as your kiss her... but suddenly her hands are on your chest - not pulling you closer, but pushing you away)~ 
	= ~N- no... No.  We can't, <CHARNAME>... it's not right, and you know it.  You said yourself that... that sex is just a distraction, no matter how good it might feel.~
	= ~I'm- I'm very sorry...  I just... I can't.  We can't.~
	= ~(She gets up and walks away from you.)~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotMean
	SAY ~(Imoen appears to be turning something over in her mind. Maybe thoughts of all those times you weren't there to support her, or times when you didn't show any interest in her.)~
	= ~N-No...~ 
	= ~You... no, NO! (She pushes you away definitively.)~ 
	= ~After all the times you treated me like I was some nameless dog! (She quickly stands up) Why should I... 'give in' to somebody like you?~ 
	= ~I don't even know how is it possible that things got this far.~ 
	= ~(Imoen simply walks away from you with a frown on her face.)~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotSibling
	SAY ~I... I... (Imoen seems to become aware of her surroundings again, and you feel the 'mood' has faded.)~
	=
	~I think... we shouldn't.  You've been nice to me and all but... when I think of you even now...~
	=
	~I can only see you as my friend... and as my <PRO_BROTHERSISTER>. I'm sorry, <CHARNAME> but... it just can't be.~
	=
	~(She stands up and walks away from you.)~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotSex
SAY ~I- I don't know...~
= ~I know we shouldn't but...  Gods, I feel... I feel like I belong in your arms...~
= ~(Imoen moans in pleasure as you kiss her... but suddenly her eyes open, and a blush of embarassment reddens her cheeks as she realizes what she is saying, and the very compromising position that she is in)~ 
= ~N- no... No.  We can't, <CHARNAME>... it's not right, and you know it.  I'm- I'm very sorry...  I just... I can't.~
= ~(She gets up and walks away from you.)~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MRCampfirePivotYes
SAY ~I- I don't know...~
= ~I know we shouldn't but...  Gods, I feel... I feel like I belong in your arms...~
= ~(Imoen moans in pleasure as you kiss her.  You feel a shiver run up her spine as her excited breath caresses your skin)~
= ~I- I want...  I want *you*~
= ~Let's just forget about everything... and everyone else... and let our dreams come true.~
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("LoveMe5")~
EXIT
END
	
IF ~~ THEN BEGIN MRCampfirePivotNo
	SAY ~(You part reluctantly with a final kiss, and roll off to one side before standing up.  She still looks at you longingly, but knows that it just can't be.)~
	=
	~Thank you, <CHARNAME>... I think... I don't think I could have done that.  We have a precious friendship... let's keep it like that, eh?~
	=
	~(She stands up too, fixing her messy hair and clothes looking a little embarrassed. Smiling at you, Imoen gives you a peck on your cheek.) Let's get going.~
	IF ~~ THEN DO ~ActionOverride("Imoen2",SetDialog("IMOEN2J"))
	SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END



// *** Act 6: The messy interlude ***


IF WEIGHT #-900 ~Global("MRAftermath","GLOBAL",2)~ THEN BEGIN MRCampfireAftermath
	SAY ~(Imoen is startled by your touch, but immediately relaxes in your arms... or at least it's what you think until she takes your hands and gently makes you release her.)~
	=
	~(She turns to look directly at you; she seems ashamed, the anguish clearly reflected in her beautiful eyes. Imoen opens her mouth, her lower lip trembling a bit, but doesn't manage to utter any sound. Exhaling nervously, she lowers her gaze and looks away.)~
	=
	~(Imoen has just made the most difficult decision in her life. Gathering her willpower she finally speaks, still staring to nowhere since she knows that looking into your eyes would break her determination. A word, a simple word escapes from her mouth, a single word that reveals the agony of her decision.)~
	=
	~Don't...~
	IF ~~ THEN DO ~SetGlobal("ImoenRomanceActive","GLOBAL",2)~ GOTO MRCampfireAftermath2
END

IF ~~ THEN BEGIN MRCampfireAftermath2
	SAY ~(Her voice utters this word as a mere whisper. Then, she turns and walks away. You can only watch as you know that there is nothing you can say that will make her change her mind.)~
	IF ~~ THEN DO ~SetDialog("IMOEN2J")
	SetGlobal("MRResolutionReply","GLOBAL",1)
	SetGlobal("MRAftermath","GLOBAL",3)
	RunAwayFromNoInterrupt(Player1,30)~
	EXIT
END
END




// *** Appending *** 


APPEND ~JAHEIRAJ~
	IF ~~ THEN BEGIN MRCampfire2
	SAY ~I fully agree, <CHARNAME>. It seems so long since I was last in contact with pure nature that I had forgotten its scent.~
	IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN AERIEJ MRCampfire2
	IF ~!IsValidForPartyDialog("Aerie")
	
	IsValidForPartyDialog("Cernd")~ THEN EXTERN CERNDJ MRCampfire2
	IF ~!IsValidForPartyDialog("Aerie")
	
	!IsValidForPartyDialog("Cernd")
	IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ MRCampfire2
	IF ~!IsValidForPartyDialog("Aerie")
	
	!IsValidForPartyDialog("Cernd")
	!IsValidForPartyDialog("Nalia")~ THEN EXTERN IMOEN2J/*BIMOEN2*/ MRCampfire3
END
END

APPEND ~AERIEJ~
	IF ~~ THEN BEGIN MRCampfire2
		SAY ~Ahh, yes, of course! This place is so peaceful, it reminds me of the forest of my youth... Let's stay all night, please!~
		IF ~
		IsValidForPartyDialog("Cernd")~ THEN EXTERN CERNDJ MRCampfire2
		IF ~
		!IsValidForPartyDialog("Cernd")
		IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ MRCampfire2
		IF ~
		!IsValidForPartyDialog("Cernd")
		!IsValidForPartyDialog("Nalia")~ THEN EXTERN IMOEN2J/*BIMOEN2*/ MRCampfire3
	END
END

APPEND ~CERNDJ~
	IF ~~ THEN BEGIN MRCampfire2
		SAY ~The peace of the forest is always welcome. Taking a break from what seems to be a never-ending quest might be a wise option to refresh both our minds and bodies.~
		IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN NALIAJ MRCampfire2
		IF ~!IsValidForPartyDialog("Nalia")~ THEN EXTERN IMOEN2J/*BIMOEN2*/ MRCampfire3
	END
END

APPEND ~NALIAJ~
	IF ~~ THEN BEGIN MRCampfire2
		SAY ~Great idea I'd say! I need some time to relax after this whole drow experience.~
		IF ~~ THEN EXTERN IMOEN2J/*BIMOEN2*/ MRCampfire3
	END
END

APPEND ~VICONIJ~
	IF ~~ THEN BEGIN MRCampfire3
		SAY ~I would never take offense from one such as *you*, kivvil. And that was NOT a compliment. You are too low to be able to offend me.~
		IF ~~ THEN EXTERN IMOEN2J/*BIMOEN2*/ MRCampfireYes
	END
END



APPEND PLAYER1
	IF ~~ THEN BEGIN MRCampfireMorning2
	SAY ~(You pry one eye open just in time to see a wall of water heading right for your face. You can do nothing but watch it come through your half-opened eyes.)~
	=
	~(As you anticipated in your brief moment of semi-consciousness, the water is REALLY cold. With a shout, you roll out of your soaked sleeping bag.)~
	IF ~~ THEN EXTERN BIMOEN2 MRCampfireMorning3
	END

	IF ~Global("MRCampfireMusic","GLOBAL",8)~ THEN BEGIN MRCampfireMorning3Chase
	SAY ~(After the short chase, you are lucky enough to catch the hem of her clothes and drag her to the mossy ground. She tries to roll away from you, but she only causes you both to tumble over the grass together.)~
	=
	~(As you wrestle with her in the soft turf, she cannot stop laughing. The dizzying whirls finally stop when you manage to roll on top of her.)~
	=
	~(She still laughs as she playfully battles so you won't pin her to the ground, but you sit astride her thighs, not letting her escape. Still struggling under your body, she is unable to restrain her giggling and tosses her head back, the gentle lawn serving as a soft, fresh pillow.)~
	=
	~Got you!~
	IF ~~ THEN DO ~SetGlobal("MRCampfireMusic","GLOBAL",9)~ EXTERN BIMOEN2 MRCampfireMorning4
	END

	IF ~Global("MRSexSelfTalk","GLOBAL",1)~ THEN BEGIN MRCampfirePivotYes
	SAY ~(You reach out for her lips, and find no opposition at all. Your kiss is rewarded with equal passion, equal longing, as you both enjoy a kiss that seems to last forever.)~
	=
	~(Your mouths finally separate, but only to kiss each other all over the face, eyes shut, mind lost...)~
	=
	~(As you gently hold her nape you kiss her nose, her throat, her forehead, her eyelids; and she does the same, wrapping her arms around your neck and pulling you closer.)~
	=
	~(In a last desperate effort to respond to her sense of reason and stop what seems inevitable, she makes a weak attempt at pushing you away, but to no avail.)~
	=
	~(The only thing she manages to do is utter a few words between kisses...)~
	IF ~~ THEN EXTERN BIMOEN2 MRCampfirePivotYes
	END

	IF ~Global("MRAftermath","GLOBAL",1)~ THEN BEGIN MRCampfireAftermath
		SAY ~(You awaken to find that Imoen is no longer lying by your side. You look around to see her standing just a few paces away from where you lie, staring up at some birds in their nest, completely absorbed in her thoughts.)~ [ MRImRom6 ]  
		=
		~(You quietly approach her from behind and lovingly embrace her, kissing her head.)~
		IF ~~ THEN DO ~SetGlobal("MRSleptImoen","GLOBAL",1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("LoveMe5a")~ EXIT
	END
END