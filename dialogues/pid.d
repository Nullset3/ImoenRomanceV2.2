// Imoen PID
APPEND IMOEN2J 

IF ~Global("MRNoPid","GLOBAL",0)~ pid
  SAY ~(Imoen is lost in thought.)~
  ++ ~Leave her alone.~ EXIT
  + ~Global("GIVEPOWERSLAYER","GLOBAL",2) !Global("MRSlayDreamResolved","GLOBAL",1) !Global("MRRomanceResolved","GLOBAL",1)~ + ~Imoen...  did you ever dream about the Slayer?~ + MRSlayDream
  + ~Global("MRSleptImoen","GLOBAL",1) !Dead("c6bodhi") Global("MRResolutionReply","GLOBAL",1) !Global("MRRomanceResolved","GLOBAL",1)~ + ~Imoen... I think it's about time we... talk...~ + MRResolutionNotYet
  + ~Global("MRSleptImoen","GLOBAL",1) Dead("c6bodhi") GlobalLT("MRResolutionReply","GLOBAL",3) !Global("MRRomanceResolved","GLOBAL",1)~ + ~Imoen... I think it's about time we... talk...~ + MRResolution1
  +  ~RandomNum(2,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Smile at Imoen)~ + RJImoenFlirtSmile1
  +  ~RandomNum(2,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Smile at Imoen)~ + RJImoenFlirtSmile2
  +  ~RandomNum(5,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hug Imoen)~ + RJImoenFlirtHug1
  +  ~RandomNum(5,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hug Imoen)~ + RJImoenFlirtHug2
  +  ~RandomNum(5,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hug Imoen)~ + RJImoenFlirtHug3
  +  ~RandomNum(5,4) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hug Imoen)~ + RJImoenFlirtHug4
  +  ~RandomNum(5,5) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hug Imoen)~ + RJImoenFlirtHug5
  +  ~RandomNum(2,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Kiss Imoen on the cheek)~ + RJImoenFlirtCheek1
  +  ~RandomNum(2,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Kiss Imoen on the cheek)~ + RJImoenFlirtCheek2
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Kiss Imoen on the lips)~ + RJImoenFlirtLips1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Kiss Imoen on the lips)~ + RJImoenFlirtLips2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Kiss Imoen on the lips)~ + RJImoenFlirtLips3
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hold Imoen's hand)~ + RJImoenFlirtHand1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hold Imoen's hand)~ + RJImoenFlirtHand2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Hold Imoen's hand)~ + RJImoenFlirtHand3
  +  ~RandomNum(2,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Rub up against Imoen)~ + RJImoenFlirtRub1
  +  ~RandomNum(2,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Rub up against Imoen)~ + RJImoenFlirtRub2
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~I love you, Imoen.~ + RJImoenFlirtLove1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~I love you, Imoen.~ + RJImoenFlirtLove2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~I love you, Imoen.~ + RJImoenFlirtLove3
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Cradle Imoen in your arms and kiss her firmly)~ + RJImoenFlirtFirm1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Cradle Imoen in your arms and kiss her firmly)~ + RJImoenFlirtFirm2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Cradle Imoen in your arms and kiss her firmly)~ + RJImoenFlirtFirm3
  +  ~RandomNum(2,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Rub Imoen's back and neck)~ + RJImoenFlirtBack1
  +  ~RandomNum(2,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Rub Imoen's back and neck)~ + RJImoenFlirtBack2
  +  ~RandomNum(2,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~Imoen, can you give me a massage? I feel sooooo achey,~ + RJImoenFlirtAsk1
  +  ~RandomNum(2,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~Imoen, can you give me a massage? I feel sooooo achey,~ + RJImoenFlirtAsk2
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Lick Imoen's ear, blowing gently and growling)~ + RJImoenFlirtLick1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Lick Imoen's ear, blowing gently and growling)~ + RJImoenFlirtLick2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Lick Imoen's ear, blowing gently and growling)~ + RJImoenFlirtLick3
  +  ~RandomNum(4,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke1
  +  ~RandomNum(4,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke2
  +  ~RandomNum(4,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke3
  +  ~RandomNum(4,4) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke4
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Caress Imoen's body all over)~ + RJImoenFlirtCaress1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Caress Imoen's body all over)~ + RJImoenFlirtCaress2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~(Caress Imoen's body all over)~ + RJImoenFlirtCaress3
  +  ~RandomNum(3,1) Global("MRRomanceResolved","GLOBAL",1)~ + ~I need you tonight, Imoen.~ + RJImoenFlirtNeed1
  +  ~RandomNum(3,2) Global("MRRomanceResolved","GLOBAL",1)~ + ~I need you tonight, Imoen.~ + RJImoenFlirtNeed2
  +  ~RandomNum(3,3) Global("MRRomanceResolved","GLOBAL",1)~ + ~I need you tonight, Imoen.~ + RJImoenFlirtNeed3
END

IF ~~ MRSlayDream
  SAY ~Huh?  About the Slayer?  Of course not.  Why ya ask?~
  ++ ~Hrm... nevermind.  Just me thinking crazy again.~ + MRSlayDreamEnd
  ++ ~well, because... I did.  About you and the Slayer.~ DO ~SetGlobal("MRSlayDreamResolved","GLOBAL",1)~ + MRSlayDream2
END

IF ~~ MRSlayDream2
  SAY ~(Her eyebrow arches up)  Oh?  Like what?~ [ MRImRom5 ] 
  ++ ~It took place in Candlekeep, as usual. I appeared before you inside the library, and you began talking to me... (Tell her what happened in the dream)~ + MRSlayDream3
  + ~!Global("MRSlayDreamLoop","GLOBAL",1)~ + ~well it really wasn't *you*. It seems my... um, 'instinct', or whatever, has chosen your body as its avatar...~ DO ~SetGlobal("MRSlayDreamLoop","GLOBAL",1)~ + MRSlayDreamAvatar
  ++ ~You appeared, told me the Slayer is a nice guy, killed all my companions - including yourself - and it ended. Oh, you also taught me to count up to five!~ + MRSlayDreamShort
  ++ ~I awoke in a bed in Calimshan. You were there, lying beside me, wearing nothing under the sheets but one of these thin, translucent silks... just when I was about to throw back the covers, the Slayer appeared dressed in a swimsuit and invited us to... (Tell her all about your 'dream')~ + MRSlayDreamCrazy
  ++ ~Hrm... nevermind.  Just me thinking crazy again.~ + MRSlayDreamNo
END


IF ~~ MRSlayDreamNo
  SAY ~You sure?  Some things are better if you get them off your chest...~
  ++ ~Don't worry about me, I'll be just fine... Come, let's go on.~ + MRSlayDreamEnd
  ++ ~Hmm... maybe you're right. Very well, I'll tell you...~ + MRSlayDream1a
END

IF ~~ MRSlayDreamEnd
  SAY ~(She shrugs, sighing) Your choice...~
  IF ~~ EXIT
END

IF ~~ MRSlayDream1a
  SAY ~Great!  So...?~
  ++ ~It took place in Candlekeep, as usual. I appeared before you inside the library, and you began talking to me... (Tell her what happened in the dream)~ + MRSlayDream3
  + ~!Global("MRSlayDreamLoop","GLOBAL",1)~ + ~Well it really wasn't *you*. It seems my... um, 'instinct', or whatever, has chosen your body as its avatar...~ DO ~SetGlobal("MRSlayDreamLoop","GLOBAL",1)~ + MRSlayDreamAvatar
  ++ ~You appeared, told me the Slayer is a nice guy, killed all my companions - including yourself - and it ended. Oh, you also taught me to count up to five!~ + MRSlayDreamShort
  ++ ~I awoke in a bed in Calimshan. You were there, lying beside me, wearing nothing under the sheets but one of these thin, translucent silks... just when I was about to throw back the covers, the Slayer appeared dressed in a swimsuit and invited us to... (Tell her all about your 'dream')~ + MRSlayDreamCrazy
END	

IF ~~ MRSlayDreamCrazy
  SAY ~Uh-huh... right... so you say that when I got naked and went into the pool, it was filled with sand instead of water...~
  =
  ~And then the Slayer flew over me peeing some kind of green liquid that melted the sand to ankheg milk...~
  =
  ~...<CHARNAME>... have you hit your head lately...?~
  ++ ~Hahahah, oh Imoen... I didn't think you were that naive. I thought you'd recognize a joke!~ + MRSlayDreamCrazyJoke
  ++ ~Yes, it's very disturbing... I hope I don't have such weird dreams anymore.~ + MRSlayDreamCrazy2
  ++ ~I don't know... I want some candy.~ + MRSlayDreamCrazyCandy
  ++ ~I'm fine. Let's go on.~ EXIT
END

IF ~~ MRSlayDreamCrazyJoke
  SAY ~(Imoen frowns, but after a moment she begins to smile) Oh, you were so serious about it!~
  IF ~InParty("Aerie")~ THEN + MRSlayDreamCrazyAerie
  IF ~!InParty("Aerie")~ THEN + MRSlayDreamCrazyNext
END
END

CHAIN IMOEN2J MRSlayDreamCrazyAerie
  ~Spending all this time with Aerie is dulling my senses I think! Otherwise I'd have seen through all that nonsense right away!~
  == AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN ~Hey!~
  == IMOEN2J IF ~IsValidForPartyDialog("Aerie")~ THEN ~See? I was *joking*, Aerie!~
  == AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN ~I know, Imoen... I just wanted to have my share too. (She giggles)~
  == IMOEN2J IF ~IsValidForPartyDialog("Aerie")~ THEN ~(Imoen smiles at her and turns back to you)~
END IMOEN2J MRSlayDreamCrazyNext

APPEND IMOEN2J
IF ~~ MRSlayDreamCrazyNext
  SAY ~Well at least it's good to see you don't take things *so* seriously all the time, <CHARNAME>.  It really doesn't make sense to dwell endlessly upon it, believe me...~
  =
  ~(She sighs) So alright... what was the *real* dream about?~
  ++ ~It took place in Candlekeep, as usual. I appeared before you inside the library, and you began talking to me... (Tell her what happened in the dream)~ + MRSlayDream3
	  + ~!Global("MRSlayDreamLoop","GLOBAL",1)~ + ~Well it really wasn't *you*. It seems my... um, 'instinct', or whatever, has chosen your body as its avatar...~ DO ~SetGlobal("MRSlayDreamLoop","GLOBAL",1)~ + MRSlayDreamAvatar
  ++ ~You appeared, told me the Slayer is a nice guy, killed all my companions - including yourself - and it ended. Oh, you also taught me to count up to five!~ + MRSlayDreamShort
END	

IF ~~ MRSlayDreamCrazy2
  SAY ~I hope that too...~
  IF ~~ EXIT
END

IF ~~ MRSlayDreamCrazyCandy
  SAY ~(Imoen simply stares at you with her lips pursed. It's evident she already knows what your real problem is as she rolls her eyes)~
  =
  ~We'd all like some sweet meats, <CHARNAME>... all of us....~
  =
  ~I hope you are leading us to Irenicus... it wouldn't surprise me if we all ended up in some candy shop...~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",4)~ EXIT
END

IF ~~ MRSlayDreamShort
  SAY ~Whoa, now that was brief... and it didn't make any sense at all!~
  =
  ~Let's try something else - how about you repeat it, slowly and with some *details*, <CHARNAME>?  It'll surely help.~
  ++ ~Oh alright... It took place in Candlekeep, as usual... (Tell her calmly what happened in the dream.)~ + MRSlayDream3
  + ~!Global("MRSlayDreamLoop","GLOBAL",1)~ + ~That's not what is important; it really wasn't *you*. It seems my... um, 'instinct', or whatever, has chosen your body as an avatar.~ DO ~SetGlobal("MRSlayDreamLoop","GLOBAL",1)~ + MRSlayDreamAvatar
  ++ ~No, no, I have a better proposal:  what if you *mind your own business* and stop being so nosy, Imoen!~ + MRSlayDreamNosey
END

IF ~~ MRSlayDreamNosey
  SAY ~Huh?  But it was *you* who wanted to tell me in the first place, you troll brain!~
  =
  ~Hmpf...~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-2)~ EXIT
END

IF ~~ MRSlayDreamAvatar
  SAY ~Hah, and you can't figure out why? Apart from my *great* looks, I'm the only human on the realms that you'd obey blindly, heheheh... your instinct is a smart one! (She winks at you)~
  =
  ~But *anyway*, better if you tell me about the whole dream, hmm?~
  ++ ~it took place in Candlekeep, as usual. I appeared before you inside the library, and you began talking to me... (Tell her what happened in the dream.)~ + MRSlayDream3
  ++ ~You appeared, told me the Slayer is a nice guy, killed all my companions - including yourself - and it ended. Oh, you also taught me to count up to five!~ + MRSlayDreamShort
  ++ ~No, no, I have a better proposal:  what if you *mind your own business* and stop being so nosy, Imoen!~ + MRSlayDreamNosey
END

IF ~~ MRSlayDream3
  SAY ~(Imoen listens to you as you tell her about the dream. When you are done, she looks at you with a thoughtful expression.)~
  =
  ~Wait, wait... so you're sayin' that... I explained how you could become the Slayer?~
  ++ ~Yes, that's it more or less.~ + MRSlayDream4
  + ~!Global("MRSlayDreamLoop","GLOBAL",1)~ + ~Well it really wasn't *you*. It seems my... um, 'instinct', or whatever, has chosen your body as its avatar...~ DO ~SetGlobal("MRSlayDreamLoop","GLOBAL",1)~ + MRSlayDreamAvatar2
  ++ ~yeah... what do you think about it?~ + MRSlayDream4
  ++ ~Well you seemed more interested in killing people than anything else.~ + MRSlayDream4
  ++ ~Not at all. Weren't you listening?~ + MRSlayDreamListen
  ++ ~Yes, but I didn't listen to you at all. I just stared at the pretty colours.~ + MRSlayDreamListen2
END

IF ~~ MRSlayDream4
  SAY ~Hmmm...~
  IF ~~ + MRSlayDream5
END

IF ~~ MRSlayDreamAvatar2
  SAY ~Hah, and you can't figure out why? Apart of the *great* looks, I'm the only human in the Realms that you'd obey blindly, heheheh... your instinct is a smart one! (She winks at you)~
  IF ~~ + MRSlayDream5
END

IF ~~ MRSlayDreamListen
  SAY ~Oh alright, enlighten me, <PRO_LADYLORD> <CHARNAME>!~
  ++ ~Uh, actually, I guess you were right...~ + MRSlayDreamListen2
  ++ ~In the first place, it wasn't *you*, but some creation of my subconscious. And secondly, you tried to *convince* me to become the Slayer, not just explain to me how to become it.~ + MRSlayDreamCorrect
  ++ ~The dream was about *onions*, don't you see? ONIONS!~ + MRSlayDreamOnion
END

IF ~~ MRSlayDreamListen2
  SAY ~Hmpf...~
  IF ~~ + MRSlayDream5
END

IF ~~ MRSlayDreamStrange
  SAY ~(Imoen looks at you strangely, but decides to reply.)~
  IF ~~ + MRSlayDream5
END

IF ~~ MRSlayDreamCorrect
  SAY ~Oh, excuse me, do you want me to write a detailed summary of your dream so we can check it point by point?~
  =
  ~How 'bout you try to not be that much of a goblin cock, alright?~
  IF ~~ + MRSlayDreamListen2
END

IF ~~ MRSlayDreamOnion
  SAY ~(Imoen raises an eyebrow) ... um... what?~
  ++ ~YES! The Slayer is big, right?  Big and dark. But I don't want to become the Slayer, right? I want to be the opposite of it; and what's the opposite of something big and dark? Something *little* and *white*, right?  So... what's little and white? A PEELED ONION! Haha!~ + MRSlayDreamOnion2
  ++ ~Of course: The Slayer is inside me, in my inner self. To reach it, I only have to explore myself, *layer by layer*... what else has layers? ONIONS! Slayer, onion layer! You see?~ + MRSlayDreamOnion2
  ++ ~Uh, nothing, nothing... what do you think of these dreams?~ + MRSlayDreamStrange
  ++ ~Well... I like onions...~ + MRSlayDreamOnion3
END

IF ~~ MRSlayDreamOnion2
  SAY ~(She stares at you as the 'profound' conclusion you have reached begins to sink in)~
  =
  ~... Yep. You are right. You have opened my eyes, really.~
  =
  ~Let's... let's keep going, eh?~
  IF ~~ EXIT
END

IF ~~ MRSlayDreamOnion3
  SAY ~Yeah, well... that's lovely for you.  Keep up the good work, <CHARNAME>.~
  =
  ~Let's... let's keep going, eh?~
  IF ~~ EXIT
END

IF ~~ MRSlayDream5
  SAY ~You've got some pretty weird dreams, that's for sure.  And they always manage to involve *me* in some way...~
  =
  ~Guess it's the way your 'Bhaal side' manifests in you. You keep it suppressed while conscious, but in the dream world 'it' has more freedom.~
  =
  ~But it seems you're having a harder and harder time keeping it away... I mean, you turned into the Slayer earlier, when fighting Bodhi. And now you tell me you can turn into it at will. You're becoming more and more a part of that 'Bhaal side' within you.~
  =
  ~Not very appealing, huh? You don't have to tell me, it isn't funny, I know.~ 
  ++ ~At the very least indeed... but I wonder why my 'inner instinct' takes your appearance... it's kind of... creepy.~ + MRSlayDream5Avatar
  ++ ~I don't really know, Imoen. From the way you put it in the dream it doesn't look *that* bad...~ + MRSlayDream5NotBad
  ++ ~imoen... have you been experiencing things like this too?~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRSlayDream5Imoen
  + ~CheckStatGT(Player1,13,CHR)~ + ~Why isn't it appealing?  Isn't the power the Slayer brings me appealing?  Isn't the essence of a God... attractive?~ DO ~IncrementGlobal("MRCorCounter","GLOBAL",1)~ + MRSlayDream5Appeal
  + ~!CheckStatGT(Player1,13,CHR)~ + ~Why isn't it appealing?  Isn't the power the Slayer brings me appealing?  Isn't the essence of a God... attractive?~ + MRSlayDream5Appeal
  ++ ~Speak for yourself. I intend to have all that power, and much more. And I will be able to control it.~ + MRSlayDream5Control
  ++ ~(Sigh) You are right, Imoen. Come, we've talked quite a lot already, and we have things to do.~ + MRSlayDream5End
END

IF ~~ MRSlayDream5End
  SAY ~Yeah, I guess, so...~
  IF ~~ EXIT
END

IF ~~ MRSlayDream5Control
  SAY ~(Imoen looks at you with grave concern. You can tell this topic is one of the few she won't joke about)~
  =
  ~I didn't think you were that naive, <CHARNAME>. I *know* that you aren't...~
  =
  ~You won't be able to control it.  It will swallow you. Can't you see what the last part of the dream means?  Become the Slayer too many times... and you won't *be* <CHARNAME> any more.~
  =
  ~As the Slayer you will be immensely powerful, <CHARNAME>. But you will not be *you*. What good will all that power do you then?~
  =
  ~I can't stop you from following that path... the only thing that I can do is ask you... please... Don't seek that end.~
  =
  ~Forget about the 'power', <CHARNAME>. If not for me... do it for yourself...~
  =
  ~(Imoen touches your arm affectionately with this plea in her eyes, and walks away from you.)~
  IF ~~ EXIT
END

IF ~~ MRSlayDream5Appeal
  SAY ~No.  No, it isn't. (Imoen is completely serious now. You can tell this is one of the few topics that can worry her to the core)~
  =
  ~Don't give in to that temptation. Didn't you understand what the last part of the dream means? Tread lightly with the Slayer, or you will pay for it with your life, <CHARNAME>.~
  =
  ~(She raises her hand, fingers extended, in front of your eyes) Five. Can you see? Five times. Each time you fall to the lure of the Slayer... (She folds her fingers in one by one) your basic nature will fade... and fade... and fade... (Her hand is closed) until you are consumed.~
  =
  ~You are no god, <CHARNAME>, bear that in mind. You have only a small portion of Bhaal's essence. Let the power overwhelm you completely... and you'll be no more than a beast.~
  =
  ~I can't stop you from following that path. The only thing that I can do is ask you that... please... don't seek that end...~
  =
  ~Forget about the 'power', <CHARNAME>, forget about what it might bring. If not for me... do it for yourself...~
  =
  ~(Imoen touches your arm affectionately with this plea in her eyes, and walks away from you)~
  IF ~~ EXIT
END

IF ~~ MRSlayDream5Imoen
  SAY ~Well... (She looks away warily)~
  = ~Not like that... but... there are times when I...hear things.  Things in my head.~
  = ~But it's nothing like what you have, I'm sure.~
  ++ ~oh no, Imoen... I am so sorry to hear that...~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRSlayDream5Imoen2
  ++ ~At the very least indeed... but I wonder why my 'inner instinct' takes your appearance.  It's kind of... creepy.~ + MRSlayDream5Avatar
  ++ ~I don't really know, Imoen. From the way you put it in the dream it doesn't look *that* bad...~ + MRSlayDream5NotBad
  + ~CheckStatGT(Player1,13,CHR)~ + ~But... why should I reject it? Isn't the power the Slayer brings me appealing?  Isn't the essence of a God... attractive?~ DO ~IncrementGlobal("MRCorCounter","GLOBAL",1)~ + MRSlayDream5Appeal
  + ~!CheckStatGT(Player1,13,CHR)~ + ~But... why should I reject it?  Isn't the power the Slayer brings me appealing?  Isn't the essence of a God... attractive?~ + MRSlayDream5Appeal
  ++ ~Well I intend to have all that power, and much more. And I will be able to control it.~ + MRSlayDream5Control
  ++ ~(Sigh) You are right, Imoen. Come, we've talked quite a lot already, and we have things to do.~ + MRSlayDream5End
END

IF ~~ MRSlayDream5NotBad
  SAY ~Hey, look, first of all, it's not *me* who told you all that, alright? I've told you a lotta things, but I know for sure I'd never tell you that.~
  =
  ~(Imoen's is completely serious. You can tell this topic is one of the few she won't joke about.)~
  =
  ~I don't care how I put it in your dream; becoming the Slayer can't be a good thing in any way, shape or form. Didn't you understand the last part of the dream? Five times, <CHARNAME>. If you become that monster five times, you will be consumed by its power.~
  =
  ~So don't even consider that 'offer' your instinct is making you... I- I beg of you, <CHARNAME>.~
  =
  ~(Imoen places her hand on your arm with affection.)~
  =
  ~Forget about the 'power', <CHARNAME>, forget about what it might bring.  If not for me... do it for yourself... alright?~
  =
  ~(Imoen looks at you with a friendly smile and a plea in her eyes, and then turns and walks away from you.)~
  IF ~~ EXIT
END


IF ~~ MRSlayDream5Avatar
  SAY ~I dunno. Since I'm a Child of Bhaal too and we have this 'common bond', I guess your instinct uses it on its own behalf...  Trying to trick you or something~
  = ~But you ignore me most of the time in real life anyways - so just ignore my dream version, too. (She winks at you)~
  ++ ~I won't fall to the Slayer, of that I am completely sure. You don't have to worry about that, Imoen.~ + MRSlayDream6
  ++ ~I don't really know, Imoen. You made it seem in the dream as if it wasn't something *that* bad...~ + MRSlayDream5NotBad
  + ~CheckStatGT(Player1,13,CHR)~ + ~But... should I really reject it? Isn't the power the Slayer brings me appealing?  Isn't the essence of a God... attractive?~ DO ~IncrementGlobal("MRCorCounter","GLOBAL",1)~ + MRSlayDream5Appeal
  + ~!CheckStatGT(Player1,13,CHR)~ + ~But... should I really reject it?  Isn't the power the Slayer brings me appealing?  Isn't the essence of a God... attractive?~ + MRSlayDream5Appeal
  ++ ~Well, I might start now. I intend to have all that power, and much more. And I will be able to control it.~ + MRSlayDream5Control
  ++ ~Heh, it won't, Imoen... come, we've talked quite a lot already and we have things to do.~ + MRSlayDream5End
END

IF ~~ MRSlayDream5Imoen2
  SAY ~Oh don't worry about me, I'll be fine!~
  =
  ~Start to worry when you find me running around screaming 'KILL, KILL!', drooling and waving a sword about...~ 
  =
  ~Hmm... maybe that last sentence should have stayed in my head.~
  IF ~~ EXIT
END

IF ~~ MRSlayDream6
  SAY ~I wish it was that simple...~
  =
  ~(She places her hand on your arm affectionately. This is one of the few topics that worry Imoen enough for her to not to joke about it)  Resist it.  It may be difficult but... I know you can, <CHARNAME>.~
  =
  ~(With a smile, she walks away from you.)~
  IF ~~ EXIT
END
END

APPEND IMOEN2J
// ROmance resolution
IF ~~ MRResolutionNotYet
  SAY ~(Imoen looks at you frostily - even menacingly.  It is a clear warning not to press your luck.)~
  = ~There's nothing to talk about.  The only thing I'm concerned with right now is my soul, <CHARNAME>.  So until there's a stake through Bodhi's heart, that's all I'm gonna talk about.~
  IF ~~ DO ~IncrementGlobal("MRResolutionReply","GLOBAL",1)~ EXIT
END

IF ~~ MRResolution1
  SAY ~(It's obvious she expected to have this conversation sooner or later. She has a sad look in her eyes as she whispers her reply.)~ [ MRImRom1 ]
  IF ~~ DO ~SetGlobal("MRResolutionReply","GLOBAL",50)~ + MRResolution2
END





IF ~~ MRResolution2
  SAY ~There's nothing to talk about, <CHARNAME>...~
  ++ ~(Sigh) I guess you're right...  We made a horrible mistake.  Let's just try to... remain friends, alright?~ + MRResolution2-Friends
  ++ ~That's not true and you know it.  If we don't talk about what happened - about what *is* happening between us - I think I'll explode... I think we both will.~ + MRResolution2-Explode
  ++ ~Stop lying to yourself, Imoen!  We must do something about it, dammit!~ + MRResolution2-Aggressive
  ++ ~I love you, Imoen.~ + MRResolution2-Love
  + ~CheckStatGT(Player1,12,CHR)~ + ~very well. Tell me that you don't love me, and I will forget about that thing which 'didn't happen.'~ + MRResolution2-HighCha
  + ~!CheckStatGT(Player1,12,CHR)~ + ~very well. Tell me that you don't love me, and I will forget about that thing which 'didn't happen.'~ + MRResolution2-LowCha
  ++ ~Agh, you know what?  Go to Hell, Imoen!~ + MRResolution2-Toy
END

IF ~~ MRResolution2-Aggressive
  SAY ~(Imoen knits her brows slightly, drawing tiny creases on her forehead)  Look, if you're gonna get aggressive about it, just forget about it, alright?~
  ++ ~But it's all *your* fault! You seduced me with your impressive looks, your astounding intelligence, and your charming personality!~ + MRResolution2-Seduced
  ++ ~No, no, Imoen, don't take me the wrong way... it's only that it pains me so much to see us like this, we must talk about what is happening.~ + MRResolution2-Explode
  ++ ~No! I love you, Imoen! I love your every thought, your voice, every one of your words and gestures...~ + MRResolution2-Love
  ++ ~Me?  Aggressive?? Go to Hell, Imoen!~ + MRResolution2-Toy
END

IF ~~ MRResolution2-Seduced
  SAY ~(Imoen's cheeks redden - whether with anger or embarassment, you aren't sure.)~
  = ~*I* seduced *you*?  Who was the 'I-understand-ya-Imoen' <PRO_GIRLBOY>?  Who listened to me every time I whined, and put up with all of my practical jokes?~
  = ~Who chased me through the forest soaked in freezing water to leap on me at the first opportunity?  And who pinned me to the ground and pushed <PRO_HISHER> tongue inside my mouth without any warning!?~
  = ~It's *YOU* who's been trying to seduce *ME* all this time!~
  + ~CheckStatGT(Player1,9,INT)~ + ~Oh really?  And which one of us was it who said, 'Let's forget about everything' and 'I belong in your arms', huh?~ + MRResolution2-SeducedRetort1
  + ~CheckStatGT(Player1,11,CHR)~ + ~Fine, well, whatever. Believe what you want.  Talking sense into you is like saying "Hey Minsc, did you know Boo can't really talk?"... useless *and* dangerous.~ + MRResolution2-SeducedRetort2
  ++ ~Fine, fine... look Imoen, it doesn't matter who seduced who. If we don't talk of what is happening between us, I think I'll go insane.~ + MRResolution2-Explode
  ++ ~Fine, whatever. It's been a mistake, you win, let's be friends again.~ + MRResolution2-Mistake
  + ~Gender(Player1,MALE)~ + ~Yes, YES I did!  I only wanted to have my way with you, and now I've done it.  You're nothing but another harlot I've bedded.~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~Yes, YES I did! I only wanted a taste of you, and now I've had it.  You're nothing but another wench I've bedded.~ + MRResolution2-Harlot
END

IF ~~ MRResolution2-Mistake
  SAY ~We *both* win, <CHARNAME>...~
  IF ~~ + MRResolution-FriendsHetero
  IF ~Gender(Player1,FEMALE)~ THEN + MRResolution-FriendsHomo
END
END

CHAIN IMOEN2J MRResolution2-Harlot
~(Her blush goes to crimson in seconds. Her eyes are opened wide, and she stares at you with loathing and anger.)~
== IMOEN2J ~(Her lips are pressed into a tight, angry line - but somehow she controls the urge to backhand you with all her strength.)~
== IMOEN2J ~(She turns from you and runs away. With all of her equipment, you notice.)~  DO ~LeaveParty() EscapeArea() SetGlobal("ImoenRomanceActive","Global",3) IncrementGlobal("MRKinCounter","Global",-15)~
EXIT

APPEND IMOEN2J
IF ~~ MRResolution2-SeducedRetort1
  SAY ~I- uh- (Imoen's face turns bright red. She is at a loss of words, but only for a moment. A split second later, she is yelling at you) You- you said that after telling me I was the only thing for you in the world! Any foolish girl would fall for that, ANY!~
  = ~Admit it!  You were just trying to get me in bed the whole time!  All that kindness, you and your perverted thoughts, plotting to see me naked and gasping before you!~
  ++ ~(You can't resist it, you love to annoy her) Frankly, Imoen, once with you was more than enough!~ DO ~SetGlobal("MRResolutionTease","GLOBAL",1)~ + MRResolutionTease
  ++ ~(You can't resist telling her the truth) Frankly, Imoen, I have regrets about that... once with you was more than enough.~ DO ~SetGlobal("MRResolutionTease","GLOBAL",2)~ + MRResolutionTease
  ++ ~Heh heh... our first quarrel and we're not even together... *yet*! (Wink at her.)~ + MRResolution2-SeducedRetort2
  ++ ~All those feelings were spontaneous, Imoen... I plotted nothing. What happened in the woods was only what had to happen sooner or later, I am sure about it.~ + MRResolutionSpontaneous
  ++ ~So what if it's like that, Imoen? I admit it, I've always wanted you and I to be together and love each other! You can't blame me for that!~ + MRResolutionAlways
  + ~Gender(Player1,MALE)~ + ~You think too much of yourself, Imoen! Look, let's forget about it. Friends?~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~You think too much of yourself, Imoen! Look, let's forget about it. Friends?~ + MRResolution-FriendsHomo
  + ~Gender(Player1,MALE)~ + ~I ADMIT IT, IMOEN! I only wanted to have my way with you, and now that I've done it, you are nothing but another harlot I've bedded.~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~I ADMIT IT, IMOEN! I only wanted a taste of you, and now that I've had it, you are nothing but another wench I've bedded.~ + MRResolution2-Harlot
END

IF ~~ MRResolutionAlways
  SAY ~That you... (Imoen looks surprised. She didn't expect you to say something like that. Her 'playful' annoyance is slowly turning into a real one.)~
  = ~Are you sayin' that you only listened to me 'cause you wanted to *have your way with me*!?~
  ++ ~Yes! It was the only way to get you on your back!~ + MRResolution2-Harlot
  ++ ~No, Imoen, of course not. I listened to you because I love you more than my own life. I'd die for you.  There are no words to describe how I've felt towards you all these years.~ + MRResolutionAlwaysLove
  + ~Gender(Player1,MALE)~ + ~You think too much of yourself, Imoen! Look, let's forget about it. Friends?~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~You think too much of yourself, Imoen! Look, let's forget about it. Friends?~ + MRResolution-FriendsHomo
  + ~Gender(Player1,MALE)~ + ~I ADMIT IT, IMOEN! I only wanted to have my way with you, and now that I've done it, you are nothing but another harlot I've bedded.~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~I ADMIT IT, IMOEN! I only wanted a taste of you, and now that I've had it you are nothing but another wench I've bedded.~ + MRResolution2-Harlot
END

IF ~~ MRResolutionAlwaysLove
  SAY ~(Her outrage quickly fades, replaced by obvious puzzlement...and embarrassment)  You- you've loved me all these years? Does that mean that... even- even in Candlekeep...?~
  ++ ~Hopelessly in love. From the first time I saw you and you told me 'Heya, I'm Imoen!'~ + MRResolutionAlwaysLove2
  ++ ~It... grew gradually once we left there. I longed for your love already when we were captured by Irenicus' minions, and having you torn away from me and carried off to Spellhold was the most horrible torture I've had to endure in my whole life.~ + MRResolutionAlwaysLove2
  ++ ~It began when we were in Irenicus' dungeon, ever since you got me out of my cell... I was so worried about you, I couldn't get you out of my mind, especially after the dreams.~ + MRResolutionAlwaysLove2
  ++ ~You... you stole my heart when you opened yourself to me after rescuing you... I found that I felt much more than simple care for you.~ + MRResolutionAlwaysLove2
  ++ ~Sorry, I meant since that morning in the elven encampment... it feels like an eternity since I last touched your lips.~ + MRResolutionAlwaysLove2
END

IF ~~ MRResolutionAlwaysLove2
  SAY ~Oh...~
  = ~I- I don't know what to say, I... (Imoen looks troubled and confused. She would have never imagined you longed for her heart in such way; and you would like to think she doesn't want to admit she feels the same way towards you now.)~ 
  = ~(She speaks in a whisper) <CHARNAME>...~
  IF ~~ + MRResolution3
END

IF ~~ MRResolutionSpontaneous
  SAY ~Hmpf.  I dunno about that.  Two Bhaalspawn aren't supposed to do what we did! It's plainly wrong, and it's disgusting!~
  = ~We aren't just childhood friends anymore, <CHARNAME>.  You're my <PRO_BROTHERSISTER>!  What we did was incest!  D'ya know how sick that makes me feel?~
  ++ ~Imoen, you can say it was incest if you want. I can even agree with you on that.  But it was no mistake, and we did nothing wrong.  If love is 'something wrong', then... I can't imagine what can be right.~ + MRResolutionLoveRight
  ++ ~But... I love you Imoen!~ + MRResolution3Pointless
  + ~Gender(Player1,MALE)~ + ~(Speak seriously) Oh no, I never thought of it that way! Get away from me! We must find a way atone for this sin!~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~(Speak seriously) Oh no, I never thought of it that way! Get away from me! We must find a way atone for this sin!~ + MRResolution-FriendsHomo
  ++ ~(Slap yourself on the forehead sarcastically) That's true! Get away from me!  We are impure, let's ask the gods for mercy!~ + MRResolutionBlasphemy
  + ~Global("MRResolutionTeasedAlready","GLOBAL",0)~ + ~Oh, 'incest' is such a strong word... let's call it 'deep relationship between siblings', eh? (chuckle.)~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolution3Joke
  ++ ~We may be Bhaalspawn, but that doesn't mean we are 'regular' siblings, Imoen. Our mothers weren't the same, neither were our families. Only our father is common to both of us; and he wasn't really a 'father', but a god.~ + MRResolutionBhaalThink
  ++ ~Imoen, that's simply not true. We are Bhaalspawn, yes; however, you don't seem to know the way Bhaal planted his seeds.~ + MRResolutionBhaalseed
  + ~Gender(Player1,MALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHomo
END

IF ~~ MRResolution2-SeducedRetort2
  SAY ~(Imoen huffs. She fights it, she *really* fights it, but still can't prevent a smile from forming on her lips) You think yer funny dontcha?~
  = ~Look <CHARNAME>, I know what you're tryin' to do, but I won't just laugh and say "you're right, let's make love like there's no tomorrow."  This is a very serious issue.~
  IF ~~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolution3
END

IF ~~ MRResolution3
  SAY ~What we did was wrong. It- it was a huge mistake, the biggest in our lives since we left Candlekeep. We should have just stayed friends.  We crossed a dangerous line, <CHARNAME>...~
  = ~I mean... we're Bhaalspawn.  Y'know what that means, right?  We're related.  You're my <PRO_BROTHERSISTER>.  That's incest.  *Incest!*  D'ya know how sick that makes me feel?~
  ++ ~Imoen, you can say it was incest if you want. I can even agree with you on that. But it was no mistake, and we did nothing wrong.  If love is 'something wrong', then... I can't imagine what can be right.~ + MRResolutionLoveRight
  ++ ~But... I love you Imoen!~ + MRResolution3Pointless 
  + ~Gender(Player1,MALE)~ + ~(Speak seriously) Oh no, I never thought of it that way! Get away from me! We must find a way atone for this sin!~ + MRResolution-FriendsHetero 
  + ~Gender(Player1,FEMALE)~ + ~(Speak seriously) Oh no, I never thought of it that way! Get away from me! We must find a way atone for this sin!~ + MRResolution-FriendsHomo 
  ++ ~(Slap yourself on the forehead sarcastically) Oh, that's right! Get away from me!  We are impure, let's ask the gods for mercy!~ + MRResolutionBlasphemy 
  ++ ~We may be Bhaalspawn, but that doesn't mean we are 'normal' siblings, Imoen. Our mothers weren't the same, neither were our families. Only our father is common to both of us; and he wasn't really a 'father', but a god.~ + MRResolutionBhaalThink 
  ++ ~Imoen, that's simply not true. We are Bhaalspawn, yes; however, you don't seem to know the way Bhaal planted his seeds.~ + MRResolutionBhaalseed  
  + ~Gender(Player1,MALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHomo
END
END

CHAIN IMOEN2J MRResolutionTease
~WHAT!? (Imoen's eyes widen until they look as big as saucers.) Well, it sure as Hell didn't seem that way with all your moaning and gasping and sighs!  And I'm sure not gonna believe that I wasn't any good when you came *three*-~
== IMOEN2J IF ~Global("MRResolutionTease","GLOBAL",1)~ THEN ~(Imoen stops talking and bites her lower lip in embarrassment as she realizes what she's saying.  If there was a bit of her blood that wasn't concentrated in her face yet, now it is... especially when she notices your playful smile.)~ 
== IMOEN2J IF ~Global("MRResolutionTease","GLOBAL",2)~ THEN ~(Imoen stops talking and bites her lower lip in embarrassment as she realizes what she's saying.  If there was a bit of her blood that wasn't concentrated in her face yet, now it is...)~ 
END IMOEN2J MRResolutionTease2

APPEND IMOEN2J
IF ~~ MRResolutionTease2
  SAY ~(She glares at you)  I bet you think you're funny, dontcha?  You must think it's freakin' hilarious to lose my love, then, huh?~
   + ~CheckStatGT(Player1,10,INT)~ + ~Ah, so you finally admit that you love me!~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionAdmit
  ++ ~No!  No, Imoen! It was only a joke. Look... I- I couldn't live without you. I always wanted this to happen, Imoen.  Always.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionAlways
  ++ ~Heheh.. wow, look at us!  We are having our first quarrel, and we are not even together... *yet*.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionTease3 
  ++ ~I was only joking, Imoen. You are right after all... we just can't be together.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionEnd
  ++ ~You're right, it doesn't worry me at all. I prefer to pay a five-copper whore for that kind of affection.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionWhore
END

IF ~~ MRResolutionTease3
  SAY ~(Imoen huffs. She fights it, she *really* fights it, but can't prevent a smile from forming on her lips.)~ 
  = ~Look <CHARNAME>, I know what yer tryin' to do, but I won't just laugh and say "yer right, let's make love like there's no tomorrow"... this is a very serious issue.~
  IF ~~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolution3
END

IF ~~ MRResolutionAdmit
  SAY ~What!? N- no, uh, I- I mean, yeah, but...~ 
  ++ ~(She finally said it. She really loves you, there is nothing more to be said: interrupting her, you take her in your arms and kiss her lips with all of your passion.)~ DO ~SetGlobal("MRILoveYou","GLOBAL",1)~ + MRResolutionAdmitKiss 
  + ~CheckStatGT(Player1,12,INT)~ + ~(You change your expression completely, talking absolutely seriously now. The fear of losing her clenches your heart) Imoen, please listen to me... You have grown to become the first of my worries, my thoughts, my joys. You are my life, what I feel for you is beyond words. Losing you would be more devastating than it was losing my soul, for *you* are the spirit that endows me with all I have ever desired.~ + MRResolutionHard
  + ~!CheckStatGT(Player1,12,INT) CheckStatGT(Player1,7,INT)~ + ~(You become completely serious now; you can't risk losing her) Listen to me, Imoen, please. I can't lose you.  You're the happiness and joy in my life; you're the only thing I can think about lately. Losing you would be... worse than losing my soul. I think I could live without my soul, but I can't live without you.~ + MRResolutionHard
  + ~GlobalGT("MRKinCounter","GLOBAL",24)~ + ~Imoen, I love you, and nothing you can say or do will change that.~ + MRResolutionHard
  + ~!GlobalGT("MRKinCounter","GLOBAL",24)~ + ~Imoen, I love you, and nothing you can say or do will change that.~ + MRResolutionAdmitLove
  ++ ~(Just let her continue while you amusedly look at her embarrassment.)~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionTease3 
  ++ ~I was only joking, Imoen. You are right after all... we just can't be together.~ + MRResolutionEnd
  ++ ~Forget about it. I find you weaker with every word you say; you are just a whore with which I did what I pleased, and nothing more.~ + MRResolutionWhore
END

IF ~~ MRResolutionAdmitLove
  SAY ~(Imoen's face turns somber. For some reason, what you just said has saddened her) <CHARNAME>...~ 
  IF ~~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionLoveFails
END
END

CHAIN IMOEN2J MRResolutionAdmitKiss
~(Before she can say another thing, and while she isn't expecting it, you slip your arms around her waist and caress her lips with yours, trying to tell her without words how much you love her.)~ 
= ~(Although her muscles tensed when she first felt you around her, soon she is kissing you back, giving in to her yearning as she wraps her arms around your neck and as her tongue shyly tries to slips past your lips.)~ 
== IMOEN2J IF ~Gender(Player1,MALE)~ THEN ~(She finds her own hand going down your chest, past your stomach and with the intention of going further. And when she realizes what she is doing, her eyes pop open, her fingers leave your hair, her lips hurriedly pull away... she pushes you back with rough desperation)~ 
== IMOEN2J IF ~Gender(Player1,FEMALE)~ THEN ~(She finds her own hand resting on your left breast, squeezing it gently as the other goes down your back, around your waist and with the intention of going further. And when she realizes what she is doing, her eyes pop open, her lips hurriedly pull away, her fingers stop their caresses... she pushes you back with rough desperation)~ 
== IMOEN2J ~(Her lips tremble, she seems horrified. Or, more precisely... terrified) No!  NO!  I don't care how good it feels, it's still WRONG!  You are my *<PRO_BROTHERSISTER>*, and I'm not- I'm not-~
END IMOEN2J MRResolution4

APPEND IMOEN2J
IF ~~ MRResolution2-LowCha
  SAY ~(Imoen blinks twice and recoils, surprised by your request) I, uh... (She looks at you, but intentionally avoids your gaze as she bites her lower lip. She appears to be having difficulties.)~ 
  = ~I... I don't, err... (The words seem to refuse to come out of her mouth. Imoen closes her eyes, collecting herself. After taking a deep breath, she opens them again with determination) I... I don't love you.~ 
  = ~(Her voice is dry - doubtful but insistent at the same time) Let's...forget about it. There's... nothing between you and me.~ 
  ++ ~(Although shocked, you told her that you would not bother her again if she said it) I... I see. Very well then... let's be friends and nothing more, Imoen.~ + MRResolution2-LowCha2 
  + ~CheckStatGT(Player1,12,WIS)~ + ~(she lies. She couldn't look into your eyes, she almost couldn't utter it at all) Imoen... now please look into my eyes, and repeat it... only then shall I believe you.~ DO ~SetGlobal("MRILoveYou","GLOBAL",1)~ + MRResolution2-LowCha3
  ++ ~Don't be stupid!  Stop lying to yourself, Imoen!~ + MRResolution2-LowCha1
  ++ ~But... but *I* do love you, Imoen!~ + MRResolution2-Love 
  + ~Gender(Player1,MALE)~ + ~You bitch! Better that way, because I only wanted to have my way with you, and now that I've done it you are nothing but another harlot I have spent a night with!~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~You bitch! Better that way, because I only wanted a taste of you, and now that I've had it you are nothing but another wench in my account!~ + MRResolution2-Harlot
END

IF ~~ MRResolution2-LowCha1
  SAY ~You... you said you'd leave me in peace! (Imoen knits her brows, drawing tiny creases on her forehead) If you're gonna get aggressive about it, then you can go on forgetting all of this for real, alright?~ 
  ++ ~But it's all *your* fault! You seduced me with your impressive looks, your astounding intelligence and your charming personality!~ + MRResolution2-Seduced
  ++ ~No, no Imoen, don't take me the wrong way... it's only that it pains me so much to see us like this, we must talk about what *is* happening, please...~ + MRResolution2-Explode
  ++ ~No! I love you Imoen, I love your every thought, your voice, every one of your words and gestures...~ + MRResolution2-Love
  ++ ~That I don't get aggressive?? Go to Hell, Imoen!~ + MRResolution2-Toy
END

IF ~~ MRResolution2-LowCha2
  SAY ~I... (Imoen didn't really expect you would respect her words. She nods once, a slight, very sad smile on her lips, and a heavy burden seems to have been removed from her shoulders) Thank you for keeping up to your word, <CHARNAME>...~ 
  = ~That's the way it must be. Our... 'kind'... simply can't be together in that way.~ 
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolution2-LowCha3
  SAY ~You... you said you'd leave me in peace! (Imoen knits her brows, drawing tiny creases on her forehead; her eyes linger for a very brief moment on yours, but look away immediately) What, you wanna hear it from the town criers?  Want me to write it with huge letters on a wall?~ 
  = ~(She sounds annoyed.  Her gaze flickers everywhere in her surroundings, but she won't meet your gaze) What's this obsession about eyes anyway? Ya have some fetish with them or something?  You're probably gonna end up poking my eyes out and playin' with them like they were marbles!  No, no way I'm looking at your perverted eyes, I won't be doin' it, I won't-~ 
  = ~(Imoen stops talking, realizing how silly she sounds. She lowers her head and closes her eyes, sighing deeply. You notice her breath trembles as she exhales) Fine.  Let's get done with it, alright? (Her eyelashes flash up, and she drills her resolute gaze into your irises.)~ 
  = ~<CHARNAME>, I don't love you. I do not love you, I've never loved you and never will, and- and you're a fool for- for believing that... that I'd... th- that I would- (Her voice breaks, and her eyes can no longer meet yours.  She drops her gaze to the ground in frustration. Annoyance mixed with desperation builds up inside her until she can't hold it anymore.)~ 
  IF ~~ + MRResolutionPre4
END

IF ~~ MRResolution2-HighCha
  SAY ~(Imoen blinks twice and recoils, surprised by your request) I, uh... (She looks at you, but intentionally avoids your gaze as she bites her lower lip. She appears to be having difficulties...)~ 
  = ~I... I don't, err... (The words seem to refuse to come out of her mouth. Imoen closes her eyes, ordering her thoughts. After taking a deep breath, she opens them again with determination... and then they meet yours.)~ 
  = ~I d- don't... I... (She tries, but can't go on. She witnesses the hope, the love and frankness that radiate from the depths of your crystalline eyes. She sees your sincere expression and feels your longing for her warmth, your concern for her worries, your yearning for her love... and her will breaks.)~ 
  IF ~~ + MRResolutionPre4
END

IF ~~ MRResolutionPre4
  SAY ~Just... just why do you do this to me? (Tears begin to well up in her eyes)  Why can't you hate me?  Why won't you just leave me alone and find yourself someone better than me! Don't you see that I don't want this? I- I never wanted this to happen! I never wanted to feel like this...~ 
  = ~It's... it's not fair!  I don't deserve this, it's not fair... it's not fair, <CHARNAME>!~ 
  IF ~~ DO ~SetGlobal("MRILoveYou","GLOBAL",1)~ + MRResolution4
END

IF ~~ MRResolution4
  SAY ~Look, I love you, alright?  That make you happy?  I love you... but it doesn't matter! I can forget about that, I can overcome it.  I can and I *will*!  Us bein' siblings is bad enough, but being Bhaalspawn too?  We'd be twice-damned!  We made a *huge* mistake!~ 
  + ~CheckStatGT(Player1,12,INT)~ + ~you love me!  My precious Imoen, joy overwhelms my senses... (Take her hand) This is a blissful dream come true!~ + MRResolution4-c
  + ~!CheckStatGT(Player1,12,INT)~ + ~you love me! This is such a great moment... (Take her hand) I am so happy, Imoen!~ + MRResolution4-c
  + ~CheckStatGT(Player1,12,WIS)~ + ~A... mistake? Is the happiness I felt that morning in the woods a mistake, Imoen? Is this incredible bond we share a simple error? I don't think so.~ + MRResolution4-b
  + ~!CheckStatGT(Player1,12,WIS)~ + ~I would never think the happiness I feel when you say 'I love you' is a mistake, Imoen.~ + MRResolution4-b
  ++ ~But... I love you Imoen!~ + MRResolution4-a
  + ~Global("MRResolutionTeasedAlready","GLOBAL",0)~ + ~Oh, 'incest' is such a strong word... let's call it 'deep relationship between siblings', eh? (chuckle.)~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolution3Joke
  ++ ~Incest? Imoen, you are wrong. We are Bhaalspawn, yes; however, you don't seem to know the way Bhaal planted his seeds.~ + MRResolutionBhaalseed
  + ~Gender(Player1,MALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHetero 
  + ~Gender(Player1,FEMALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHomo
  + ~Gender(Player1,MALE)~ + ~You bitch! Better that way, because I only wanted to have my way with you, and now that I've done it you are nothing but another harlot I have spent a night with!~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~You bitch! Better that way, because I only wanted a taste of you, and now that I've had it you are nothing but another wench in my account!~ + MRResolution2-Harlot
END

IF ~~ MRResolution4-a
  SAY ~Gods!  Are you even listening to me??  That doesn't matter, <CHARNAME>! We can live without it. *I* can, and you're much stronger than me. I'm not going to get myself involved in this kind of sick relationship just for a silly, stupid, pointless... ridiculous... feeling...~ 
  = ~Let's... let's forget about it... let's be friends... we can overcome it, just ignore it until it disappears... I know it will, <PRO_BROTHERSISTER>.~
  = ~(Imoen steps away from you. She can't hide her tears as she leaves your side... seemingly forever.)~ 
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolution4-b
  SAY ~(Imoen raises her voice, her frustration increasing as she sees you are making this much more difficult for her than she had expected) It is! It's a mistake, and it's wrong to feel so happy about it, <CHARNAME>!~
  IF ~~ + MRResolution5
END

IF ~~ MRResolution4-c
  SAY ~<CHARNAME>!  Are you even listening to me?  It doesn't matter! How happy it makes you or me doesn't change anything!~
  = ~(Imoen can hardly restrain herself from shouting at you; her frustration is growing by leaps and bounds as you makes this much more difficult for her than she first thought.)~
  IF ~~ + MRResolution5
END

IF ~~ MRResolution5
  SAY ~Look, jelly-brain - it's incest!  Don't you get that?  You had sex with your sister!  It's- it's just *wrong*!~
  + ~!CheckStatGT(Player1,10,INT)~ + ~it makes you happy. It makes me happy. I don't get your point, Imoen.~ + MRResolution5Point
  + ~CheckStatGT(Player1,10,INT)~ + ~our love brings happiness to us both... I simply can't understand why you care so much about this 'incest' issue.~ + MRResolution5Point
  ++ ~But *why* is it wrong, Imoen? Just because of some pointless prejudices. We're not even siblings anyway - we were just raised like that.~ + MRResolution5Wrong
  ++ ~That we both are Bhaalspawn doesn't mean that I am your <PRO_BROTHERSISTER>... let me explain to you...~ + MRResolutionBhaalseed
  + ~Gender(Player1,MALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHomo
END

IF ~~ MRResolution5Wrong
  SAY ~It's... it's wrong 'cause I've always felt like a little sister to you.  I looked up to you.  I admired you.  I could always trust you, I could always count on you... but not, y- y'know...~
  IF ~~ + MRResolution6
END

IF ~~ MRResolution5Point
  SAY ~You don't...?  (She balls her fists at her sides, obviously fighting the urge to start shouting)  Can't you just see that we're not supposed to feel this way for each other?!  It's not right!  I've always felt like a little sister to you.  You were someone I could look up to, care for and worry about, and be friends with but... but not, y- y'know!~ 
  IF ~~ + MRResolution6
END

IF ~~ MRResolution6
  SAY ~Never- never in my wildest dreams did I ever think that- that I'd... I'd fall in love with you... (Imoen looks lost in her thoughts. Suddenly she reacts and snaps back to reality, preventing herself from following this thread of thought.)~
  = ~But that doesn't change the fact that we're both Bhaalspawn, <CHARNAME>! And that's an even *worse* type of incest!~
  = ~It scares me... What if the very *gods* disapprove of such a relationship?  What if our blood makes us go insane, or become suicidal, or- or whatever, if we continue on this path?~ 
  = ~I... (Imoen blushes and opts to fall silent, noticing she is not making sense. She seems so desperate in her search for reasons to deny her feelings, she tries to use any possible argument.)~
  ++ ~imoen, you can't find a reason for us to not be together simply because there isn't one.  Let us love each other... please...~ + MRResolution7
  ++ ~You're right: the sky will crack open and the gods burn us to ashes for our blasphemy! (Roll your eyes) C'mon, Imoen... they couldn't care less about us mortals!~ + MRResolution6Mortals
  ++ ~I am sure the Slayer loves you as much as me, Imoen (Wink at her.)~ + MRResolution6Slayer
  + ~Gender(Player1,MALE)~ + ~Oh... oh my! You are right! We will burn in the Nine Hells; we must atone for our sins!~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~Oh... oh my! You are right! We will burn in the Nine Hells; we must atone for our sins!~ + MRResolution-FriendsHomo 
  ++ ~You are right after all, Imoen... we should just be friends. We have gone too far...~ + MRResolution6Friends
END

IF ~~ MRResolution6Friends
  SAY ~(Imoen just sighs, very deeply. She nods once, a slight, very sad smile on her lips, and a heavy burden seems to have been lifted from her shoulders.)~ 
  = ~Thank you, <CHARNAME>... thank you... (She simply hugs you, and leaves your side. You perceive a very slight sniffling before she is out of your hearing range...)~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolution6Slayer
  SAY ~(She purses her lips; she doesn't seem pleased to hear you joke about such things right now.)~
  IF ~~ + MRResolution7
END

IF ~~ MRResolution6Mortals
  SAY ~(She purses her lips; she doesn't seem so sure about that, since you are not only mortals, but children of the Lord of Murder.)~
  IF ~~ + MRResolution7
END

IF ~~ MRResolution7
  SAY ~(She eyes you from time to time, nervous, her breath erratic. She is scared. She bites her lower lip again and, staring at the ground, she finally whispers what she can't hold anymore... what is *really* tormenting her.)~
  = ~What if... what if you hurt me?~ 
  ++ ~(You just smile, as you know there is nothing more to say now.  Words can't express what only a tight embrace will make her understand.)~ + MRResolution7Embrace
  ++ ~...hurt you? Why would I hurt you, when you are everything to me? I would die for you, Imoen...and you think I would harm you?~ + MRResolution7Nice
  ++ ~That's it?  Fear of a real relationship? The entire incest thing... was just to avoid becoming emotionally dependant on me?~ + MRResolution7Nice
  ++ ~(Smile lovingly) If I ever hurt you, you have my permission to kick my butt a thousand times. I won't even complain!~ + MRResolution7Joke
  ++ ~Yes... yes I see what you mean, we won't be able to stay together... we should just be friends. We have gone too far...~ + MRResolution6Friends
END

IF ~~ MRResolution7Nice
  SAY ~(Tears are beginning to well up in her eyes) I... I was just... (Imoen is trembling.  Her sorrowful expression reflects her inner suffering as she looks from you to the ground and back again, unable to meet your gaze)~
  ++ ~(You won't keep torturing both of you with meaningless words. You tightly embrace her, to comfort both her aching heart and your own, and tell her with your touch how much you need her.)~ + MRResolution7Embrace
  ++ ~(She seems about to say something important, so you respect her turn to talk and let her finish.)~ + MRResolution7Delay
  ++ ~(Smiling, you approach her and gently lift her chin so she looks directly at you. Without a word, you slowly lean forward and softly, tenderly kiss her lips)~ + MRResolution7Embrace2
  + ~Gender(Player1,MALE)~ + ~(smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Marry me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose
  + ~Gender(Player1,FEMALE)~ + ~(Smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Stay with me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose
  + ~Gender(Player1,MALE)~ + ~You were just being a bitch! I only wanted to have my way with you anyway; now that I've done it you are nothing but another harlot I have spent a night with!~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~You were just being a bitch! I only wanted a taste of you anyway; now that I've had it you are nothing but another wench in my account!?~ + MRResolution2-Harlot
END

IF ~~ MRResolution7Joke
  SAY ~(Imoen's stark look unexpectedly breaks and a hint of a smirk plays across her face; she lowers her head as she slowly shakes it from side to side. She sniffles once, and her smile fades as she remembers why you have just told her that. She glances at you again.)~ 
  IF ~~ + MRResolution7Nice
END

IF ~~ MRResolution7Delay
  SAY ~(She swallows heavily and sniffles once more) I was... trying... I just wanted... t- to... (Imoen warily glances at you as coherent words refuse to come out of her shaking lips.)~ 
  ++ ~(You won't keep torturing both of you with meaningless words. You tightly embrace her, to comfort both her aching heart and your own and tell her with your contact how much you need her.)~ + MRResolution7Embrace 
  ++ ~(You keep waiting; she only needs time to order her thoughts.)~ + MRResolution7Delay2 
  ++ ~(Smiling, you approach her and gently lift her chin so she looks directly at you. Without a word, you slowly lean forward and softly, tenderly kiss her lips...)~ + MRResolution7Embrace2 
  + ~Gender(Player1,MALE)~ + ~(Smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Marry me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose 
  + ~Gender(Player1,FEMALE)~ + ~(Smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Stay with me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose
  + ~Gender(Player1,MALE)~ + ~You were just being a bitch! I only wanted to have my way with you anyway; now that I've done it you are nothing but another harlot I have spent a night with!~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~You were just being a bitch! I only wanted a taste of you anyway; now that I've had it you are nothing but another wench in my account!?~ + MRResolution2-Harlot
END

IF ~~ MRResolution7Delay2
  SAY ~I, uh... I... (Imoen bites her lip once again; she seems about to ask you something, but decides not to do it at the last moment. She is cold, or so it appears from her uncontrollable trembling.)~ 
  ++ ~(You won't keep torturing both of you with meaningless words. You tightly embrace her, to comfort both her aching heart and your own and tell her with your contact how much you need her.)~ + MRResolution7Embrace 
  ++ ~(Pressing her is the last thing you want to do, so you keep waiting for her to calm down and finish her sentence.)~ + MRResolution7Delay3
  ++ ~(Smiling, you approach her and gently lift her chin so she looks directly at you. Without a word, you slowly lean forward and softly, tenderly kiss her lips...)~ + MRResolution7Embrace2 
  ++ ~(Smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Marry me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose
  + ~Gender(Player1,MALE)~ + ~You were being a bitch! I only wanted to have my way with you anyway; now that I've done it you are nothing but another harlot I have spent a night with!~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~You were being a bitch! I only wanted a taste of you anyway; now that I've had it you are nothing but another wench in my account!~ + MRResolution2-Harlot
END

IF ~~ MRResolution7Delay3
  SAY ~(She holds her left elbow with her right hand, and shifts her weight from one foot to the other, not knowing what to do. You can tell she feels embarrassed, as if waiting for something... and your inner self knows well what it is.)~
  = ~(Imoen is still uneasily looking at you... better do something already.)~
  ++ ~(You won't keep torturing both of you with meaningless words. You tightly embrace her, to comfort both her aching heart and your own and tell her with your contact how much you need her.)~ + MRResolution7Embrace
  ++ ~Look, Im... if you're this uncomfortable with it, maybe we really *should* just be friends.~ + MRResolution7Friends
  ++ ~(Smiling, you approach her and gently lift her chin so she looks directly at you. Without a word, you slowly lean forward and softly, tenderly kiss her lips...)~ + MRResolution7Embrace2
  + ~Gender(Player1,MALE)~ + ~(Smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Marry me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose
  + ~Gender(Player1,FEMALE)~ + ~(Smiling, you approach Imoen and kneel before her. You take her quivering hand and, kissing her fingers while staring into the sea of her eyes, you speak) Stay with me, Imoen. Let's love each other forever to the end of time.~ + MRResolution7Propose
  + ~Gender(Player1,MALE)~ + ~You're just being a bitch! I only wanted to have my way with you anyway; now that I've done it you are nothing but another harlot I have spent a night with!~ + MRResolution2-Harlot
  + ~Gender(Player1,FEMALE)~ + ~You're just being a bitch! I only wanted a taste of you anyway; now that I've had it you are nothing but another wench in my account!~ + MRResolution2-Harlot
END

IF ~~ MRResolution7Friends
  SAY ~You...what?  (She stares at you in confused disbelief - whatever response she had been expecting, that wasn't it.  Not any more.)~
  = ~(She stays silent for several moments; you can see a whirlwind of emotions struggling in her eyes.  Her lips draw together in a tight pout.  Finally, though, she simply sighs, very deeply.  She nods once, and suddenly takes you in a tight embrace.)  Thank you, <CHARNAME>...~
  = ~(With those words she leaves your side, wiping her eyes with the back of her hand as she turns away.  A small smear of wetness stains your cheek where hers touched yours.)~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END


IF ~~ MRResolution7Embrace
  SAY ~(It feels like an eternity until you hold Imoen in your arms. Your gentle embrace is rewarded by the softness of her skin, the warmth of her quivering body. She simply lets you envelop her and hold her close, without moving at all.)~ [ MRImRom6 ]
  = ~(You sense her anguish grow; her shoulders tremble in your embrace as she sniffles once, then again, until she can't restrain her weeping anymore. Her arms wrap themselves around you, squeezing you desperately tight, and she lets her sorrow flow unreigned as she quietly bursts into tears.)~
  IF ~~ + MRResolution8
END

IF ~~ MRResolution8
  SAY ~(Imoen holds you so tightly that breathing is becoming difficult, but you wouldn't trade it for all the riches in the world.  After a delicious moment of caressing her hair as she cries on you, you hear her whisper under her breath in faltering words between sob after sob.)~
  = ~Forgive me... please.  Please forgive me... I was so scared... forgive me... (She cuddles against you as much as she can, rubbing her nose against your skin) Forgive me...~
  ++ ~(Just start kissing her in this ecstatic state.)~ + MRResolution8More
  ++ ~there's nothing to forgive, my love.  Nothing. (You feel your own tears wet your face as you start kissing her.)~ + MRResolution8More
  ++ ~(Continue caressing her, telling her to calm down, that you are there, that you love her...)~ + MRResolution8Calm
  ++ ~Forgive? I don't understand, what are you talking about?~ + MRResolution8Calm
  ++ ~(How have you come this far? You finally realize you don't want such a relationship, but you don't want to hurt Imoen either. You push her away very gently, but firmly.)~ + MRResolution2-Friends
END

IF ~~ MRResolution7Embrace2
  SAY ~(It feels like an eternity as your mouths converge, until your lips finally are linked. At first she doesn't react, just standing motionless as you warmly stroke her lips with yours, infusing them with all the love and adoration you possess for her.)~ [ MRImRom6 ]
  = ~(Just when you think it might not be enough for her to respond to your caresses, you taste a salty substance on your upper lip... a tear. Imoen's tear...)~
  = ~(And now you sense how her anguish grows, her shoulders tremble, her sniffles increase their frequency, until she can't restrain her weeping anymore. Her arms wrapping themselves around you, squeezing you desperately tight, she lets her sorrow flow unbridled as she quietly embraces you and bursts into tears.)~
  IF ~~ + MRResolution8
END

IF ~~ MRResolution7Propose
  SAY ~(Looking at you kissing her long, slender and agile fingers she can't help but smile as she wipes her nose with her free hand's sleeve) You... you silly... (She sniffles again, takes your hand and pulls you toward her, making you stand so you will be able to embrace her.)~
  = ~(She lets you envelop her body with your arms, resting her head on your shoulder. You sense her anguish grow, her shoulders trembling in your embrace as she sniffles once and again, until she can't restrain her weeping anymore.)~ 
  = ~(Her arms wrapping themselves around you, squeezing you desperately tight, she lets her sorrow flow unbridled as she quietly bursts into tears.)~
  IF ~~ + MRResolution8
END

IF ~~ MRResolution8More
  SAY ~(Tightening your embrace even more, you start to kiss her tears away like you did in her dreams: first her forehead, then her eyelids, her cheeks and nose...)~
  = ~(You reach her lips, and for a moment everything stands still. Your foreheads pressed together, your eyes closed, the only thing you can feel is how her quickened breath flows over your skin as it comes out of her half-open mouth. Time seems to stop as her trembling lips slowly, hesitantly move to meet yours.)~
  IF ~~ + MRResolution9
END

IF ~~ MRResolution8Calm
  SAY ~(Imoen just burrows herself further into your arms. She stops whispering, replacing her words with kisses... her eyes closed, she gives you a soft kiss on your neck, follows the line of your jaw, and tenderly touches her lips there as well. Then your chin is blessed by her gentle mouth, and she opens her teary eyes to look into yours.)~
  = ~(For a moment, everything stays still. The only thing you can feel is how her quickened breath strokes your skin as it comes out of her half-open mouth. She gathers the courage to move, and her trembling lips slowly, hesitantly move to meet yours.)~
  IF ~~ + MRResolution9
END
END

CHAIN IMOEN2J MRResolution9
~(With a final impulse born from her most intimate yearning, your mouths melt. Entangling her fingers in your hair, she continues to push herself against your body, her other hand sliding around your waist to pull you close. Her skin is a blanket that covers your entire being, her essence a gift from heavens that consumes all of your senses.)~
== IMOEN2J IF ~!Race(Player1,HUMAN)~ THEN ~(As her tongue timidly tries to slip past your lips, it is as if nothing else exists, just you and her in an everlasting kiss: everything that surrounds you shrinks to nothingness... all of your worries disappear, to leave only human and <PRO_RACE> united as one. Just Imoen and <CHARNAME>.)~
== IMOEN2J IF ~Race(Player1,HUMAN)~ THEN ~(As her tongue timidly tries to slip past your lips, it is as if nothing else exists, just you and her in an everlasting kiss: everything that surrounds you shrinks to nothingness... all of your worries disappear, to leave only two people united as one. Just Imoen and <CHARNAME>.)~
== IMOEN2J ~(She can't restrain another sniffle, and slowly, painfully, you both come back to real world. Still embraced, she looks into your eyes, hers still filled with tears.  With a look that speaks a thousand words, and without saying anything, she rests her head on you...)~
END IMOEN2J MRResolution10

APPEND IMOEN2J
IF ~~ MRResolution10
  SAY ~(... and begins to cry again. You feel her tremble in your arms, her sobs rising from the depths of her soul straight to your ears.)~
  ++ ~(kiss her head understandingly while tightening your embrace even more.)~ + MRResolution11
  ++ ~Imoen...? Are you alright? Did I do... something wrong?~ + MRResolution11
  ++ ~Oh, not again! What now??~ + MRResolution11
END

IF ~~ MRResolution3Joke
  SAY ~<CHARNAME>!! How- how can you joke about a thing like this, can't you see it's a very serious issue!? If that's how much you care about losing my love, then...~
  + ~CheckStatGT(Player1,9,INT)~ + ~Ah, so you finally admit that you love me!~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionAdmit
  ++ ~No, no, Imoen! It was only a joke, look I... I couldn't live without you... I always wanted this to happen, Imoen...~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionAlways
  ++ ~Heheh, well just look at ourselves. We are having our first quarrel, and we are not even together... *yet*.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionTease3
  ++ ~I was only joking, Imoen. You are right after all... we just can't be together.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionEnd
  ++ ~You're right, it doesn't worry me at all. I prefer to pay a five-gold-piece whore for that kind of affection.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionWhore

END

IF ~~ MRResolution3Pointless
  SAY ~(The sadness in Imoen's eyes is heart-piercing) That doesn't matter, <CHARNAME>... it doesn't matter when it comes to beings like us.~
  = ~I was... your childhood friend, 'the little sister you never had'. Now I really am your sister... let it stay like that.~
  ++ ~But Imoen, you-~ + MRResolutionLoveFails2
  ++ ~You know, you're such a bit-~ + MRResolutionLoveFails2
  ++ ~Hmm, maybe you ar-~ + MRResolutionLoveFails2
END

IF ~~ MRResolutionLoveRight
  SAY ~Love... (Imoen looks away, her eyes full of melancholy.  She wraps her arms around herself, unconsciously hugging herself against an inner chill)~
  = ~How... how did it get this far, <CHARNAME>?  Don't you get it?  We're not supposed to feel like this for each other.  It's not right.  It's not natural, it's not normal, it's not healthy.~
  = ~I've always felt kinda like your little sister.  You were someone I could look up to, admire, my best friend... but not.. not.. y'know...~
  = ~(Her voice drops to a mere whisper) I never wanted something like this to happen. It's not fair... I didn't want to- to feel this for you...~
  ++ ~(Hold her hand) Imoen... I'd have never expected we would come to this point... but since I had those dreams, every day I see you more like a woman, and less like my little sister.~ + MRResolutionLoveRight2
  ++ ~(She seems about to say something important. You patiently wait to let her finish expressing her feelings when she is able to.)~ + MRResolutionLoveRightDelay
  ++ ~All I know is that I love you, Imoen. Everything else means nothing.~ + MRResolution3Pointless
  ++ ~All I know is that this is taking much more time than I thought it would, so I say we just forget about everything and just be friends.~ + MRResolutionLoveRightEnd
END

IF ~~ MRResolution2-Friends
  SAY ~(Imoen slowly nods once. Despite being sad, she seems to have been relieved of a heavy burden.)~ 
  = ~That's the way it must be. Our... 'kind'... simply can't be together in that way.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolution2-Love
  SAY ~(Imoen looks at you sadly. She knew you would say something like that; she shakes her head slowly, with stern resignation.)~
 IF ~~ + MRResolutionLoveFails
END
 
IF ~~ MRResolutionLoveFails
  SAY ~Those words... may have meant something once, but now they bring nothing but emptiness... it doesn't matter, <CHARNAME>. For us, that doesn't really matter.~ 
  = ~I was... your childhood friend, 'the little sister you never had'. Now I really am your sister... let it stay like that.~
  ++ ~But Imoen, you-~ + MRResolutionLoveFails2
  ++ ~You know, you're such a bit-~ + MRResolutionLoveFails2
  ++ ~Hmm, maybe you ar-~ + MRResolutionLoveFails2
END

IF ~~ MRResolutionLoveFails2
  SAY ~(She interrupts you with all the determination she can muster)  No, <CHARNAME>.  Just let it go. Please... respect my decision... it's the most difficult one I've ever made.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolution2-Toy
  SAY ~(Of all the ways she had thought you may reply, this really was the furthest from her mind.)~ 
  = ~W- What...??~
  ++ ~You heard me well enough! I'm tired of people playing with my feelings, with my *heart*! What about ME, Imoen!? Your attitude is hurting me much more than any wound I've ever suffered...~ + MRResolution2-Toy2
  ++ ~Go drown yourself in a lake, you bitch! I'm tired of this. I'm tired of YOU and your whining! As someone said long ago, 'Go pester someone else!'~ + MRResolution2-Toy3
END

IF ~~ MRResolution2-Toy3
  SAY ~(She frowns, and her sad look disappears as her temper begins to flare.) It was YOU who wanted to talk, ASSHOLE!~
  IF ~~ + MRResolution2-Toy3NotMonk
  IF ~Class(Player1,MONK)~ THEN + MRResolution2-Toy3Monk
END

IF ~~ MRResolution2-Toy3NotMonk
  SAY ~You're just too STUPID to understand those around you, aren't you? You can't see further than the tip of your weapon, and anything else is either something to kill or something that bleeds!~
  IF ~~ + MRResolution2-Toy4
END

IF ~~ MRResolution2-Toy3Monk
  SAY ~You're just too STUPID to understand those around you, aren't you? You can't see further than your fists and your stupid 'kai', and anything else is either something to kill or something that bleeds!~
  IF ~~ + MRResolution2-Toy4
END

IF ~~ MRResolution2-Toy4
  SAY ~I pity you, I pity those that follow your ignorance. Ugh, now I *know* I made the right decision... I really don't know what I could've been thinking that morning in the woods.~ 
  = ~Don't expect me to stay with you anymore. Every time I look at you I remember what we *did*, and that makes my stomach churn.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-10)
	LeaveParty()
	EscapeArea()~
	EXIT
END

IF ~~ MRResolution2-Toy2
  SAY ~(She looks puzzled for a moment. Your words have caught her off guard) I- ah... I didn't...~
  ++ ~Go drown yourself in a lake, you bitch! I'm tired of this. I'm tired of YOU and your whining! As someone said long ago, 'Go pester someone else!'~ + MRResolution2-Toy3
  ++ ~Of course not.  Of course "you didn't". No one ever does, Imoen.  And for once, I was beginning to think that someone did.  That someone really cared... just to find that it all was... dust. Dust in my hands, slipping through my fingers.~ + MRResolution2-Toy5
END

IF ~~ MRResolution2-Toy5
  SAY ~(Imoen reacts with concern, her emotions truly touched by what you said) <CHARNAME>, it's not like that!  I... I *did* care, I still do! It's only that-~
  ++ ~Go drown yourself in a lake, you bitch! I'm tired of this. I'm tired of YOU and your whining! As someone said long ago, 'Go pester someone else!'~ + MRResolution2-Toy3
  + ~Gender(Player1,MALE)~ + ~That WHAT? Why are you doing this to me, Imoen? Why are you doing this to you?~ + MRResolution2-Toy6
  + ~Gender(Player1,FEMALE)~ + ~That WHAT? Why are you doing this to me, Imoen? Why are you doing this to you?~ + MRResolution2-Toy6
END

IF ~~ MRResolution2-Explode
  SAY ~(Imoen remains silent for a moment, looking at the ground to avoid your gaze.)~ 
  = ~(She closes her eyes. Gathering her determination, she frowns and looks at you again to speak almost shouting.)~ 
  = ~There's nothing happening between us, <CHARNAME>! Nothing can happen, that simple! We are- you...~ 
  = ~(After this little outburst her voice breaks. Then she talks as if she's about to cry, making a silent plea with her eyes.)~ 
  = ~I can't let it happen...~
  ++ ~Why? Why are you doing this to me, Imoen? Why are you doing this to *you*?~ + MRResolution2-Toy6
  ++ ~(You sigh) I guess you're right... We made a horrible mistake.   Let's just try to... remain friends, alright?~ + MRResolution2-Friends
  ++ ~But I love you, Imoen.~ + MRResolution2-Love
  ++ ~Agh, you know what? Go to Hell, Imoen!~ + MRResolution2-Toy
END

IF ~~ MRResolution2-Toy6
  SAY ~Why!? (Imoen can't hold back anymore; her anguish finally spills out) Because you're my *<PRO_BROTHERSISTER>*, <CHARNAME>! We both are *Bhaalspawn*, dammit! Y'know what we did!? We committed *incest*, of the worst kind!  And it makes me sick even to think about it!~
  ++ ~Imoen, you can say it was incest if you want, I can even agree with you on that. But it was no mistake, we did nothing wrong... if love is 'something wrong', then... I can't imagine what can be right.~ + MRResolutionLoveRight
  ++ ~But... I love you Imoen!~ + MRResolution3Pointless
  + ~Gender(Player1,MALE)~ + ~(Speak seriously) Oh no, I never thought of it that way! Get away from me! We must find a way atone for this sin!~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~(Speak seriously) Oh no, I never thought of it that way! Get away from me! We must find a way atone for this sin!~ + MRResolution-FriendsHomo
  ++ ~(Slap yourself on the forehead sarcastically) Oh no! Get away from me!  We are impure, let's ask the gods for mercy!~ + MRResolutionBlasphemy
  + ~!Global("MRResolutionTeasedAlready","GLOBAL",1)~ + ~Oh, 'incest' is such a strong word... let's call it 'deep relationship between siblings', eh? (chuckle.)~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolution3Joke
  ++ ~We may be Bhaalspawn, but that doesn't mean we are 'regular' siblings, Imoen. Our mothers weren't the same, neither were our families. Only our father is common to both of us; and he wasn't really a 'father', but a god.~ + MRResolutionBhaalThink
  ++ ~Imoen, that's simply not true. We are Bhaalspawn, yes; however, you don't seem to know the way Bhaal planted his seeds.~ + MRResolutionBhaalseed
  + ~Gender(Player1,MALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHetero
  + ~Gender(Player1,FEMALE)~ + ~Maybe... maybe you are right, Imoen. We are Bhaalspawn... your words have wisdom. Let us stay friends...~ + MRResolution-FriendsHomo
END

IF ~~ MRResolution-FriendsHetero
  SAY ~You see? Let's stay as friends, <CHARNAME> - stay brother and sister.  We've been happy with that until now... why change it?  Let's just forget about what happened as if it was a- a dream. Just a dream.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~	EXIT
END

IF ~~ MRResolutionBlasphemy
  SAY ~Are you telling me that you... you don't care? You don't care at all about that?~
  ++ ~Haven't you stopped to ponder why you think it's wrong, Imoen? Well, I know why I feel it's right: because I need you, Imoen, I need you so much... That's reason enough for me to be right, and you won't find a reason as strong as that one for this to be wrong.~ + MRResolutionBhaalThink
  ++ ~Imoen, you can say it was incest if you want, I can even agree with you on that. But it was no mistake, we did nothing wrong... if love is 'something wrong', then... I can't imagine what can be right.~ + MRResolutionLoveRight
  ++ ~That's it.~ + MRResolutionBlasphemy2
END

IF ~~ MRResolutionBhaalThink
  SAY ~(Imoen looks at you in silence, considering your words. Finally, she speaks.)~
  IF ~~ + MRResolutionBhaalThink2
END

IF ~~ MRResolutionBlasphemy2
  SAY ~(Imoen's frown deepens) Well I DO care about that! It's WRONG and it's NASTY, <CHARNAME>! I'm not some gutter slut who can't think past her thighs!~ 
  = ~I guess we just don't see this the same way, <CHARNAME>. It's obvious to me that what we did was a great mistake in our lives.~ 
  = ~We've been happy with the relationship we've had all these years... why go further and risk ruining it?~ 
  = ~Let's stay as friends, <CHARNAME>. Let's just forget about what happened as if it was a... bad dream...~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolutionBhaalseed
  SAY ~(She looks at you quizzically. She didn't expect you'd know about such things, and beckons you silently to go on.)~
  + ~CheckStatGT(Player1,13,WIS) !Global("MRILoveYou","GLOBAL",1)~ + ~Basically, Bhaal possessed a male vessel so as to impregnate a female; it didn't matter what race either of them were. So the male vessel was actually the true father of the child that was 'created' which means that *technically*, we were born from different fathers.~ + MRResolutionBhaalseedWise
  + ~Global("MRILoveYou","GLOBAL",1)~ + ~Basically, Bhaal possessed a male vessel so as to impregnate a female; it didn't matter what race either of them were. So the male vessel was actually the true father of the child that was 'created' which means that *technically*, we were born from different fathers.~ + MRResolutionBhaalseedWise2
  ++ ~Basically, Bhaal created a 'morotron' from the essence of the bread crumbs that the trolls that feast under his throne drop. 'Morotron' is the arcane name for 'Son of Troll God', or more popularly known as 'Child of Bhaal'; It is well known by the wise famous Were-Bunny from the city of Porryplopy that Morotrons had no certain mother, father, or even uncles...~ + MRResolutionBhaalseedStupid
  ++ ~Ummm... actually, neither do I but... well, what I'm saying is that I don't think that bears much importance!~ + MRResolutionBlasphemy
END

IF ~~ MRResolutionBhaalseedWise2
  SAY ~(Imoen skeptically raises an eyebrow) How'd'ya know all that?~
  ++ ~I didn't skip as many lessons as you did back in Candlekeep, Imoen. I actually enjoyed exploring the books in the library. I remember reading it there.~ + MRResolutionBhaalseedWise3
  ++ ~I don't really remember where I read it. Don't worry about that, just know that it is true, I am positive.~ + MRResolutionBhaalseedWise3
  ++ ~It doesn't really matter... our love is all that matters to me right now.~ + MRResolutionBhaalseedWise3
END

IF ~~ MRResolutionBhaalseedWise3
  SAY ~(Imoen keeps silent, thinking about what you have just said. After a while she mutters to herself.)~
  IF ~~ + MRResolutionLoveRight
END

IF ~~ MRResolutionBhaalseedStupid
  SAY ~(Imoen's eyes have been opening wider and wider while you tell her all of this. She almost thinks that you are mocking her, but your very serious attitude makes her doubt this... if only slightly.)~ 
  = ~What the... are you really serious?  Have you lost your mind?? That sounds like a whole load of troll turds!~
  ++ ~I didn't skip as many lessons as you did back in Candlekeep, Imoen. I actually enjoyed exploring the books in the library. I remember reading it there.~ + MRResolutionBhaalseedStupidRead
  ++ ~Well I actually invented it all. I sounded quite convincing, didn't I? (Beam a smile at her.)~ + MRResolutionBhaalseedStupid2
  ++ ~That doesn't matter, Imoen. Our relationship is all that matters right now.~ + MRResolutionHard
END


IF ~~ MRResolutionBhaalseedWise
  SAY ~(Imoen skeptically raises an eyebrow) How'd'ya know all that?~
  ++ ~I didn't skip as many lessons as you did back in Candlekeep, Imoen. I actually enjoyed exploring the books in the library. I remember reading it there.~ + MRResolutionHard
  ++ ~I don't really remember where I read it. Don't worry about that, just know that it is true, I am positive.~ + MRResolutionHard
  ++ ~Well I actually invented it all. I sounded quite convincing, didn't I? (Beam a smile at her.)~ + MRResolutionBhaalThinkNonsense
  ++ ~That doesn't matter, Imoen. Our relationship is all that matters right now.~ + MRResolutionHard
END


IF ~~ MRResolutionBhaalseedStupidRead
  SAY ~Yeah, well, of course, of course you read that in Candlekeep. You obviously didn't make it up just now - how could I even think that? (She rolls her eyes.)~ 
  = ~I'm not stupid, <CHARNAME>! It's obvious you aren't taking this seriously at all. That's why I love you as a friend, <CHARNAME>... as a <PRO_BROTHERSISTER>... but not as... y'know...~ 
  = ~Let's try to forget about what happened between us and just go back to being like we always were. I know, and you will too sooner or later, it's the best thing to do.~ 
  = ~And by the way, *you* skipped at least as many lessons as me!~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolutionBhaalseedStupid2
  SAY ~Actually, NO! That's the craziest thing I've ever heard from you! And you've said *a lot* of crazy things, you dork. (She can't help but smile.)~ 
  = ~You see? That's why I love you as a friend, <CHARNAME>... as a <PRO_BROTHERSISTER>... but not as... y'know...~ 
  = ~Let's just forget about what happened and go back to acting like we always did. I think it's the best thing to do... and someday you'll realize it, too.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolutionHard
  SAY ~(Imoen looks distressed by your last sentence. You are making this much more difficult for her than she ever thought possible.)~
  =
  ~(She bites her lower lip with a worried expression on her face. She feels she is losing the inner battle she has been fighting against her sentiments...)~
  IF ~~ + MRResolutionBhaalThink2
END

IF ~~ MRResolutionBhaalThinkNonsense
  SAY ~(Imoen doesn't find that funny) You're not taking this seriously, <CHARNAME>. If you're not really worried about losing my love-~
   + ~CheckStatGT(Player1,8,INT)~ + ~Ah, so you admit you love me, huh?~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionBhaalThinkLove
  ++ ~No, no Imoen! It was only a joke, look I... I couldn't live without you... I always wanted this to happen, Imoen...~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionAlways
  ++ ~I was only joking, Imoen. You are right after all... we just can't be together.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionEnd
  ++ ~You're right, it doesn't worry me at all. I prefer to pay a five-gold-piece whore for that kind of affection.~ DO ~SetGlobal("MRResolutionTeasedAlready","GLOBAL",1)~ + MRResolutionWhore
END

IF ~~ MRResolutionEnd
  SAY ~You see? That's why I love you as a friend, <CHARNAME>... as a <PRO_BROTHERSISTER>... but not as... y'know...~ 
  = ~Let's just forget about what happened and go back to acting like we always did.  It's the best thing to do - and sooner or later, you'll realize that too.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolutionBhaalThinkLove
  SAY ~N- no I was just-~
  + ~CheckStatGT(Player1,16,INT)~ + ~(You change your expression completely, talking absolutely seriously now. The fear of losing her clenches your heart) Imoen, please listen to me... you have grown to become the first of my worries, my thoughts, my joys. You are my life, and what I feel for you is beyond words. Losing you would be more devastating than it was losing my soul, for *you* are the spirit that endows me with all I have ever desired.~ + MRResolutionHard
  + ~!CheckStatGT(Player1,16,INT) CheckStatGT(Player1,7,INT)~ + ~(You become completely serious now, you can't risk losing her) Listen to me Imoen, please. I don't want to lose you. You're the happiness and joy in my life; you're the only thing I can think about lately. Losing you would be... worse than losing my soul. I think I could live without my soul, but I can't live without you.~ + MRResolutionHard
  ++ ~Imoen, I love you, and nothing you can say or do will change that.~ + MRResolution2-Love
  ++ ~I was only joking, Imoen. You are right after all... we just can't be together.~ + MRResolutionEnd
  ++ ~Forget about it. I find you weaker with every word you say; you are just a whore with which I did what I pleased, and nothing more.~ + MRResolutionWhore
END

IF ~~ MRResolutionWhore
  SAY ~(Imoen narrows her eyes; her sadness and disappointment turning into absolute loathing.)~ 
  = ~Well that says it all, <CHARNAME>. (With these words, she turns around and walks away from you.)~ 
  = ~(Despite her anger you can see that you have shattered her heart to smithereens.)~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-15)~ EXIT
END

IF ~~ MRResolution-FriendsHomo
  SAY ~You see? Let's remain friends, let's remain sisters, <CHARNAME>. We've been happy with that until now... why change it? Let's just forget about what happened as if it was a- a dream.  Just a dream.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolutionBhaalThink2
  SAY ~And... it's not just that... y'know, we were raised like siblings.  I've always considered you a close friend, someone I'd never part with...~ 
  = ~Someone to admire, to worry about... but... but never... I...~
  = ~(You see Imoen can't find words to go on.)~
  ++ ~Imoen... I'd have never expected we would come to this point... but since I had those dreams, every day I see you more like a woman, and less like my little sister.~ + MRResolutionLoveRight2
  ++ ~(You wait patiently to let her finish expressing her feelings when she is able to.)~ + MRResolutionLoveRightDelay
  ++ ~All I know is that I love you, Imoen. Everything else means nothing.~ + MRResolution2-Love
  ++ ~All I know is that this is taking much more time than I thought it would, so I say we just forget about everything and just be friends.~ + MRResolutionLoveRightEnd
END

IF ~~ MRResolutionLoveRightEnd
  SAY ~(Imoen looks a little confused, but finally nods in agreement) It's what I was trying to say, <CHARNAME>...~
  =
  ~Let's stay like we've always been, alright?~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END
 
IF ~~ MRResolutionLoveRightDelay
  SAY ~(Imoen nervously glances at you, expecting you to say something. When she understands you are waiting for her to finish, she says the first thing that comes to her mind) I, uh... I don't know why that changed in the first place, <CHARNAME>... but the fact of the matter is that we've come to this...~
  ++ ~Imoen... I'd have never expected we would come to this point... but since I had those dreams, every day I see you more like a woman, and less like my little sister.~ + MRResolutionLoveRight2
  ++ ~All I know is that I love you, Imoen. Everything else means nothing.~ + MRResolution2-Love
  ++ ~All I know is that this is taking much more time than I thought it would, so I say we just forget about everything and just be friends.~ + MRResolutionLoveRightEnd
END

IF ~~ MRResolutionLoveRight2
  SAY ~...~
  ++ ~And when we rescued you, I couldn't get out of my mind the smoothness of your skin... the beauty of your curves, the warmth of your body...~ + MRResolutionLoveRightBody
  ++ ~And when we rescued you, it became harder and harder to ignore the warmth your words brought to my heart... the happiness your presence granted me... and not only because you were my friend but... because I felt there was something *more*.~ + MRResolutionLoveRightSoul
END

IF ~~ MRResolutionLoveRightSoul
  SAY ~(Imoen raises her eyes from the ground to meet yours. You watch mesmerized as the light reflects in her tearful eyes, until she looks away again.)~
  =
  ~<CHARNAME> I... I felt the same way.  You eased my worries. The bad memories just faded away when I was with you...~
  ++ ~Then why torture us both, Imoen?  So what if we are remote siblings, what if we both are Bhaalspawn?  It doesn't matter. We are not hurting anyone by loving each other.~ + MRResolutionLoveRight3
  ++ ~I think we have gone too far with this, Imoen. Now that I'm thinking about it, I guess you were right from the beginning. Let's forget about everything and just be friends.~ + MRResolutionLoveRightEnd
END

IF ~~ MRResolutionLoveRightBody
  SAY ~(Somehow you have managed to hurt her feelings by saying that) <CHARNAME>, I think we went too far...~
  =
  ~Let's forget about everything that has happened and let's just be friends... It's the best thing to do...~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRResolutionLoveRight3
  SAY ~(She looks at you helplessly, the internal torment evident in her eyes. Her sense of reason is battling within herself against her incredibly strong feelings for you...)~
  =
  ~(But now, she is finally realizing... reason lost the battle long ago. She stands before you, staring at the ground, afraid to lift her eyes lest they meet yours.)~
  =
  ~<CHARNAME>... I... I don't...~
  + ~Race(Player1,HUMAN)~ + ~(Approach Imoen; embrace her, kiss her... love her.)~ + MRResolutionLoveRightHuman
  + ~!Race(Player1,HUMAN)~ + ~(Approach Imoen; embrace her, kiss her... love her.)~ + MRResolutionLoveRightNotHuman
  ++ ~Umm... well thinking on it, because we *are* Bhaalspawn... after all, you are right. It just wouldn't work.~ + MRResolutionLoveRightEnd
END

IF ~~ MRResolutionLoveRightNotHuman
  SAY ~(Your gentle embrace is rewarded by the softness of her skin, the warmth and yearning of her body. You start to kiss her like you did in her dreams: first her forehead, then her eyelids, her cheeks and nose...)~ [ MRImRom6 ]  
  = ~(You reach her lips, and your kiss isn't rejected at all. Imoen can no longer deny her feelings for you and gives in to her passion. She embraces you tightly, desperately, you almost can't breathe... but still it's the sweetest feeling you have ever experienced.)~ 
  = ~(Your fingers entangle within her hair; her hands gently run up and down your back.  Shivers of pleasure tingle along your spine; you are united in a burst of passion and mutual longing that cannot be expressed with words.  Between kiss after endless kiss, you forget about everything.)~ 
  = ~(It is as if nothing else exists. Time seems to stand still as everything that surrounds you shrinks to nothingness... all of your worries disappear, leaving only human and <PRO_RACE> united as one. Just Imoen and <CHARNAME>.)~ 
  = ~(Slowly, painfully, you two come back to real world. Still embraced, she looks into your eyes with a look that means a thousand words. Wwithout saying anything, she rests her head on you...)~ = ~(... and begins to cry. You feel her tremble in your arms, her sobs coming from the depths of her soul to your ears.)~
  ++ ~(Embrace her tighter while you kiss her head.)~ + MRResolution11
  ++ ~Imoen...? Did I do something wrong...?~ + MRResolution11
  ++ ~Oh, not again! What now??~ + MRResolution11
END

IF ~~ MRResolutionLoveRightHuman
  SAY ~(Your gentle embrace is rewarded by the softness of her skin, the warmth and yearning of her body. You start to kiss her like you did in her dreams: first her forehead, then her eyelids, her cheeks and nose...)~ [ MRImRom6 ]  
  = ~(You reach her lips, and your kiss isn't rejected at all. Imoen can no longer deny her feelings for you and gives in to her passion. She embraces you tightly, desperately, you almost can't breathe... but still it's the sweetest feeling you have ever experienced.)~ 
  = ~(Your fingers entangle within her hair; her hands gently run up and down your back.  Shivers of pleasure tingle along your spine; you are united in a burst of passion and mutual longing that cannot be expressed with words.  Between kiss after endless kiss, you forget about everything.)~ 
  = ~(It is as if nothing else exists. Time seems to stand still as everything that surrounds you shrinks to nothingness... all of your worries disappear, leaving only two people united as one. Just Imoen and <CHARNAME>.)~ 
  = ~(Slowly, painfully, you two come back to real world. Still embraced, she looks into your eyes with a look that means a thousand words. Wwithout saying anything, she rests her head on you...)~ = ~(... and begins to cry. You feel her tremble in your arms, her sobs coming from the depths of her soul to your ears.)~
  ++ ~(embrace her tighter while you kiss her head.)~ + MRResolution11
  ++ ~Imoen...? Did I do something wrong...?~ + MRResolution11
  ++ ~Oh, not again! What now??~ + MRResolution11
END

IF ~~ MRResolution11
  SAY ~(She raises her head to look at you. Behind a veil of tears, you perceive an emotion she has not shown in a very long time...)~
  = ~(Happiness.)~ 
  = ~(She smiles at you, not cheerfully or lovingly but... knowingly.)~ 
  = ~(She softly pushes you away) We are one, <CHARNAME>. Let's get our soul back from Irenicus.~ 
  = ~(After this odd statement, she turns around and leaves your side.)~ 
  = ~(You can do nothing but agree with her.)~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",2)
        IncrementGlobal("MRKinCounter","GLOBAL",11)
	SetGlobal("MRRomanceResolved","GLOBAL",1) // *** Used to be WeAreTogetherAtLastMR
	RealSetGlobalTimer("MRLoveTimer","GLOBAL",400) ~ EXIT  //*** Used to be LUVIMOENMR
END

IF ~~ RJImoenFlirtSmile1
   SAY ~(She smiles back, a big, earnest grin, as though to give you an example to live by.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtSmile2
   SAY ~(She rests her hands on your sides and looks at you. Her eyes are brimming with affection.) You know that I will never leave you, do you not, my love? I don't care what anyone says about us, or tries to do to us. We belong together, <CHARNAME>.~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHug1
   SAY ~(Imoen carefully rests her head on your shoulder as you hold her near. Her closeness makes you feel quite warm indeed.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHug2
   SAY ~(Just before letting go, she leans in and kisses you gently on the neck. You see her lips playing in a tight, gleeful smile as you part.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHug3
   SAY ~(You hold Imoen low, at the small of her back, where your hands and forearms fit into the curve at her waistline and the base of her spine in a very pleasing way. She runs her hands up your back in response, gripping on to your shoulders and relaxing into your embrace.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHug4
   SAY ~(You stand there together for some time, Imoen occasionally shifting slightly to put more of her body in contact with yours. When the embrace is over, Imoen holds your right hand, mouths a few words that you can't quite hear, and kisses you softly on the cheek.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHug5
   SAY ~(Imoen murmurs with pleasure, squeezes you as hard as she can, and meets you nose to nose.) I love you, <CHARNAME>. You are the sweetest man I have ever met.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtCheek1
   SAY ~(The skin on Imoen's face is cool and firm under your lips, and her cheek bends in a smile as you hold her close.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtCheek2
   SAY ~(Imoen takes your hand and squeezes.) I feel better now, <CHARNAME>.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLips1
   SAY ~(After the kiss is over, you hold her a moment longer, just looking into her large, trusting eyes, and drinking of her beauty.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLips2
   SAY ~(Imoen's mouth welcomes yours, but you notice that she refuses to close her eyes as you kiss.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLips3
   SAY ~(Her moist lips part to greet you, and you run your hands through her hair as she grips your hips firmly, almost refusing to let go when the moment is over.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHand1
   SAY ~Oh! Your hands are always so warm, <CHARNAME>! (She walks with you for a time, happily swinging your linked hands forward and back.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHand2
   SAY ~(Imoen wraps her free hand over yours, squeezing your hand between hers tightly. She takes a deep, loud, chest-puffing breath and sighs quite contentedly.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtHand3
   SAY ~I love the way you touch me, <CHARNAME>. You always know how to make me feel right when things... get dark.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtRub1
   SAY ~(Even through all of your clothes and gear, feeling Imoen's body against yours gives you an incredible thrill.)~
   = ~(Giggling a bit, she timidly gives you a hip-check, then hurries a few steps away, looking coyly back at you.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtRub2
   SAY ~Watch where you're walking, <CHARNAME>!~
   = ~(Then, understanding dawns on her face.) Ohhh... <CHARNAME>, that was very... naughty.~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLove1
   SAY ~I will always love you, <CHARNAME>. Always.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLove2
   SAY ~I love you too, with all my heart.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLove3
   SAY ~(Imoen beams and claps her hands together) And I love you as well, <CHARNAME>.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtFirm1
   SAY ~(Imoen settles comfortably into your arms, as though she was always meant to be there. Your kiss is warm and long, and shares much that words cannot express.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtFirm2
   SAY ~(Imoen shows great trust in you, letting you support much of her weight. Her lips offer just enough resistance to excite you, but you are clearly in command, and you make very sure that Imoen understands just how much you love her as companion and woman, with a deep, intimate embrace.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtFirm3
   SAY ~(You embrace Imoen, holding her close and showing her all the passion she stirs within you. Her tongue inexpertly plays against yours, which only encourages you to press on.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtBack1
   SAY ~Mmmmm... your touch is heavenly, my love.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtBack2
   SAY ~(Imoen arches her back into your ministrations... you would swear she was trying to provoke you.) Mmmmmm... that's so very nice, my love.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtAsk1
   SAY ~Okay, <CHARNAME>... (She blushes a little, but reaches up and works her hands along your neck and back. Her touch is so light that it does your muscles little good, but the tenderness of it might do a thing or two for your soul.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtAsk2
   SAY ~(Imoen smiles, and begins to work your shoulders and back, and you groan in encouragement and support. After a time, she seems to forget herself and begins to play with the hair on the back of your neck before shaking herself back to reality.)~
   = ~Is that better, my love?~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLick1
   SAY ~(Imoen giggles and squirms, grasping at your clothing for support.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLick2
   SAY ~(She shivers and her knees give slightly) Ohhhhhhhh...~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtLick3
   SAY ~(Imoen squeaks, then turns your head with her hand and kisses you.) You are very silly, my love.~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtStroke1
   SAY ~(She holds your hand against her face and nuzzles it gently.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtStroke2
   SAY ~(She holds your hand against her face and nuzzles it gently.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtStroke3
   SAY ~(Imoen's eyes close, and her lashes flutter as you caress her soft skin, and trace her features.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtStroke4
   SAY ~(You seem to have caught Imoen feeling ticklish. She smiles and tries to hold still while you touch her, but shakes and stomps her feet trying to maintain composure. She eventually squeals and almost lands on her backside trying to get away.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtCaress1
   SAY ~(Even through her clothing and gear, running your hands along each curve of Imoen's body stirs the strongest passions within you. Her supple build welcomes your attention, and Imoen wraps her arms around your waist in silent approval.)~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtCaress2
   SAY ~Oh, <CHARNAME>, please, not now... I won't be able to concentrate at all!~ 
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtCaress3
   SAY ~(Interposing one leg between hers, you start with her narrow shoulders, running your hands down her arms, slightly slick with sweat from the day's exertions.)~
   = ~(Imoen is briefly hypnotized by the attention but snaps very much back into reality when you trace the curves of her breasts, and as your hands wander down her stomach, she gently detaches from you and holds your hands in hers.) Later, my love... all of me will be here for you later.~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtNeed1
   SAY ~(She whirls quickly, caught off-guard by your proposition, and the spray of her hair across her face only makes you want her more.)~
   = ~Of course, my love... that is what our nights together are meant for!~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtNeed2
   SAY ~(Imoen smiles demurely, and bites her lower lip gently. Her white, even teeth glisten tantalizingly.)~
   = ~How did you know I was going to say that, <CHARNAME>?~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtNeed3
   SAY ~I would love to lay with you tonight. There is still much we have not... tried together.~
   = ~(Imoen takes your hand and swings them together at her side, giving you a kiss on the cheek as a deposit for later.)~
   IF ~~ EXIT
END

END

