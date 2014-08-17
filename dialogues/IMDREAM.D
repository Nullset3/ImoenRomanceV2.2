BEGIN IMDREAM

// **********************1st DREAM************************


IF ~Global("MRDream1","GLOBAL",1)~ THEN BEGIN MRDream1-1
  SAY ~Heya! It's me, Imoen!~ [ MRImDre2 ]
  =
  ~What're ya doing here, you ask?  I have no idea - it's one of your crazy dreams!~
  IF ~~ + MRDream1-2
END

IF ~~ THEN BEGIN MRDream1-2
  SAY ~Oh, and by the way - you can't talk.  Annoying, I know, but it's one of those dream-things.  But lucky for you you don't *need* to talk...  For this, y'just need to watch and listen.~
  =
  ~... Y'know, sometimes I wonder...  Have I ever been more to you than just ... a friend?  Have we always felt that way?  The way we feel now?~
  =
  ~I guess so.  That's what I'd say, at least.  Lately though...  sometimes...~
  =
  ~Heh... well, I'm rambling, aren't I?  C'mon, we've got things to see and people to meet.  Follow me!  Although I'd think ya know these walls well enough not to get lost (Imoen giggle, and the sound of her laughter echoes throughout the empty Keep)~
  
  IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("MRDream1","GLOBAL",3)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim01")~
	EXIT
  IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("MRDream1","GLOBAL",3)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CutiF01")~
	EXIT
END

IF ~Global("MRDream1","GLOBAL",3)
~ THEN BEGIN MRDream1-3 // from:
  SAY ~Y'know, we've known each other forever.  At least it feels that way, doesn't it?  I don't even remember meeting you - just being with you.  You were always there.~
	= ~Kinda weird, actually.  I don't remember anything before Candlekeep, even though I was... what?  Nine years old?  Maybe ten? ... when I was brought there.~
	= ~(She shrugs, brushing the matter aside like so much dust)  Anyways, I guess what matters is... there's never been an 'I' for me, without there being an 'us' too, if y'know what I mean.~
	= ~Y'ever think of our childhood?  Gorion just adored you, but I liked stickin' with ol' Puffguts.  Heh, 'course, every minute we could sneak away, we spend playing together and giving the monks no end of grief.~
	IF ~Gender(Player1, MALE)~ THEN GOTO sonOfBhaalThing
        IF ~Gender(Player1, FEMALE)~ THEN GOTO daughterOfBhaalThing
        END

         IF ~~ THEN BEGIN sonOfBhaalThing
        SAY ~Or have you forgotten it all, with the whole 'Son-Of-Bhaal' thing going on?  Wouldn't blame ya, really.  My memories fade out sometimes too.  Heck, after what Irenicus did to me, I'm surprised I can remember my own name.~
        IF ~~ + butForSomeReason
        END

        IF ~~ THEN BEGIN daughterOfBhaalThing
        SAY ~Or have you forgotten it all, with the whole 'Daughter-Of-Bhaal' thing going on?  Wouldn't blame ya, really.  My memories fade out sometimes too.  Heck, after what Irenicus did to me, I'm surprised I can remember my own name.~
        IF ~~ + butForSomeReason
        END

        IF ~~ THEN BEGIN butForSomeReason
	SAY ~But for some reason, I remember this part really vividly.  Don't you?  We were ten or eleven or something like that.  I think I'd probably just met you, but we already got along really well, remember?~
	= ~You don't?  Hmph.  Well, maybe this'll refresh your memory.  Look!~
IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("MRDream1","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Cutim02")~
EXIT
IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("MRDream1","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CutiF02")~
EXIT
END

IF ~Global("MRDream1","GLOBAL",5)~
THEN BEGIN MRDream1-4
	SAY ~So... <CHARNAME>...~
	=
	~(Imoen looks to the ground, avoiding your eyes; her voice sounds different now... low, sad, and even hopeless. Suddenly her gaze rises and your eyes meet)~
	=
	~Where are your promises now?~
	=
	~Will you still protect me?~
	IF ~Gender(Player1,MALE)~ THEN GOTO MRDR4Mal
	IF ~Gender(Player1,FEMALE)~ THEN GOTO MRDR4Fem
END

	IF ~~ THEN BEGIN MRDR4Mal
	SAY ~Take care of me?~
	IF ~~ THEN DO ~SetGlobal("MRDream1","GLOBAL",6)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cuti03a")~
	EXIT
	END

	IF ~~ THEN BEGIN MRDR4Fem
	SAY ~Always be there for me...?~
	IF ~~ THEN DO ~SetGlobal("MRDream1","GLOBAL",6)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CuiF03a")~
	EXIT
	END	


IF ~Global("MRDream1","GLOBAL",6)~ BEGIN MRDream1-5
	SAY  ~and... love me?~
	=
	~(Imoen gives you an ardent kiss, almost desperate; you can feel her longing for your lips, your skin... your heart.)~
	=
	~Where is my protector now...?~
	IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("MRDream1","GLOBAL",7)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim04")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("MRDream1","GLOBAL",7)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("CutiF04")~
	EXIT
END


// *****************************2nd DREAM*******************************


IF ~Global("MRDream2","GLOBAL",1)~ THEN BEGIN MRDream2-1
  SAY ~Feelin' dreamy, aren't we?~
  IF ~~ THEN DO ~SetGlobal("ImoenRomanceActive","GLOBAL",1) 
  SetGlobal("MRLoveTalk","GLOBAL",1) //Joel added this, worried this isn't getting set correctly.

//** Note to Kat:  Dunno what this does, so I haven't changed it.  In my notes, it doesn't seem to be referenced in other files **//  
  SetGlobal("WeWillTalkofIt","GLOBAL",1)~ GOTO MRDream2-2
//** End Note **//

  END

IF ~~ THEN BEGIN MRDream2-2
	SAY ~This is no recurrent dream, however. Same place, same people, different memories.~
	=
	~They *are* memories... aren't they?~ [ MRImDre2 ]  
	=
	~We already know that we've been together all of our lives. From childhood, through our teens, up to adulthood. Even that awkward time when boys become men... and girls become women.~
	=
	~At that time I was becoming a pretty little woman, or so everyone told me. (Imoen smiles, but there is only sadness in her face.)~ 
	=
	~Sometimes I wondered if you ever noticed that... I still wonder at times.~
	=
	~Tell me, <CHARNAME>... it might be a weird question but... have I ever awakened any... "feelings" in you?  Has my body ever made you think twice, made you 'desire' me... even a little bit?~
	=
	~I guess not.  If it did, you never showed it.  And neither did I...~
	=
	~Teenagers... a day in our teenage lives, when we were around fifteen.  Quite a special day... y'remember it? No, of course you don't. Things like that are easily forgotten...~
	=
	~There'd been a horrible tempest along the coast by Candlekeep - it lasted almost a full tenday.  Finally, the day before this, it'd finally stopped.  Everything was sunny and bright again.~
	=
	~It was your idea - you wanted to go to the lake and take a bath, enjoy the weather.  It'd be 'just like old times', you said.  Not 'cause we were old, of course, but we hadn't been there for a long time.  When we were little we'd go there nearly ever day.~
	=
	~I happily agreed, of course, so we arrived there at midday.~
	=
	~D'ya remember that place?  Ever think about goin' back?  Heh... y'know, I kinda like that you can't talk.  Gosh, you can't even move!  But I thought it'd be polite to ask first 'fore I start teleportin' you here and there. (Again, her gigle resounds against the walls)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutim06")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutiF06")~
	EXIT
END

IF ~Global("MRDream2","GLOBAL",2)~ THEN BEGIN MRDream2-3
	SAY ~Aaah, such a great place. Isn't it idyllic? It makes my mind recall happier times... the fresh water, the incredible cascade, the trees, the birds... (She sighs deeply.)~
	=
	~Look! There WE are. Shall we watch the scene?  I'll take your silence for a 'yes'. (She giggles playfully again)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutim07")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutiF07")~
	EXIT
END

IF ~Global("MRDream2","GLOBAL",5)~
	THEN BEGIN MRDream2-4
	SAY ~So... <CHARNAME>...~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cuti07a")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cuiF07a")~
	EXIT
END

IF ~Global("MRDream2","GLOBAL",6)~ THEN BEGIN MRDream2-5
	SAY ~(Imoen whispers in your ear, her warm breath caressing you tenderly... provocatively...)~
	=
	~Have you ever wanted to hold me in your arms...~
	=
	~Feel my heart pump with yours...~
	=
	~Caress my skin and feel my stroke...~
	=
	~And never let me go...?~
	=
	~(She cups your cheeks in her hands and softly, lovingly kisses your lips.  It lasts only a second, but the touch of her skin and taste of her mouth will be branded on yours for an eternity)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutim10")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutiF10")~
	EXIT
END


// **********************************3rd Dream*************************************


IF ~Global("MRDream3","GLOBAL",1)~ THEN BEGIN MRDream3-1
	SAY ~Geez, again??  <CHARNAME>, you're lucky I'm only in your mind, 'cause otherwise I'd have somethin' to say about you keeping me up every night!~
	=
	~Hehe, at this point you must be seriously wondering if this is real or what, huh?~
	=
	~But that's the thing with dreams - whether this is real or not is completely up to you.~
	=
	~So, is this real?  I mean, am *I* real?  Am I the Imoen you know, the one locked away in some Hellhole - is that Imoen the one who's here talking in your dreams?~ [ MRImRom6 ]
	=
	~Is it just my absence from your side and your concern for me that are manifesting in such a... 'strange' manner?  Is this some weird manifestation of your need to rescue me from the tortures I'm going through?~
	=
	~Or... maybe you're a little obsessed by your desires towards me?  (Imoen arches an eyebrow and giggles, but soon the playfulness is gone from her face)~
	=
	~Or maybe it's your Taint... maybe the desires *are* the Taint.  Maybe it's just coincidence, all these dreams.  Or maybe it's something much more complex.~
	=
	~You'll have to make your own interpretation.  Unlike some of us, your coin landed on edge...~
	=
	~This night, I'll tell ya 'bout around... well, about two years before all of this started in the first place.~
	=
	~I'd hope ya'd remember this one - but you never know, with everything we've been though, you might've forgotten...~
	IF ~OR(5)
		Alignment(Player1,LAWFUL_GOOD)
		Alignment(Player1,NEUTRAL_GOOD)
		Alignment(Player1,CHAOTIC_GOOD)
		Alignment(Player1,LAWFUL_NEUTRAL)
		Alignment(Player1,NEUTRAL)
            Gender(Player1,MALE)
	~ THEN GOTO MRDream3-2-Good-Male
	IF ~OR(5)
		Alignment(Player1,LAWFUL_GOOD)
		Alignment(Player1,NEUTRAL_GOOD)
		Alignment(Player1,CHAOTIC_GOOD)
		Alignment(Player1,LAWFUL_NEUTRAL)
		Alignment(Player1,NEUTRAL)
            Gender(Player1,FEMALE)
	~ THEN GOTO MRDream3-2-Good-Female
	IF ~OR(4)
		Alignment(Player1,CHAOTIC_NEUTRAL)
		Alignment(Player1,LAWFUL_EVIL)
		Alignment(Player1,NEUTRAL_EVIL)
		Alignment(Player1,CHAOTIC_EVIL)
	~ THEN GOTO MRDream3-2-Evil
END

IF ~~ THEN BEGIN MRDream3-2-Good-Male
	SAY ~You've always been kinda my knight in shining armor.  Doesn't make me uncomfortable or anything - it's nice to have someone who really cares about you, y'know?~
        IF ~~ THEN GOTO MRDream3-3
END

IF ~~ THEN BEGIN MRDream3-2-Good-Female
	SAY ~You've always been kinda my knight in shining armor - girls can be knights, right?  It doesn't make me uncomfortable or anything.  It's actually really nice to have someone who really cares about you, y'know?~
        IF ~~ THEN GOTO MRDream3-3
END

IF ~~ THEN BEGIN MRDream3-2-Evil
	SAY ~Although you were a complete and total jerk to everyone else, you've always been protective of me. It's not that it makes me uncomfortable or something like that; it's good to have someone that cares for your safety... even if they're a hobgoblin like you.~
	=
	~And 'sides, you were nice to *me* - if you hadn't been, I wouldn't've put up with ya for as long as I have. (She winks at you and giggles)~
	IF ~~ THEN GOTO MRDream3-3
END

IF ~~ THEN BEGIN MRDream3-3
	SAY ~Also, I've always thought that following orders is much easier than giving them... I'm not cut out for the leadership stuff, y'know...  And don't start about how I never did what I was told back in Candlekeep!  That doesn't count!~
	=
	~Anyways...so yeah.  I dunno why you've always been so protective; I never asked, you never offered.~
	=
	~I've always kinda been the 'goofy sidekick'.  I'm sure my attitude and awesome lack of maturity helped with that, huh?~
	=
	~But I wonder... have you always looked at me as just a playmate?  I guess you must have...~
	=
	~We were about eighteen, give or take a year up or down.  We loved going hiking over in the Londor Hills, when Winthrop and all the monks gave us half a minute to sneak out, hehe...~
	=
	~It took an entire day to go, we spent the night up there, and then we took another day to go back to Candlekeep.  Those escapades were nearly the only times we left the walls of Candlekeep... good for a change, if ya ask me.~
	=
	~Don't know about you, but I really enjoyed it. I've always liked open places... and well, your company wasn't all that bad, I guess.~
	=
	~This time was really special, though.  I remember it all so clearly... (She sighs sadly to herself)~
	=
	~Mind if I show it to ya?  No?  Alright, brace yourself... don't worry though, they- uh... 'we' - won't see ya.  Why should they?  None of this is real anyways, right? (She giggles and you feel a tugging all around you, transporting you...)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim12")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutiF12")~
	EXIT
END


IF ~Global("MRDream3","GLOBAL",2)~ THEN BEGIN MRDream3-4
	SAY ~(Imoen sighs) Just look at all those stars... it's so beautiful.~ 
	=
	~It always astounds me, looking up at the heavens and seeing all those white spots.~
	=
	~You ever feel the same way? It's so...amazing.  So overwhelming.~
	=
	~But I think you already knew that about me, right?  At least you *should*, hmm?~
	=
	~Look, there we are again. If you weren't paying attention the first time I told ya, listen now.~ [ MRImRom3 ]  
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim13")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutiF13")~
	EXIT
END

IF ~Global("MRDream3","GLOBAL",5)~ THEN BEGIN MRDream3-5
	SAY ~So... <CHARNAME>...~ 
	=
	~(As you come back to your real self, Imoen's face seems to glow in the silver moonlight, strangely drawing a hypnotic dance of shadows over her body.)~
	=
	~(Suddenly you notice that she is only covered with an ethereal dress that brightly reflects the pale moonlight, the cloth shimmering as it moves back and forth with the fresh breeze.)~
	=
	~Have you ever felt more than care for me?~
	=
	~Have you felt the need to embrace me...~
	=
	~Caress me... feel me...~
	=
	~Have you ever noticed the woman in me?~
	=
	~Have you ever enjoyed the warmth of my body against yours...~
	=
	~The contact of my breath against your skin...~
	=
	~The feel of my shivers, and how you were able to comfort them...?~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cuti15a")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cuiF15a")~
	EXIT
END


IF ~Global("MRDream3","GLOBAL",6)~ THEN BEGIN MRDream3-6
	SAY ~Have you ever wanted to... love me?~
	=
	~(Imoen comes closer to you and lets your arms wrap around her. Neither your legs or arms obey your will, so you can do nothing but hold her)~
	=
	~(However, this time there's no kiss from her. Only the warmest, softest embrace you have ever felt in your entire life; a thousand times more real than a real one.)~
	=
	~(She begins to tremble - barely noticeable at first, but soon shivers shake her entire body.  Her hands curl into your clothes anxiously as her breath becomes ragged with tears)~
	=
	~All day... all night... it never ceases...~
	=
	~The pain never stops... it will never go away...~
	=
	~Please, <CHARNAME>, it's too much... I can't stand it anymore.  Where are you?  Why won't you help me?~
	=	
	~Please...~
	=
	~... <CHARNAME>...~
	=
	~(Her desperate plea echoes inside your head until it finally fades.)~
	IF ~Gender(Player1,MALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("Cutim16")~
	EXIT
	IF ~Gender(Player1,FEMALE)~ THEN DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("cutiF16")~
	EXIT
END
