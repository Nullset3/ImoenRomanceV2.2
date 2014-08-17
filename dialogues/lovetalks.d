//** Edit Imoen's comment about looking weak, to start the romance **//
REPLACE IMOEN2J
IF ~~ THEN BEGIN 0 // from:
  SAY #49240 /* ~Whoa, stop for a bit. How are you feeling? You looked really sick for a moment there.~ */
  IF ~~ THEN REPLY #49875 /* ~It's nothing. I'm just a little dizzy, that's all. It's already passed.~ */ DO ~SetGlobal("BeginRomance","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY #49876 /* ~i don't know. Have you felt any ill effects since the spell they cast on you?~ */ DO ~SetGlobal("BeginRomance","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY #49877 /* ~Leave me alone. I'll be fine.~ */ DO ~SetGlobal("BeginRomance","GLOBAL",1)~ GOTO 3
END
END

//** Love Talk 1 - Rescue from Spellhold **//
APPEND IMOEN2J

IF ~Global("MRLoveTalk","GLOBAL",2) Global("ImoenRomanceActive","GLOBAL",1)~ THEN BEGIN MRLoveTalk1
  SAY ~You really took your time coming to rescue me, didn't you?~ [ MRImRom1]
  IF ~~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk1-1
END

IF ~~ MRLoveTalk1-1
  SAY ~Don't misunderstand me, <CHARNAME> - I am incredibly grateful that you're here.  It just...  well...  every hour with that madman was an hour too long.~
  ++ ~It hasn't been THAT long, Imoen.~ + MRLoveTalk1-1Days
  ++ ~it wasn't easy getting here.  I didn't even know where to start looking!  But 20,000 gold loosens a lot of lips...~ + MRLoveTalk1-1Gold
  ++ ~It's a long story and we don't really have much time.  We'll talk about it later, alright?~ + MRLoveTalk1-1Busy
  ++ ~Rescue you?  I have a score to settle with Irenicus - nothing more.  It was a happy accident that I could save you on the way.~ + MRLoveTalk1-1Grudge
  ++ ~If you're so grateful, would you mind shutting up?  Just cast when I say 'cast' and we'll be fine.~ + MRLoveTalk1-1Tool
END

IF ~~ MRLoveTalk1-1Days
  SAY ~It's been <GAMEDAY> days, exactly.  Believe me, I counted every one of them.~
  IF ~!GlobalTimerExpired("MRSpellholdCountdown","GLOBAL")~ + MRLoveTalk1-1DaysShort
  IF ~GlobalTimerExpired("MRSpellholdCountdown","GLOBAL")~ + MRLoveTalk1-1DaysLong
END

IF ~~ MRLoveTalk1-1DaysShort
  SAY ~I guess... I guess you're right.  I know it couldn't've been easy to find me.  Nothing's ever easy with Irenicus.~
  ++ ~Hey, I'm here, aren't I?  Now just cast when I say 'cast' and we'll be fine.~ + MRLoveTalk1-1Tool
  ++ ~No, it wasn't easy.  I didn't even know where to start looking!  But 20,000 gold loosens a lot of lips...~ + MRLoveTalk1-1Gold
  ++ ~It's a long story and we don't really have much time.  We'll talk about it later, alright?~ + MRLoveTalk1-1Busy
  ++ ~Speaking of Irenicus... I have a score to settle with him.  It was a happy accident that I could save you on the way.~ + MRLoveTalk1-1Grudge
END

IF ~~ MRLoveTalk1-1DaysLong
  SAY ~And if you think that that's 'not that long', then you have a seriously warped view of time.~
  ++ ~Well, it wasn't easy to find you.  I didn't even know where to start looking!  But 20,000 gold loosens a lot of lips...~ + MRLoveTalk1-1Gold
  ++ ~It's a long story and we don't really have much time.  We'll talk about it later, alright?~ + MRLoveTalk1-1Busy
  ++ ~I have a score to settle with Irenicus.  It was a happy accident that I could save you on the way.~ + MRLoveTalk1-1Grudge
  ++ ~Don't jump down my throat.  I'm here, aren't I?  Just cast when I say 'cast' and we'll be fine.~ + MRLoveTalk1-1Tool
END

IF ~~ MRLoveTalk1-1Grudge
  SAY ~An... an accident?  A 'happy accident'?~
  =
  ~(At first she sounds confused, but it quickly turns to rage as she realizes what you mean)~
  =
  ~I sat in that cell praying every day that you'd come find me - hoping, KNOWING that you'd come for me - because we have ALWAYS been there for each other, through thick and thin, no matter what!~
  =
  ~And you're gonna stand there and tell me to my face that the only reason I'm alive right now is because it was a 'happy accident'??  That if Irenicus had been anywhere else but Spellhold, you'd've just left me to ROT??~
  ++ ~Yup, that's pretty much it.~ + MRLoveTalk1-1Grudge2
  ++ ~Well, I wouldn't put it THAT way...~ + MRLoveTalk1-1Grudge3
  ++ ~You're important, Im, just not AS important.~ + MRLoveTalk1-1Grudge2
END

IF ~~ MRLoveTalk1-1Grudge2
  SAY ~Well y'know what?  FUCK YOU!  Good luck with Irenicus - it'll be a 'happy accident' if you manage to survive!~
  IF ~~ DO ~LeaveParty()
            EscapeArea()
            SetGlobal("ImoenRomanceActive","GLOBAL",3)
            IncrementGlobal("MRKinCounter","GLOBAL",-4)
            SetGlobal("MRConsequences","GLOBAL",2)~ EXIT
END

IF ~~ MRLoveTalk1-1Grudge3
  SAY ~No?  I sure would!~
  IF ~~ + MRLoveTalk1-1Grudge2
END

IF ~~ MRLoveTalk1-1Tool
  SAY ~So... I'm nothing more than a tool to you?  All those things we did together when we were younger - none of that matters to you?~
  =
  ~You've changed, <CHARNAME>...  This 'Bhaal' stuff has warped you.~
  =
  ~I'll still help you, but I don't think I can be your friend... not anymore.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-2)~ EXIT
END

IF ~~ MRLoveTalk1-1Busy
  SAY ~... sure.  Sure, okay.  Sorry I bothered you.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk1-1Gold
  SAY ~Holy Waukeen!  Twenty thousand gold pieces?  Where'd you ever get that kinda cash?~
  + ~!Alignment(Player1,LAWFUL_EVIL)
  !Alignment(Player1,NEUTRAL_EVIL)
  !Alignment(Player1,CHAOTIC_EVIL)~ + ~cleansed a stronghold from a plague of trolls, performed good deeds for the local church, purified some defiled temple... those sorts of things.~ + MRLoveTalk1-1GoldGood
  + ~OR(3)
  Alignment(Player1,LAWFUL_EVIL)
  Alignment(Player1,NEUTRAL_EVIL)
  Alignment(Player1,CHAOTIC_EVIL)~ + ~(Lie) Cleansed a stronghold from a plague of trolls, performed good deeds for the local church, purified some defiled temple... those sorts of things.~ + MRLoveTalk1-1GoldLie
  + ~!Alignment(Player1,LAWFUL_EVIL)
  !Alignment(Player1,NEUTRAL_EVIL)
  !Alignment(Player1,CHAOTIC_EVIL)~ + ~Helped the Harpers administer justice, aided the druids in maintaining balance in a regional grove, re-established the natural order in the forest for some local government... those sorts of things.~ + MRLoveTalk1-1GoldNeu
  + ~OR(3)
  Alignment(Player1,LAWFUL_EVIL)
  Alignment(Player1,NEUTRAL_EVIL)
  Alignment(Player1,CHAOTIC_EVIL)~ + ~(Lie) Helped the Harpers administer justice, aided the druids in maintaining balance in a regional grove, re-established the natural order in the forest for some local government... those sorts of things.~ + MRLoveTalk1-1GoldLie
  ++ ~Let's see... I killed and robbed some people, slaughtered and pillaged entire villages, did the dirty work for those who pay well enough - those sorts of things.~+ MRLoveTalk1-1GoldEvil
  ++ ~C'mon, you don't need to concern yourself about those things, just know that I got all of it.~ + MRLoveTalk1-1Spell
  ++ ~It's none of your concern. Shut up and mind your own business.~ + MRLoveTalk1-1Spell
END

IF ~~ MRLoveTalk1-1GoldLie
  SAY ~Really?  That doesn't sound much like you... But I guess it musta paid well, huh?~
  IF ~~ + MRLoveTalk1-1Spell
END

IF ~~ MRLoveTalk1-1GoldEvil
  SAY ~Knowing you did that to raise money to save me is quite... disturbing.~
  ++ ~It was necessary.  *You* are far more important than 'laws' and 'morals'.~ + MRLoveTalk1-1Cor
  ++ ~Hey, I do what I love!~ + MRLoveTalk1-1GoldEvil1
  ++ ~If you can't handle it, leave.  I can find another mage - and probably a better one.~ + MRLoveTalk1-1Tool
END

IF ~~ MRLoveTalk1-1GoldEvil1
  SAY ~(She purses her lips in distaste as she regards you)  You've changed, <CHARNAME>...  This 'Bhaal' stuff has warped you.~
  =
  ~I'll still help you, but I don't think I can be your friend... not anymore.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-2)~ EXIT
END

IF ~~ MRLoveTalk1-1Cor
  SAY ~I- but laws-  ... well huh.  I guess I can't argue with that.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1) IncrementGlobal("MRCorCounter","GLOBAL",1)~ + MRLoveTalk1-1Spell
END

IF ~~ MRLoveTalk1-1GoldNeu
  SAY ~Haha, always trying to keep that 'balance' thing... that's good to hear, <CHARNAME>.~
  IF ~~ + MRLoveTalk1-1Spell
END

IF ~~ MRLoveTalk1-1GoldGood
  SAY ~Hehe, nice to hear that you're just as much a goody-two-shoes as ever.~
  IF ~~ + MRLoveTalk1-1Spell
END

IF ~~ MRLoveTalk1-1Spell
  SAY ~But... how did you get into Spellhold then?~
  + ~InParty("Minsc")~ + ~Minsc did the trick. He... uh... 'convinced' the Pirate Lord that it was better for everyone if he granted us some accommodations here...~ + MRLoveTalk1-1SpellMinsc
  + ~!InParty("Minsc")~ + ~I...ah... acted completely nuts so the Pirate Lord would send us here.~ + MRLoveTalk1-1SpellCrazy
  ++ ~the Cowled Wizard in charge of the island had a ward stone to open the doors.  I... borrowed it.~ + MRLoveTalk1-1SpellWard
  ++ ~Umm... I think it's better if you didn't know...~ + MRLoveTalk1-1SpellDeny
  ++ ~Well, you know, I'd like to tell you but we really don't have time to spare.~ + MRLoveTalk1-1Thanks
END

IF ~~ MRLoveTalk1-1SpellDeny
  SAY ~Huh...okay, that sounds like it was either really brave, really stupid, or really bloody.~
  =
  ~Oh well, you made it in.  That's what matters, I guess...~
  IF ~~ + MRLoveTalk1-1Thanks
END

IF ~~ MRLoveTalk1-1SpellMinsc
  SAY ~Hah!  Yeah, I can imagine!  I'm sure he showed him his 'Miniature Giant Space Hamster', right?~
  IF ~~ EXTERN MINSCJ MRLoveTalk1-1SpellMinsc
END

IF ~~ MRLoveTalk1-1SpellMinsc2
  SAY ~Of course, Minsc, of course - your little hamster is much more clever than that dumb Pirate Lord!~
  IF ~~ + MRLoveTalk1-1Thanks
END

IF ~~ MRLoveTalk1-1SpellCrazy
  SAY ~Hahahah, I'd have just *loved* to see ya in that situation!~
  =
  ~Heheh, saying something like 'Mister Mean Pirate, my mother tells me I should always turn things over in my mind, but I don't know how to stand on my head! People tell me I'm illiterate but I know who my parents are!'~
  IF ~~ + MRLoveTalk1-1Thanks
END

IF ~~ MRLoveTalk1-1SpellWard
  SAY ~'Borrowed' it, huh?  Somehow I doubt you'll be giving it back anytime soon, hehe.~
  IF ~~ + MRLoveTalk1-1Thanks
END

IF ~~ MRLoveTalk1-1Thanks
  SAY ~<CHARNAME>...~ [ MRImRom5 ]
  =
  ~(Her expression has changed from amusement to a mixture of affection, surprise, and gratitude.)~
  =
  ~You know... I can't believe you did all that just to rescue me.  I knew you cared for me but... all this?~
  =
  ~I... I didn't know I was so... appreciated.~
  ++ ~i couldn't stand the idea of you being imprisoned somewhere far away from me, Imoen. You mean... too much to me.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk1-1ThanksLove
  ++ ~We've known each other since we were children, it's the least I could do!~ + MRLoveTalk1-1ThanksFriends
  ++ ~Your abilities were too valuable to lose, Imoen.~ + MRLoveTalk1-1ThanksTool
  ++ ~I came for Irenicus, fool. I hunger only for revenge, and I... shall... have it!!~ + MRLoveTalk1-1ThanksRevenge
  ++ ~You belong to me, and I don't take kindly having my belongings stolen. Hmmm... maybe I will have to put a collar on you... huh? Where are my slippers? Bring them or be punished, pet!~ + MRLoveTalk1-1ThanksPet
END

IF ~~ MRLoveTalk1-1ThanksPet
  SAY ~What??  Sometimes I wonder what the Hell goes on inside your head...~
  =
  ~What if I move away from you... slowly?  No harm done, see?  Everyone is happy here...~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-1)~ EXIT
END

IF ~~ MRLoveTalk1-1ThanksRevenge
  SAY ~(The joy in her eyes fades, along with her smile) ...is that so?~
  = ~And... our friendship, it doesn't mean anything to you?  Fine... I hope you achieve your revenge, <CHARNAME>.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk1-1ThanksFriends
  SAY ~True thing indeed! (She giggles) Thanks for rescuing me, <CHARNAME>...~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk1-1ThanksLove
  SAY ~You... you really mean that...? (Imoen's smile is so genuine and her eyes are so bright that you can't help but feel happier yourself.)~
  =
  ~Thank you <CHARNAME>... for coming... and for your kind words. I really needed something like that, y'know?~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",2)~ EXIT
END

IF ~~ MRLoveTalk1-1ThanksTool
  SAY ~(The joy in her eyes fades, along with her smile) Yeah... I'm quite powerful, aren't I?~
  =
  ~Let's go... I'm sure I can serve you well, <PRO_SIRMAAM>... uh, I mean, <CHARNAME>.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",4) IncrementGlobal("MRKinCounter","GLOBAL",-1)~ EXIT
END
END


APPEND MINSCJ
IF ~~ MRLoveTalk1-1SpellMinsc
  SAY ~Yes, Boo convinced him to get in here! Right, Boo?~
  IF ~~ EXTERN IMOEN2J MRLoveTalk1-1SpellMinsc2
END
END

//** Love Talk 2 - Being Siblings **//
APPEND IMOEN2J

IF ~Global("MRLoveTalk","GLOBAL",4) Global("ImoenRomanceActive","GLOBAL",1)~ THEN BEGIN MRLoveTalk2
  SAY ~Y'know... it's kinda weird, finding out I'm your sister.~ [ MRImRom1]
  = ~I mean, sure, we grew up together, bein' the only two kids in Candlekeep and all, but...  I dunno.~
  = ~Does it feel... different, to you?~
  ++ ~I've always considered you to be my little sister, even back then.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk2Sis
  ++ ~Why are you asking me this?  Do I look like I care?~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk2Jerk
  ++ ~Yeah, it's a little weird.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk2Weird
  ++ ~I'm not sure.  I haven't thought about it.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk2Think
  ++ ~even if we're related, it doesn't change our friendship.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk2Friend
END

IF ~~ MRLoveTalk2Jerk
  SAY ~Because it's important to me!  Sheesh, why ya gotta be such an orc about it?~
  ++ ~Well it's not important to me.  Now shove off.~ + MRLoveTalk2Jerk2
  ++ ~Oh... sorry.  Well, if it's important...~ + MRLoveTalk2Reload
  + ~Race(Player1,HALFORC)~ + ~Hey, keep the comments about my parentage to yourself.~ + MRLoveTalk2Orc
END

IF ~~ MRLoveTalk2Orc
  SAY ~Gah.  Sorry!  Fine - why ya gotta be such a TROLL about it?~
  ++ ~Because I couldn't care less. Now shove off.~ + MRLoveTalk2Jerk2
  ++ ~Well, if it's that important...~ + MRLoveTalk2Reload
END

IF ~~ MRLoveTalk2Reload
  SAY ~It is.  Well, it is to me.~
  ++ ~Well, I've always considered you to be my little sister, even back then.~ + MRLoveTalk2Sis
  ++ ~Yeah, it's a little weird.~ + MRLoveTalk2Weird
  ++ ~I haven't really thought about it, honestly.~ + MRLoveTalk2Think
  ++ ~Even if we're related, it doesn't change our friendship.~ + MRLoveTalk2Friend
END

IF ~~ MRLoveTalk2Jerk2
  SAY ~(She glares at you) Someone needs to pull that stick outta your rear before you sit down and impale yourself!~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
  IF ~Race(Player1,HALFORC)~ + MRLoveTalk2Jerk2_1
END

IF ~~ MRLoveTalk2Jerk2_1
  SAY ~... stupid orc.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk2Think
  SAY ~Well, then, start thinking!~
  ++ ~Hrm... Even if we're related, it doesn't change our friendship.~ + MRLoveTalk2Friend
  ++ ~Well, I've always considered you to be my little sister, even back then.~ + MRLoveTalk2Sis
  ++ ~I guess it's a little weird.~ + MRLoveTalk2Weird
END

IF ~~ MRLoveTalk2Weird
  SAY ~'A little weird'?  Finding out that you have a long-lost sister who just also happens to be the child of an evil god?~
  IF ~~ + MRLoveTalk2-2
END

IF ~~ MRLoveTalk2Sis
  SAY ~Heh yeah... you always were kinda the 'big <PRO_BROTHERSISTER>' type, I guess.~
  IF ~~ + MRLoveTalk2-2
END

IF ~~ MRLoveTalk2Friend
  SAY ~It doesn't?  So it doesn't... I dunno, just *feel* different, knowing about our parentage?~
  IF ~~ + MRLoveTalk2-2
END

IF ~~ MRLoveTalk2-2
  SAY ~I dunno why this weirds me out so much.  I guess... well, y'know, when we were younger I never even really thought about our parents.  Gorion was your 'dad' and Puffguts was my 'dad', and as for moms... well...  I guess Phlydia was probably the closest thing we had to that.~
  = ~I knew they weren't *really* our fathers, but I guess I cherished the illusion, y'know?  And now not only has that illusion been broken, now I find out that my dad is the freakin' psycho God of Murder?~
  = ~That's the suckiest thing ever!~
  ++ ~heh.. I know exactly how you feel, trust me!~ + MRLoveTalk2-2Feel
  + ~/*Global("change","AR1514",1)*/~ + ~It doesn't change who you are, Imoen.  It didn't change who I am, did it?~ + MRLoveTalk2-2Same1
/*  + ~!Global("change","AR1514",1)~ + ~It doesn't change who you are, Imoen.  It didn't change who I am, did it?~ + MRLoveTalk2-2Same2 */
/*  + ~!Global("change","AR1514",1)~ + ~It doesn't 'suck' - think of all the gifts it has given us.~ + MRLoveTalk2-2Evil1   */
  + ~/*Global("change","AR1514",1)*/~ + ~It doesn't 'suck' - think of all the gifts it has given us.~ + MRLoveTalk2-2Evil2
END

IF ~~ MRLoveTalk2-2Feel
  SAY ~Heh... yeah I guess you do, don't you?~
  IF ~~ + MRLoveTalk2-3
END

IF ~~ MRLoveTalk2-2Same1
  SAY ~I dunno about that.  Blood-filled nightmares?  Freaky Slayer transformation?  Any of this ring a bell?~
  IF ~~ + MRLoveTalk2-3
END

IF ~~ MRLoveTalk2-2Same2
  SAY ~Well... you do have nightmares sometimes... and you've got those special 'powers' you can do...~
  IF ~~ + MRLoveTalk2-3
END

IF ~~ MRLoveTalk2-2Evil1
  SAY ~'Gifts'??  Y'mean like everyone and their dog aiming to stick our heads on a pike?  Or your freaky messed-up nightmares?~
  =
  ~And did you somehow miss the part where a psychotic wizard kidnapped us, tortured us, and STOLE OUR SOULS??~
  IF ~~ + MRLoveTalk2-2EvilNext
END

IF ~~ MRLoveTalk2-2Evil2
  SAY ~'Gifts'??  Y'mean like everyone and their dog aiming to stick our heads on a pike?  You turning into a slobbering cannibalistic demon?~
  =
  ~Oh, and my favorite: the part where a psychotic wizard kidnapped us, tortured us, and STOLE OUR SOULS??~
  IF ~~ + MRLoveTalk2-2EvilNext
END

IF ~~ MRLoveTalk2-2EvilNext
  SAY ~(She huffs in disbelief)  Nice 'gifts'!~
  ++ ~Okay, well... I hadn't really thought of it like that.~ + MRLoveTalk2-2EvilDumb
  ++ ~You're weak.  You don't understand it at all.~ + MRLoveTalk2-2EvilSnap
  ++ ~We are literally gods among men, Imoen.  Would you trade all this to go back to milking cows and sweeping cobblestones?~ + MRLoveTalk2-2Corrupt
END

IF ~~ MRLoveTalk2-2Corrupt
  SAY ~If it meant not having to constantly expect a noose around my neck - yes!~
  ++ ~Really?  You'd give up all your magic, all the things you've learned, all the experiences you've had... because a few ignorant people fear what they do not understand?  You'll let them dictate your life?~ + MRLoveTalk2-2CorruptSoft
  ++ ~You are a Daughter of Bhaal, Imoen.  Our heritage gives us the strength to destroy anyone who would harm us.~ + MRLoveTalk2-2CorruptHarm
  ++ ~And that is why we must embrace it - because if we do not, we will die.~ + MRLoveTalk2-2CorruptFear
END

IF ~~ MRLoveTalk2-2CorruptSoft
  SAY ~Well- well, no.  I mean- I love magic, you know that, and we've had some great adventures and stuff, but... I don't wanna get killed over it!~
  ++ ~You are a Daughter of Bhaal, Imoen.  Our heritage gives us the strength to destroy anyone who would harm us.~ + MRLoveTalk2-2CorruptHarm
  + ~GlobalGT("MRCorCounter","GLOBAL",2)~ + ~And that is why we must embrace it - because if we do not, we will die.~ + MRLoveTalk2-2CorruptWolf
  + ~!GlobalGT("MRCorCounter","GLOBAL",2)~ + ~And that is why we must embrace it - because if we do not, we will die.~ + MRLoveTalk2-2CorruptFear
  ++ ~Then reject your blood.  Go back to being an ignorant sheep!~ + MRLoveTalk2-2CorruptSheep
END

IF ~~ MRLoveTalk2-2CorruptHarm
  SAY ~But I don't want to harm anyone!  I'm not some bloodthirsty murderer!~
  ++ ~Is it murder to defend yourself from a wolf?  YOU aren't doing anything wrong - you have as much right to live your life as any peasant or paladin.~ DO ~IncrementGlobal("MRCorCounter","GLOBAL",1)~ + MRLoveTalk2-2CorruptWolf
  ++ ~Yes you are.  Deep inside, you are.~ + MRLoveTalk2-2CorruptDeep
  ++ ~Then reject your blood.  Go back to being an ignorant sheep!~ + MRLoveTalk2-2CorruptSheep
END

IF ~~ MRLoveTalk2-2CorruptWolf
  SAY ~I... I...~
  =
  ~I-I wish I could tell you you're wrong!  Gods, I hate it when you make sense -- especially about *this*.~
  =
  ~I don't wanna talk about this anymore.  I really don't.~ 
  IF ~~ EXIT
END

IF ~~ MRLoveTalk2-2CorruptDeep
  SAY ~No, I'm NOT!  I never wanted any of this 'Bhaalspawn' crap - and maybe you think it's awesome to have the Lord of Murder running through your veins, but guess what?  I'M NOT YOU!~
  =
  ~And thank Tyr for that!~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~  EXIT
END

IF ~~ MRLoveTalk2-2CorruptFear
  SAY ~That just means that you're afraid - and I'm *definitely* not gonna give up my soul to Bhaal just 'cause I'm scared sometimes!~
  =
  ~I'll face my fears a better way, thank you very much.~
  =
  ~And I'd rather not talk about this anymore, okay?  Thanks.~ 
  IF ~~ EXIT
END

IF ~~ MRLoveTalk2-2CorruptSheep
  SAY ~Fine!  I will!  I never wanted any of this 'Bhaalspawn' crap - and maybe you think it's awesome to have the Lord of Murder running through your veins, but guess what?  I'M NOT YOU!~
  =
  ~And thank Tyr for that!~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk2-2EvilSnap
  SAY ~Weak??  You have the nerve to stand there and tell me I'm weak, because I *don't* think that being tortured by a madman and having the entire known world wishing me dead, is a gift??~
  = ~Yeah, I'll admit - I don't understand.  I don't understand how you can be such a total moron!~
  ++ ~Practice.  Lots and lots of practice.~ + MRLoveTalk2-2EvilDumb2
  ++ ~I'm not clueless I'm just... mentally challenged.~ + MRLoveTalk2-2EvilDumb2
  ++ ~It's fate!  There are bigger things in store for us!~ + MRLoveTalk2-2EvilDumbEnd
END

IF ~~ MRLoveTalk2-2EvilDumb
  SAY ~... and now I'm actually *related* to the biggest moron in Faerun.  (She sighs, shaking her head)~
  =
  ~How can you be so utterly clueless?~
  ++ ~Practice.  Lots and lots of practice.~ + MRLoveTalk2-2EvilDumb2
  ++ ~I'm not clueless I'm just... mentally challenged.~ + MRLoveTalk2-2EvilDumb2
  ++ ~You just don't understand!  There are bigger things in store for us!~ + MRLoveTalk2-2EvilDumbEnd
END

IF ~~ MRLoveTalk2-2EvilDumb2
  SAY ~Obviously.~
  IF ~~ + MRLoveTalk2-2EvilDumbEnd
END

IF ~~ MRLoveTalk2-2EvilDumbEnd
  SAY ~Y'know what, let's just forget I brought it up.  I think that'll be less frustrating for both of us.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk2-3
  SAY ~Still... I guess when you get down to it, I'm still Imoen and you're still <CHARNAME>, whether or not we actually share the same blood, huh?~
  ++ ~exactly.  And nothing will ever change that.~ + MRLoveTalk2-3End
  + ~OR(3) Race("Player",HUMAN) Race("Player",HALFORC) Race("Player",HALF_ELF)~ + ~We aren't *really* related - you're a human, I'm a <PRO_RACE>, it's impossible.~ + MRLoveTalk2-3Race
  + ~OR(3) !Race("Player",HUMAN) !Race("Player",HALFORC) !Race("Player",HALF_ELF)~ + ~But *do* we share the same blood?  I mean, Bhaal's a god.  Does he even have sperm?  Maybe he impregnated our mothers as a beam of light or something.~ + MRLoveTalk2-3Race
END
END

CHAIN IMOEN2J MRLoveTalk2-3End
  ~That's good to hear.  I guess I shouldn't worry about it so much.~
  == IMOEN2J IF ~Gender(Player1,MALE)~ THEN ~(She reaches over and playfully rubs the top of your head) Guess I'll get over it, huh, 'bro'?~
  == IMOEN2J IF ~Gender(Player1,FEMALE)~ THEN ~(She reaches over and playfully rubs the top of your head) Guess I'll get over it, huh, 'sis'?~
  == IMOEN2J ~Well... let's get goin', shall we?  People to do, things to see.~
  =
  ~Er.. wait.  Switch that.~
EXIT

CHAIN IMOEN2J MRLoveTalk2-3Race
  ~...huh.  Good point!~
  =
  ~But... I mean, Bhaal had to have sex with our mothers, didn't he?  So... we *are* related...  (She purses her lips thoughtfully as she turns this over in her mind)~
  == IMOEN2J IF ~IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Aerie")~ THEN ~Hey, Viccy - you're a priestess.  How does the whole 'god-sperm' thing work, anyways?~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia") IsValidForPartyDialog("Aerie")~ THEN ~Hey, Aerie - you're a priestess.  How does the whole 'god-sperm' thing work, anyways?~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Aerie") IsValidForPartyDialog("Anomen")~ THEN ~I should ask a priest next time I get a chance.  Bet that'd be an entertaining talk!~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Anomen")~ THEN ~I'm gonna have to think about that one for a while!~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Aerie") !IsValidForPartyDialog("Anomen")~ THEN ~But I guess I should do that while we're walking, huh?  Heh.. well... maybe we can talk more later...~
END
  IF ~~ EXIT
  IF ~IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Aerie")~ EXTERN VICONIJ MRLoveTalk2-3Race
  IF ~!IsValidForPartyDialog("Viconia") IsValidForPartyDialog("Aerie")~ EXTERN AERIEJ MRLoveTalk2-3Race
  IF ~!IsValidForPartyDialog("Viconia") !IsValidForPartyDialog("Aerie") IsValidForPartyDialog("Anomen")~ EXTERN ANOMENJ MRLoveTalk2-3Race

APPEND IMOEN2J

IF ~~ MRLoveTalk2-3RaceVic
  SAY ~Well that's... cheery.~
  =
  ~Y'know what?  Let's leave that question for the sages and just keep walkin'.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk2-3RaceAer
  SAY ~Oh, right.  Forgot about that.~
  =
  ~I guess I'll have to think about that one for a while... But I can do that while we're talking, huh?~
  =
  ~Heh... well, maybe we can talk more later.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk2-3RaceAno
  SAY ~Did I ask you?  (she sticks out her tongue at him)  I meant a REAL priest - you're kinda like a 'priest-in-training' still.~
  =
  ~Anyways, I'll think about it for a while.  But I can do that while we're talking, huh?~
  =
  ~(As she walks past you to continue your journey, you hear her whisper to you)~
  =
  ~Me askin' Anomen for spiritual advice... yeah right!~
  IF ~~ EXIT
END
END

APPEND VICONIJ
IF ~~ MRLoveTalk2-3Race
  SAY ~To feel the embrace of a dark god is ecstasy and agony at once.  If your 'Bhaal' enjoys the same pleasures as Lolth with Her concubines, then I am surprised your mothers survived the encounter.~
  IF ~~ EXTERN IMOEN2J MRLoveTalk2-3RaceVic
END
END

APPEND AERIEJ
IF ~~ MRLoveTalk2-3Race
  SAY ~I- I don't know, Imoen.  I worship B-Baervar, and the Time of Tr-troubles only affected the human g-gods...~
  IF ~~ EXTERN IMOEN2J MRLoveTalk2-3RaceAer
END
END

APPEND ANOMENJ
IF ~~ MRLoveTalk2-3Race
  SAY ~Ahem.  *I* am a priest, Imoen.  And according to-~
  IF ~~ EXTERN IMOEN2J MRLoveTalk2-3RaceAno
END
END

//** Love Talk 3 - Dreams, part 1 **//
APPEND IMOEN2J
IF ~Global("MRLoveTalk","GLOBAL",6) Global("ImoenRomanceActive","GLOBAL",1)~ THEN BEGIN MRLoveTalk3
  SAY ~Umm...~
  =
  ~Hehe, sorry, didn't mean to startle ya.  I was just... well, thinking 'bout something you said, back in Spellhold.  If you have a minute?~ [ MRImRom1]
  ++ ~I don't, actually.  Can't you see I'm busy?~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk3Busy
  ++ ~for you?  Of course I do!~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1) IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk3-1
  ++ ~La la la!  I can't hear you!~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk3Lala
END

IF ~~ MRLoveTalk3Busy
  SAY ~Oh... hrm.  Well...  it wasn't that important, actually.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3Lala
  SAY ~Well take your fingers outta your ears, pudding-for-brains!~
  ++ ~What good will that-  Oh!  Hey!  It works!~ + MRLoveTalk3Works
  ++ ~No!  My ears like it better this way!~ + MRLoveTalk3Ears
  ++ ~Look, I don't WANT to listen to you, get it?~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk3Rude
END

IF ~~ MRLoveTalk3Works
  SAY ~Hah!  See?  Much better, huh?~
  = ~So... mind if I bend your ear, now that it's available?~
  ++ ~Sure, what's on your mind?~ + MRLoveTalk3-1
  ++ ~My ears are too important for this.  Bother someone else!~  + MRLoveTalk3Rude
END

IF ~~ MRLoveTalk3Ears
  SAY ~Riiight.  Okay then, ear-<PRO_BOYGIRL>, I'm gonna let you and your body parts have a little alone time.~
  = ~What I was gonna say wasn't all that important anyways.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3Rude
  SAY ~Geez, fine.  You don't have to be such an ogre about it.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-1
  SAY ~Well... you said... uh... well, you mentioned that during that ritual that Irenicus did - that you had some sort of dreams about me, right?~
  ++ ~What?  I said no such thing.~ + MRLoveTalk3-1Deny
  ++ ~well, not during the ritual.  The dreams were before then.~ + MRLoveTalk3-2
  ++ ~Oh gods, not this topic.  Look, let's drop it, okay?~ + MRLoveTalk3Rude
END

IF ~~ MRLoveTalk3-1Deny
  SAY ~Yes you did!  You said we'd make it out of Spellhold if I helped you like I did in your dreams.~
  ++ ~Nope, doesn't ring a bell, sorry.~ + MRLoveTalk3-1Deny1
  ++ ~Hrm... well, if you say so.~ + MRLoveTalk3-2
  ++ ~Ah yes.  I remember.~ + MRLoveTalk3-2
END

IF ~~ MRLoveTalk3-1Deny1
  SAY ~Well, you said it!  You gettin' conked on the head too many times doesn't change that.~
  IF ~~ + MRLoveTalk3-2
END

IF ~~ MRLoveTalk3-2
  SAY ~I was wonderin'... what kinda, uh, dreams?~
  ++ ~None of your damn business.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk3Rude
  ++ ~why do you ask?~ + MRLoveTalk3-2Ask
  ++ ~You sound nervous...~  + MRLoveTalk3-2Nervous
  ++ ~Can't we talk about this later?  I'm kinda busy.~ + MRLoveTalk3Busy
END

IF ~~ MRLoveTalk3-2Nervous
  SAY ~Huh?  No!  I'm- I'm not nervous!  Why would I be nervous?~
  ++ ~You tell me.  You're definitely nervous.~ + MRLoveTalk3-2Nervous2
  ++ ~Hrm.  Good point.  Sorry - you were saying?~ + MRLoveTalk3-2Nervous4
END

IF ~~ MRLoveTalk3-2Nervous2
  SAY ~Gah!  You are such a- such a retarded gnoll!  Look, I just wanted to ask you a simple question, is that too much to ask?~
  ++ ~(sing song) Imoen's nervous!  Imoen's nervous!~ + MRLoveTalk3-2Nervous3
  ++ ~I couldn't resist teasing you.  What was the question again?~ + MRLoveTalk3-2Nervous4
END

IF ~~ MRLoveTalk3-2Nervous3
  SAY ~Ooooh!  NEVERMIND!  Brat!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-2Nervous4
  SAY ~Hmph.  (She eyes you skeptically, but finally gives in)  Your dreams.  I was wonderin' what they were about.~
  ++ ~None of your damn business.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk3Rude
  ++ ~Why do you ask?~ + MRLoveTalk3-2Ask
  ++ ~Can't we talk about this later?  I'm kinda busy.~ + MRLoveTalk3Busy
END

IF ~~ MRLoveTalk3-2Ask
  SAY ~'Cause I'm curious, duh.~
  ++ ~I've already forgotten them, Im.  They weren't that important.~ + MRLoveTalk3-2AskDeny
  ++ ~None of your damn business.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk3Rude
  ++ ~well... they started out in Candlekeep - scenes from when we were younger.  One time when a goblin managed to sneak into Candlekeep; another time we went swimming in that lake we used to go to...~ + MRLoveTalk3-3
END

IF ~~ MRLoveTalk3-2AskDeny
  SAY ~Oh...  (She seems disappointed)  Really?~
  ++ ~Sorry, Imoen.  If I have any more, I'll let you know.~ + MRLoveTalk3Busy
  ++ ~Well... they started out in Candlekeep - scenes from when we were younger.  One time when a goblin managed to sneak into Candlekeep; another time we went swimming in that lake we used to go to...~ + MRLoveTalk3-3
END

IF ~~ MRLoveTalk3-3
  SAY ~Uh huh...?~
  ++ ~(Tell her about the dreams... but leave out the 'romantic' parts)~ + MRLoveTalk3-White
  ++ ~(make up something silly and pointless - the truth is embarassing but you have to tell her *something*)~ + MRLoveTalk3-3Lie
  ++ ~Actually... I changed my mind.  I'd rather not talk about it.~ + MRLoveTalk3-3Deny
END

IF ~~ MRLoveTalk3-3Deny
  SAY ~Oh c'mon!  This totally isn't fair!~
  ++ ~Fine, fine, I'll tell!  (Tell her about the dreams... but leave out the 'romantic' parts)~ + MRLoveTalk3-White
/*  ++ ~Fine, fine, I'll tell!  (Tell her about the dreams... being honest about everything)~ + MRLoveTalk3-Truth */
  ++ ~fine, fine, I'll tell!  (Make up something silly and pointless)~ + MRLoveTalk3-3Lie
  ++ ~ They're *my* dreams, and I don't want to discuss them!~  + MRLoveTalk3-2Nervous3
END
END

CHAIN IMOEN2J MRLoveTalk3-3Lie
  ~Wait...  You said these were scenes from when we were younger, right..?~
  == IMOEN2J IF ~OR(4) Time(1) Time(2) Time(3) Time(20)~ THEN ~I'm *positive* that that did not involve any form of giant pudding monsters singing bawdy songs about cross-dressing dwarves!~
  == IMOEN2J IF ~OR(4) Time(4) Time(5) Time(6) Time(19)~ THEN ~Are you *sure* that you saw Hull prancing around in a field of daisies singing about lumberjacks?~
  == IMOEN2J IF ~OR(4) Time(7) Time(8) Time(9) Time(18)~ THEN ~'Cause I sure don't remember any invasion of polymorphed, mind-controlled magickal chickens.~
  == IMOEN2J IF ~OR(4) Time(10) Time(11) Time(12) Time(17)~ THEN ~If you'd managed to grow wings and telepathically communicate with Ao, I'm pretty sure I'd remember it, too.~
  == IMOEN2J IF ~OR(4) Time(13) Time(14) Time(15) Time(16)~ THEN ~'Cause I'm absolutely certain that I never started any rumors about Dreppin gettin' a little too cuddly with his cows!~
  == IMOEN2J IF ~OR(4) Time(21) Time(22) Time(23) Time(24)~ THEN ~'Cause I'm pretty sure that anything involving Phlydia, a bottle of rum, and the phrase 'rooftop orgy' woulda stuck in my mind for *ages*.~
END
  ++ ~Hey, fine, don't believe me!  But it's Tyr's honest truth!~ EXTERN IMOEN2J MRLoveTalk3-3Tyr
  ++ ~well... okay... I might have exaggerated just a *little* bit.~ EXTERN IMOEN2J MRLoveTalk3-3Exagg

APPEND IMOEN2J
IF ~~ MRLoveTalk3-3Tyr
  SAY ~Hah!  Yeah right!  'Scuse me while I step over here - safely out of 'lightning bolt from the gods' range, 'kay?~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-3Exagg
  SAY ~You think?  (She arches an eyebrow at you and crosses her arms across her chest)~
  ++ ~Fine, fine, I'll tell!  (Tell her about the dreams... but leave out the 'romantic' parts)~ + MRLoveTalk3-White
  ++ ~fine, fine, I'll tell!  (Tell her about the dreams... being honest about everything)~ DO ~SetGlobal("MRLoveTalk3Truth","GLOBAL",1)~ + MRLoveTalk3-White
  ++ ~Gah!  Stop harassing me!  I don't want to talk about it!~  DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk3-3ExaggEnd
END

IF ~~ MRLoveTalk3-3ExaggEnd
  SAY ~Calm down!  Sheesh, bite a girl's head off just 'cause she asks you a stupid question...~
  = ~Nevermind, you goon.  It wasn't that important anyways.~
  IF ~~ EXIT
END
END

CHAIN IMOEN2J MRLoveTalk3-White
  ~Well, I do remember the lake - man, that was great, huh? - and I remember going hiking up in those hills.  I'm sure I had nightmares when I was a kid... can't be sure if I had that particular one though.  And I sure don't remember the goblin.~
  == IMOEN2J IF ~Global("MRLoveTalk3Truth","GLOBAL",1)~ THEN ~And I sure as heck don't remember any kissing or weird, cryptic conversations.~
  == IMOEN2J ~You sure this all really happened?~
END
  ++ ~Are you saying I'm a liar?~ EXTERN IMOEN2J MRLoveTalk3-WhiteLie
  ++ ~Well... no, I guess not.  But you - the dream you, I mean - said it did.~ EXTERN IMOEN2J MRLoveTalk3-WhiteMaybe
  ++ ~absolutely.  There is no doubt in my mind.~ EXTERN IMOEN2J MRLoveTalk3-WhiteSure


APPEND IMOEN2J
IF ~~ MRLoveTalk3-WhiteLie
  SAY ~No!  Not on purpose at least.  I just mean - well, y'know, a lot has happened since then.  Maybe you're mixing up different memories or something.  Imaginging things.~
  ++ ~Hmm... maybe.  But you - the dream you, I mean - said all this really happened.~ + MRLoveTalk3-WhiteMaybe
  ++ ~It happened.  There is no doubt in my mind.~ + MRLoveTalk3-WhiteSure
END

IF ~~ MRLoveTalk3-WhiteMaybe
  SAY ~Heh.  Well, no offense, but my dream-self sounds even crazier than I am!~
  IF ~~ + MRLoveTalk3-4
END

IF ~~ MRLoveTalk3-WhiteSure
  SAY ~Well, if you say so - I guess you are older than me, so you maybe you remember stuff that I don't.  That and Irenicus didn't scramble your brains.~
  IF ~Global("MRLoveTalk3Truth","GLOBAL",1)~ + MRLoveTalk3-WhiteSure_1
  IF ~~ + MRLoveTalk3-4
END

IF ~~ MRLoveTalk3-WhiteSure_1
  SAY ~Although, me kissing you in your dreams... maybe he did scramble something.~
  IF ~~ + MRLoveTalk3-4
END

IF ~~ MRLoveTalk3-4
  SAY ~It's cute that you dreamed about me, though.  I... I had some dreams about you, too.~
  ++ ~you did?  The same dreams?~ + MRLoveTalk3-4Same
  ++ ~Really?  What about?~ + MRLoveTalk3-5
  ++ ~Fascinating.  Let's move on before this conversation puts me to sleep.~ + MRLoveTalk3-4End
END

IF ~~ MRLoveTalk3-4End
  SAY ~(Her eyes widen briefly in surprise, then quickly narrow in anger)  Sure.  Let's go.  And keep your jackass self away from me while we're going.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk3-4Same
  SAY ~Not exactly.  Just... dreams, y'know?~
  IF ~~ + MRLoveTalk3-5
END

IF ~~ MRLoveTalk3-5
  SAY ~They weren't dreams so much as daydreams, I guess.  Maybe they were both.  I just- well, I thought about you a lot while I was in there - in Spellhold, I mean.  I knew if anyone was gonna come rescue me, it'd be you.  And I knew you'd try.  I knew you'd do whatever you could to save me.~
  =
  ~It gave me hope... and kept me sane.~
  + ~GlobalGT("MRKinCounter","GLOBAL",14)~ + ~What did you dream about?  Or think about?~ + MRLoveTalk3-5Press1
  + ~GlobalGT("MRKinCounter","GLOBAL",11)
    !GlobalGT("MRKinCounter","GLOBAL",14)
    CheckStatGT(Player1,14,CHR)~ + ~What did you dream about?  Or think about?~ + MRLoveTalk3-5Press2
  + ~!CheckStatGT(Player1,14,CHR)
    !GlobalGT("MRKinCounter","GLOBAL",11)~ + ~What did you dream about?  Or think about?~ + MRLoveTalk3-5Press3
  ++ ~i'm sorry it took so long, Imoen.~ + MRLoveTalk3-5Sorry
  ++ ~Sigh.  Not this again.  Let's just go.~ + MRLoveTalk3-5End
END

IF ~~ MRLoveTalk3-5Sorry
  SAY ~(She smiles slightly)  Nah, s'okay, <CHARNAME>.  I know you did your best.~
  + ~GlobalGT("MRKinCounter","GLOBAL",14)~ + ~what did you dream about?  Or think about?~ + MRLoveTalk3-5Press1
  + ~GlobalGT("MRKinCounter","GLOBAL",11)
    !GlobalGT("MRKinCounter","GLOBAL",14)
    CheckStatGT(Player1,14,CHR)~ + ~What did you dream about?  Or think about?~ + MRLoveTalk3-5Press2
  + ~CheckStatGT(Player1,14,CHR)
    !GlobalGT("MRKinCounter","GLOBAL",11)~ + ~What did you dream about?  Or think about?~ + MRLoveTalk3-5Press3
  ++ ~Well good. Let's keep going then.~ + MRLoveTalk3-5End
END

IF ~~ MRLoveTalk3-5Press1
  SAY ~I- I dunno.  Just... stuff.  Just... you.  (She sighs softly)  I missed you, <CHARNAME>.  A lot.~
  =
  ~I... I just wanted you to *be* there.  To hold me.  Tell me everything'd be okay.~
  =
  ~And that's what I dreamt about.  You holding me.~
  ++ ~Did I say everything would be okay?~ DO ~SetGlobal("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk3-5Press1Okay
  ++ ~holding you?  *Just* holding you?~ DO ~SetGlobal("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk3-5Press1Kinky
  ++ ~Hehehe kinky!~ DO ~SetGlobal("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk3-5Press1Kinky
END

IF ~~ MRLoveTalk3-5Press1Okay
  SAY ~Yeah, you did!  I guess you're just as wonderful in my dreams as you are in real life.~
  =
  ~(She blushes as the words slip out, suddenly self-conscious of what she said) Ah... I mean, y'know, being the <PRO_BROTHERSISTER> I never knew I had, and all.~
  =
  ~So... um... yeah.  The end.  And speaking of ends - how about we stop talking and start getting my soul back?~ 
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-5Press1Kinky
  SAY ~(She sticks her tongue out at you and gives you a gentle shove away, even though she's smiling)  *Just* holding!  Don't be gross!~
  ++ ~Who's being gross?  That's totally hot!~ + MRLoveTalk3-5Press1KinkyHot
/*  ++ ~(Give her a playful push back) You started it.~ + MRLoveTalk3-5Press1KinkyPlay */
  + ~Gender(Player1,MALE)~ + ~what's so gross about it?~ + MRLoveTalk3-5Press1KinkyGrossM
  + ~Gender(Player1,FEMALE)~ + ~What's so gross about it?~ + MRLoveTalk3-5Press1KinkyGrossF
END

IF ~~ MRLoveTalk3-5Press1KinkyGrossM
  SAY ~'Cause we've known each other since we were practically in diapers?  And you're my half-brother?  I mean, geez, imagine if we did!  Our kids would look like tasloi.~
  ++ ~Hrm, you're right.  Diapers are definitely gross.~ + MRLoveTalk3-5Press1KinkyGross2
  ++ ~so?~ + MRLoveTalk3-5Press1KinkySoM
  ++ ~You're right.  That is pretty nasty.~ + MRLoveTalk3-5Press1KinkyGross2
END

IF ~~ MRLoveTalk3-5Press1KinkyGrossF
  SAY ~'Cause we've known each other since we were practically in diapers?  And you're my half-sister?  And who ever heard of two *girls* doing... that kind of stuff?~
  ++ ~Hrm, you're right.  Diapers are definitely gross.~ + MRLoveTalk3-5Press1KinkyGross2
  ++ ~Actually, there's quite a few mentions of girls doing 'that kind of stuff' back in Candlekeep.~ + MRLoveTalk3-5Press1KinkySoF
  ++ ~You're right.  That is pretty nasty.~ + MRLoveTalk3-5Press1KinkyGross2
END

IF ~~ MRLoveTalk3-5Press1KinkySoF
  SAY ~There is?  I never found- I mean- how could you possibly know-  (Her eyes widen in sudden realization, and her jaw literally drops open)~
  =
  ~You...!  I mean- are you- do you-~
  ++ ~What?  NO!  Whoa, Im!  Don't get the wrong idea!~ + MRLoveTalk3-5Press1KinkySoFStraight
  ++ ~Do I like girls?  Yes, I do.~ + MRLoveTalk3-5Press1KinkySoFGay
  ++ ~*You* never found...what, exactly?  And why were you looking, hmm?~ + MRLoveTalk3-5Press1KinkySoFChange
  ++ ~(Roll your eyes in disgust)  Nevermind!~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkySoFChange
  SAY ~Don't change the subject!  Do you really...?~
  ++ ~What?  NO!  Whoa, Im!  Don't get the wrong idea!~ + MRLoveTalk3-5Press1KinkySoFStraight
  ++ ~Do I like girls?  Yes, I do.~ + MRLoveTalk3-5Press1KinkySoFGay
  ++ ~(Roll your eyes in disgust)  Nevermind!~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkySoFGay
  SAY ~You... oh wow.  I never suspected that you...  just wow.  Wow.  I... uh...~
  =
  ~Heh.  Sorry, <CHARNAME>, that's just kinda... surprising news, y'know?~
  ++ ~It doesn't change who I am, Imoen.~ + MRLoveTalk3-5Press1KinkySoFGay2
  ++ ~Yeah, yeah, we're all shocked.~ + MRLoveTalk3-5Press1KinkySoFGay2
END

IF ~~ MRLoveTalk3-5Press1KinkySoFGay2
  SAY ~Oh, don't get me wrong!  I just- wow.~
  =
  ~Heh.  Actually, maybe I should just shut up for now.  But... uh... maybe we can talk about this later?~
  =
  ~Like... after I recover from the shock.  Wow.~ 
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkySoFStraight
  SAY ~Oh... (Her excitement fades as suddenly as it had come, replaced with a faint air of... disappointment?)~
  =
  ~ Heh.  Yeah, that'd've been weird, huh?  Really weird.  And awkward.  Really awkward.~
  =
  ~(She clears her throat)  Um.  Yeah, so... moving on.  Vampires to kill and all that.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkySoM
  SAY ~... 'so'?   That's your answer?  'So'?~
  =
  ~Are you seriously telling me that you find nothing wrong with- with any of that?~
  ++ ~Well with having kids, sure - but just having sex?  That'd be fine.~ + MRLoveTalk3-5Press1KinkySoMSex
  ++ ~Hrm... well, I guess I'll have to think about it some more.~ + MRLoveTalk3-5Press1KinkySoMThink
  ++ ~if two people are in love, I don't think that anything else matters.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk3-5Press1KinkySoMLove
END

IF ~~ MRLoveTalk3-5Press1KinkySoMLove
  SAY ~(She looks at you, her eyebrows slowly drawing together in confusion as she processes what you just said)~
  =
  ~(Finally she makes a small, frustrated gesture and walks away, effectively ending the conversation.  You hear her mutter something under her breath as she leaves, but whether it was a curse or a compliment, you can't be sure)~ 
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkySoMSex
  SAY ~(She rolls her eyes)  Ladies and gentleman:  <CHARNAME>!  Who has all the tact and intelligence of a warthog in heat.~
  =
  ~Seriously, that's gross.  Ew, now I'm always gonna be thinking that you're... thinking things about me!~
  =
  ~(She hurriedly walks away from you, shivering and looking back at you with distaste)~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-1)~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkySoMThink
  SAY ~You do that.  Think long and hard.  'Cause you're starting to weird me out.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-5Press1KinkyGross2
  SAY ~See?  Diapers and incest - two things we don't like.  Now before this convo gets any weirder, can we please go find my soul?~
  IF ~~ EXIT
END


IF ~~ MRLoveTalk3-5Press1KinkyHot
  SAY ~(This time when she shoves you, it's quite a bit harder - and she's not smiling) Ew!  For one thing, I've known you for, like, forever.~
  =
  ~For the second, d'ya forget the fact that now we're actually *related*?  And for the third, you have about as much tact and romance as a warthog in heat!~
  =
  ~Keep dreaming, lover<PRO_BOYGIRL>.  Never in a hundred thousand years!~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",1)~ EXIT
END


IF ~~ MRLoveTalk3-5Press2
  SAY ~I-  (She purses her lips doubtfully as she looks at you)  I- just stuff.  Just stupid stuff.  It's not important.~
  ++ ~They were important to you.  That makes them important to me.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk3-5Press2Sincere
  ++ ~You're right, it's not.  Let's go.~ + MRLoveTalk3-5End
  ++ ~C'mon, Im, I told you my dreams!~ + MRLoveTalk3-5Press2Press
END
IF ~~ MRLoveTalk3-5Press2Sincere
  SAY ~I... I know.  And thank you for that.~
  =
  ~(She reaches out and touches the back of your hand)  Maybe later, okay?~
IF ~~ EXIT
END

IF ~~ MRLoveTalk3-5Press2Press
  SAY ~(She huffs, her cheeks reddening in anger)  And I just told you mine - that they're stupid and not important!  What's your problem?~
  =
  ~I don't wanna talk about it, okay?  So get off my back!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk3-5Press3
  SAY ~(Her eyes meet yours briefly; you see that they are thick with doubt before she shrugs and turns away)  Like I said, just stuff.  Nothing important.  I dunno why I even brought it up.~
  =
  ~And actually, we're wasting time, aren't we?  If it's all the same, I'm kinda in a hurry to get my soul back.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk3-5End
  SAY ~(Her eyes widen briefly in surprise, but the expression is quickly replaced by disappointment)~
  =
  ~You're right...  Let's go.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END


//** Love Talk 4 - Dreams, part 2 **//

IF ~Global("MRLoveTalk","GLOBAL",8) Global("ImoenRomanceActive","GLOBAL",1)~ THEN BEGIN MRLoveTalk4
  SAY ~Hey, <CHARNAME>...~
  = ~I kinda brushed you off earlier, 'bout the dreams thing.~ [ MRImRom1]
  ++ ~'Kinda'?  You practically slammed a door in my face.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk4-Door
  ++ ~And now I'm returning the favor.  Look!  A spider!~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk4-Mean
  ++ ~It's okay.  I got over it.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk4-Door
  ++ ~don't worry about it.  You didn't feel like talking about it, and I understand that.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk4-Nice
END

IF ~~ MRLoveTalk4-Nice
  SAY ~Heh.  Thanks.  Sometimes you're too freakin' nice, y'know that?~
  IF ~~ + MRLoveTalk4-1
END

IF ~~ MRLoveTalk4-Door
  SAY ~Oh c'mon!  I wasn't *that* bad!~
  IF ~~ + MRLoveTalk4-1
END

IF ~~ MRLoveTalk4-Mean
  SAY ~Jerk.  Okay, okay, I know I deserve it.~
  IF ~~ + MRLoveTalk4-1
END

IF ~~ MRLoveTalk4-1
  SAY ~It's just... well...  I missed you, <CHARNAME>.  An' I wasn't exactly in the best of states.~
  ++ ~i know.~ + MRLoveTalk4-2
  ++ ~(stifle a yawn)  Booooring!~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ + MRLoveTalk4-Boring
  ++ ~I already apologized for that.~ + MRLoveTalk4-2
  ++ ~Can we talk about this later?~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ + MRLoveTalk4-Later
END

IF ~~ MRLoveTalk4-2
  SAY ~Just hush and lemme finish.~
  =
  ~I'm just sayin' that- that sometimes things got to me, y'know?  And- and sometimes I thought about things I normally wouldn't.~
  + ~Alignment(Player1,MASK_EVIL)~ + ~Like blood and guts and gore?~ + MRLoveTalk4-2Gore1
  + ~!Alignment(Player1,MASK_EVIL)~ + ~Like blood and guts and gore?~ + MRLoveTalk4-2Gore2
  ++ ~'thought'?  Not 'dreamt'?~ + MRLoveTalk4-Words
  ++ ~You mean you don't usually dream about my magnificence?~ + MRLoveTalk4-Usual
  + ~Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + ~What kind of things?~ + MRLoveTalk4-3_1
  + ~!Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + ~What kind of things?~ + MRLoveTalk4-3_2
END

IF ~~ MRLoveTalk4-Usual
  SAY ~(She smiles)  Hate to break it to ya, but... no, usually not, actually.~
  IF ~Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_1
  IF ~!Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_2
END

IF ~~ MRLoveTalk4-2Gore1
  SAY ~Ew no, you freak.  That's YOUR thing - leave me out of your twisted little fantasties.~
  IF ~Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_1
  IF ~!Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_2
END

IF ~~ MRLoveTalk4-2Gore2
  SAY ~Ew, no, you freak.  And if you're tryin' to shock me, it's not gonna work.~
  IF ~Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_1
  IF ~!Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_2
END


IF ~~ MRLoveTalk4-Boring
  SAY ~(She frowns at you, her lips pressing together in a thin, angry line)~
  =
  ~Why I'm friends with a jerk like you, I'll never understand.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk4-Later
  SAY ~...no, we can't.  But it's okay.  It wasn't important.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk4-Words
  SAY ~Dreamt, I mean.  Well, both actually, I guess.~
  IF ~Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_1
  IF ~!Global("MRLoveTalk3-5Hold","GLOBAL",1)~ + MRLoveTalk4-3_2
END

IF ~~ MRLoveTalk4-3_1
  SAY ~I mentioned that you- that you held me, sometimes, in my dreams, right?~
  IF ~~ + MRLoveTalk4-3_3
END

IF ~~ MRLoveTalk4-3_2
  SAY ~In Spellhold... well... I just wanted you to *be* there, y'know?  To hold me.  Tell me everything'd be okay.~
  IF ~~ + MRLoveTalk4-3_3
END

IF ~~ MRLoveTalk4-3_3
  SAY ~And that's what I dreamt about.  You holding me.~
  IF ~~ THEN + MRLoveTalk4-4
END

IF ~~ MRLoveTalk4-4
  SAY ~But I- I also... I- I dreamt--~
  = ~(She sighs and runs her fingers through her hair in frustration)  Y'know what, just nevermind.  It's nothing.~
  ++ ~no, tell me.  Please?~ + MRLoveTalk4-5
  ++ ~C'mon, Im, spit it out.~ + MRLoveTalk4-5
  ++ ~Okay, I'm neverminding.  To adventure, and beyond!~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk4-5
  SAY ~I- I dreamt about more than that, okay?  A lot more.  And it just makes me feel all awkward and weird and stuff.~
  ++ ~Oh gods.  Look, Im, I'm really not that interested, okay?~ + MRLoveTalk4-Boring
  ++ ~More like... what, exactly?~ + MRLoveTalk4-6
  ++ ~(say nothing and just listen)~ + MRLoveTalk4-6
END

IF ~~ MRLoveTalk4-6
  SAY ~I *know* that I've known you forever, an' I *know* we've always been best friends and all.  And it's not like it hasn't crossed my mind before - I think that's normal considering you were the only person in Candlekeep anywhere near my age, y'know?~
  = ~And then I find out I'm all Bhaalspawny and you're my <PRO_BROTHERSISTER> and... and I'm just thinking, 'Wow.  Irenicus really messed me up.'~
  = ~And I don't want to be messed up, <CHARNAME>.  I want him and Bhaal and everything else, just out of my head.  Out of *me*.~
  ++ ~You think you only dreamt about me because Irenicus messed with your head?~ + MRLoveTalk4-6Taint
  ++ ~You think you only dreamt about me because you're Tainted?~ + MRLoveTalk4-6Taint
  ++ ~really?  You had a crush on me when we were younger?~ + MRLoveTalk4-6Crush
  ++ ~Yeah... uh-huh... sure... wait- were you talking to me?~ + MRLoveTalk4-Boring
END

IF ~~ MRLoveTalk4-6Crush
  SAY ~Don't flatter yourself!  You were kinda cute, that's all.  But I never dreamt about you back then.  Never, before Spellhold.~
    ++ ~you think you only dreamt about me because Irenicus messed with your head?~ + MRLoveTalk4-6Taint
    ++ ~You think you only dreamt about me because you're Tainted?~ + MRLoveTalk4-6Taint
    ++ ~Yeah... uh-huh... sure... wait- were you talking to me?~ + MRLoveTalk4-Boring
END

IF ~~ MRLoveTalk4-6Taint
  SAY ~Yes!  Well - no.  Not *exactly*.  But I... I feel things now - things I didn't feel before.  I see flashes of... of things.  Shadows.  Death.~
  =
  ~(She crosses her arms around her chest and shivers, despite the warmth of the air)~
  =
  ~You don't know what he did to me, <CHARNAME>.  He was trying to wake something up inside of me, and he did.  Maybe it was always there, but I never felt it before Spellhold.~
  =
  ~I'm not the girl I used to be.  I used to smile and laugh and not have a care in the world.  I can't anymore; I can't see a smile without seeing the skull underneath.  And that part of me will never be the same.~
  ++ ~Well... that was morbid.  Thank you for ruining my happy day.~ + MRLoveTalk4-Boring
  ++ ~(Hug her)  It's okay, Imoen.  I understand.~ + MRLoveTalk4-7Hug
  ++ ~it's okay, Imoen.  You're not crazy, and you're not warped.~ + MRLoveTalk4-7
END

IF ~~ MRLoveTalk4-7
  SAY ~How can you say that, <CHARNAME>?  How can you possibly know that?~
  ++ ~We could get someone to cast 'detect evil' or 'restoration' on you, if you want.~ + MRLoveTalk4-9Neu
  ++ ~Because you're afraid that you are.  If you were really crazy, you wouldn't know it.  Think of all the other people in Spellhold.  They didn't know they were mad.~ + MRLoveTalk4-8
  ++ ~who you are in your deepest soul hasn't changed.  I'm Tainted - more than you - and I'm normal, right?~ + MRLoveTalk4-8
  ++ ~I don't.  I'm just making stuff up to make you feel better.~ + MRLoveTalk4-Boring
END

IF ~~ MRLoveTalk4-7Hug
  SAY ~(Your words seem to upset her; she pushes you away as you try to embrace her)~
  = ~No you don't!  How could you possibly understand what I've gone through?  You weren't there!  You were in Athkatla playing around!~
  ++ ~We could get someone to cast 'detect evil' or 'restoration' on you, if it'd make you feel better.~  DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk4-9Neu
  ++ ~If you were really crazy, you wouldn't know it.  Think of all the other people in Spellhold.  They didn't know they were mad.~ + MRLoveTalk4-8
  ++ ~Who you are in your deepest soul hasn't changed.  I'm Tainted - more than you - and I'm normal, right?~ + MRLoveTalk4-8
  ++ ~You're right.  I'm just making stuff up to make you feel better.~ + MRLoveTalk4-Boring
END

IF ~~ MRLoveTalk4-8
  SAY ~You- you think so?  (Her eyes are doubtful and uncertain)  You don't think that Bhaal's messing me up?  You don't think that- that Irenicus...?~
  ++ ~twisted you?  No.  You're still Imoen to me, and you always will be.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk4-9Good
  ++ ~Well, you are a little nuts, but that doesn't mean you're a bad person or any less of a friend to me.~ + MRLoveTalk4-9Neu
  ++ ~Maybe a little bit, but we're not the kids we used to be.  We've both changed, but we are stronger for it.~ + MRLoveTalk4-9Neu
END

IF ~~ MRLoveTalk4-9Good
  SAY ~(A hint of a smile tilts up the corner of her lips)  Really?  You mean that?~
  = ~You're sweet, <CHARNAME>.  You really are.~
  ++ ~Thank you.  Now, about those dreams...?~ + MRLoveTalk4-9Dreams
  ++ ~(smile and squeeze her hand reassuringly)~ + MRLoveTalk4-9End
END

IF ~~ MRLoveTalk4-9Neu
  SAY ~Ah... thanks.  I think.~
  =
  ~I... I don't think I want to talk about this anymore, okay?  Can we just keep going?~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk4-9Dreams
  SAY ~(She arches an eyebrow)  Don't push your luck.  I already told ya more than I should've, and if you tease me about it...!~
  =
  ~(She lets the threat trail off unfinished - leaving your imagination to fill in any number of ways she could get her revenge.  Perhaps it's best to drop the subject for now.)~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk4-9End
  SAY ~(She squeezes back, her smile growing even larger)  Thanks.  Now, let's get moving before this gets really sappy, okay?~
  IF ~~ EXIT
END



//** Love Talk 5 - Early Taint, Early Life **//

//** Must occur just before a rest **//

IF ~Global("MRLoveTalk","GLOBAL",10) Global("ImoenRomanceActive","GLOBAL",2)~ THEN BEGIN MRLoveTalk5
  SAY ~(As you prepare to settle in for a well-deserved rest, you notice Imoen has pushed up her sleeves and is now examining her own arms with a look of frustration and displeasure.  A few minutes later, she pulls a small reflective metal plate out of her backpack and studies her face as well.)~
  = ~(Finally, with a quiet sigh, she tucks the plate away and rests her chin in her hands.  She hasn't noticed you watching her.)~
  ++ ~(Say nothing; if she wanted to talk, she'd come to you)~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ EXIT
  ++ ~(approach her)  A copper for your thoughts?~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk5-1
  ++ ~(Toss a small pebble at her to get her attention)  Psst.  Im, come here!~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk5-1
END

IF ~~ MRLoveTalk5-1
  SAY ~Huh?? (Her body jerks slightly in surprise as she starts and looks over to you)  Oh, uh... sorry, not quite all here tonight, I guess.~
  ++ ~You need to stay alert.  You never know when a potential threat might appear.~ + MRLoveTalk5-Attack
  ++ ~what were you thinking about?~ + MRLoveTalk5-2
  ++ ~Go on to sleep; you look like you need it.  I'll keep watch.~ + MRLoveTalk5-Attack
END

IF ~~ MRLoveTalk5-Attack
  SAY ~(She sighs, rubbing her face between her hands)  You're right.  And when you're right, you're right.~
  = ~I'm sure you can handle whatever comes up.  I'm gonna hit the hay.  G'night, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-2
  SAY ~I dunno.  Stuff.  Me.~
  = ~(She looks down at her arms again)  Y'ever notice how many scars we've gotten over the last year or so?  I counted:  13, just on my arms.~
  = ~Probably got twice that on my back, I'm guessin'.  I've even got that stupid scar on my face.~
  ++ ~Surely a bit of magic would fix that, wouldn't it?~ + MRLoveTalk5-2Magic
  ++ ~Now that you mention it... you DO have a lot.~ + MRLoveTalk5-2Lot
  ++ ~'out of suffering have emerged the strongest souls; the most massive characters are seared with scars'.~ ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk5-2Poem
  ++ ~True beauty is accented with small imperfections.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk5-2Beauty
END

IF ~~ MRLoveTalk5-2Poem
  SAY ~That's really pretty... but honestly, I think I'd've rather skipped some of that suffering, and some of the scars.~
  IF ~~ + MRLoveTalk5-3
END

IF ~~ MRLoveTalk5-2Beauty
  SAY ~Yeah, *small*. (She traces the line of her scar over her eye)  Does this look like a 'small imperfection' to you?~
  IF ~~ + MRLoveTalk5-3
END

END

CHAIN IMOEN2J MRLoveTalk5-3
  ~I mean--~
  == IMOEN2J IF ~IsValidForPartyDialog("Viconia")
    !IsValidForPartyDialog("Aerie")~ THEN ~Look at Viconia.  She's beautiful, and not a mark on her.  I shoulda been a cleric... those healing spells must be awesome.~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia")
    !IsValidForPartyDialog("Aerie")
    IsValidForPartyDialog("Nalia")
    !IsValidForPartyDialog("Mazzy")~ THEN ~Look at Nalia.  She's beautiful, and not a mark on her.  Guess living the good life has its advantages.~
  == IMOEN2J IF ~IsValidForPartyDialog("Aerie")~ THEN ~Look at Aerie.  She's beautiful, and not a mark on her.  Well... not where it shows, at least.~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia")
    !IsValidForPartyDialog("Aerie")
    IsValidForPartyDialog("Mazzy")~ THEN ~Look at Mazzy.  She's pretty, in a halfling kinda way, and not a mark on her.  Maybe little people just heal faster.~
  == IMOEN2J IF ~!IsValidForPartyDialog("Viconia")
    !IsValidForPartyDialog("Aerie")
    IsValidForPartyDialog("Jaheira")
    !IsValidForPartyDialog("Nalia")
    !IsValidForPartyDialog("Mazzy")~ THEN ~Look at Jaheira.  She's beautiful, and okay, she's got a few scratches, but nothing like *this*. (She gestures to the scar on her face)~
  == IMOEN2J ~Sometimes I just hate lookin' at myself.~
END
  ++ ~Because you think that you're ugly?~ EXTERN IMOEN2J MRLoveTalk5-3Ugly
  + ~IsValidForPartyDialog("Nalia")~ + ~Sometimes I hate looking at you, too.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-2)~ EXTERN IMOEN2J MRLoveTalk5-3Hate
  + ~IsValidForPartyDialog("Nalia")~ + ~Sometimes I hate looking at you, too.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-2)~ EXTERN IMOEN2J MRLoveTalk5-3Hate2
  ++ ~having a few scars doesn't make you any less attractive, Imoen.~ EXTERN IMOEN2J MRLoveTalk5-4
  ++ ~I prefer you with scars.  It gives you character.~ EXTERN IMOEN2J MRLoveTalk5-4

APPEND IMOEN2J

IF ~~ MRLoveTalk5-2Magic
  SAY ~Maybe.  But magic can't heal everything.  And 'sides, you're missing the point!  It's just ugly.~
  IF ~~ + MRLoveTalk5-3
END

IF ~~ MRLoveTalk5-2Lot
  SAY ~Gee, thanks.  While you're at it, wanna comment on how this outfit makes my butt look big?? (Her glare makes it clear that saying ANYTHING about her butt would be a very bad idea)~
  = ~At least you agree with me, I s'pose - about scars being ugly.~
  IF ~~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk5-3
END

IF ~~ MRLoveTalk5-3Ugly
  SAY ~Well... sometimes.  But also 'cause I know how I got most of 'em, y'know?~
  IF ~~ + MRLoveTalk5-4
END

END

CHAIN IMOEN2J MRLoveTalk5-3Hate
  ~What??  You are such a- such a pig-headed- such a-~
  == NALIAJ ~Cad?~
  == IMOEN2J ~Worse.~
  == NALIAJ ~Bounder?~
  == IMOEN2J ~Better, but...~
  == NALIA ~Bastard?~
  == IMOEN2J ~Yes!  Exactly!~
  == IMOEN2J ~(She glares at you) And calling you that is an insult to bastards everywhere!~
EXIT

APPEND IMOEN2J

IF ~~ MRLoveTalk5-3Hate2
  SAY ~Oh really?  Well I'll sleep *far* away from you tonight - and every other night - you brain-rotted kobold.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRLoveTalk5-4
  SAY ~Every one of these scars.. I remember *him*. I remember the knives... the smell... everything.  And that's something I'll never get rid of.~
  = ~Well, not *every* scar, I guess. (She taps a long scar across her left triceps) *You* put this one here, remember?~
  ++ ~heheh, well, yeah... I guess I took our training sessions too seriously...~ + MRLoveTalk5-4Training
  ++ ~It wasn't my fault, that plate mail fell off its peg all by itself!~ + MRLoveTalk5-4Plate
  ++ ~Umm... nope. I don't remember it at all.~ + MRLoveTalk5-4Forget
END


IF ~~ MRLoveTalk5-4Forget
  SAY ~Well you should!~
  IF ~~ + MRLoveTalk5-5
END

IF ~~ MRLoveTalk5-4Plate
  SAY ~Heh, nope, wrong one - that one's up here. (She uncovers her right shoulder to show you a small dark mark)  And as I remember, it 'somehow' fell while ya were tryin' to see if there was something interesting inside...~
  IF ~~ + MRLoveTalk5-5
END

IF ~~ MRLoveTalk5-4Training
  SAY ~Hehe!  We both did, but that one is right down here. (She uncovers her left thigh to show you a small dark line on it.)~
  IF ~~ + MRLoveTalk5-5
END

IF ~~ MRLoveTalk5-5
  SAY ~It's from when we were thirteen or so; we were walking out of Candlekeep library, and you were all upset 'cause you were stuck cleaning the stables.~
  = ~It was *my* turn, actually, but you know me - got a silver tongue.  I'd convinced Mister G that it was your turn and that I'd done it *last* week.~
  = ~Oh you were so mad at me!  Mainly 'cause I started dancing around and singing this stupid little song like, "You've gotta woooork, you've gotta wooooork."~
  = ~Guess I pushed it a bit far, or maybe you had a bad day, or I dunno.  Anyways, I got right up in your face and grinned and stuck my tongue out... and you shoved me backwards.  You were strong, y'know, even back then.  Stronger than me, at least.~
  = ~And I just happened to land on that stupid pitchfork in the hay. (Imoen follows the trail of the long scar on her arm) See?  It went from here to here... y'know, it hurt a lot!~
    ++ ~ouch! I didn't remember that one... I'm sorry, Imoen.~ + MRLoveTalk5-5Sorry
    ++ ~Well, that time I think you really deserved it!~ + MRLoveTalk5-5Blood
    ++ ~Just thinking of it makes me shudder.~ + MRLoveTalk5-5Sorry
    ++ ~(Open your eyes wide with delight) Yeah, pain is great!  Blood is great!~ + MRLoveTalk5-5Blood
END

IF ~~ MRLoveTalk5-5Sorry
  SAY ~Heh don't worry about it, I got over it pretty quickly.  And I learned my lesson 'bout teasing you too much, that's for sure.~
  IF ~~ + MRLoveTalk5-6
END

IF ~~ MRLoveTalk5-5Blood
  SAY ~Huh?  That sure wasn't what you were sayin' back then.~
  IF ~~ + MRLoveTalk5-6
END

IF ~~ MRLoveTalk5-6
  SAY ~Your face changed so much when you saw it! From real rage to worry and distress, y'know?  You carried me over to Frendan, shouting and screaming like mad that you'd killed me or some such.~
  = ~I coulda sworn it was Talona herself who was sewin' me up, that's how bad it hurt. I remember someone saying that the wound cut so deep that the bone could be seen.~
  =
  ~An' every time I opened my eyes... I saw yours.  So worried, so INTENSELY worried!  Oh and Gorion!  Gorion was *furious* at you - well, both of us - later, when he got back and the hay was soaked with blood and I'm barely conscious and you're in a panic.~
  =
  ~They banned us from the stables after that.  Ah, the memories... y'know, for being 'good kids', we sure got in a lot of trouble.~
  ++ ~you really astound me, Imoen; how can you remember it all so clearly?~ + MRLoveTalk5-7
  ++ ~Indeed; we'd be nothing without them.~ + MRLoveTalk5-7
  ++ ~So many words... my head aches...~ + MRLoveTalk5-6Go
  ++ ~I love these moments when I can break free from the real world but... I hate to say we should get going.~ + MRLoveTalk5-6Go
END

IF ~~ MRLoveTalk5-6Go
  SAY ~Heh, yeah, yeah, I talk a lot - always have, and I know how to take a hint!~
  =
  ~Anyways, we should get to sleep.  Can't kill the bad guys without a beauty nap!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-7
  SAY ~I've got a good memory for this kinda stuff I guess... or maybe it's *you* who has forgotten it all, with all your 'I-am-the-Child-of-Bhaal' thing (She giggles, and you suddenly feel a sense of déjà vu.)~
  =
  ~'Course, having it cut into my skin does help jog the memory, huh?~ [ MRImRom3 ]
  IF ~~ + MRLoveTalk5-8
END

IF ~~ MRLoveTalk5-8
  SAY ~Like this one here on my shoulder. (She smiles at some random memory that comes to her mind) ... or down here, on my knee knee...~
  =
  ~And this one... (Imoen looks puzzled) Huh.  I don't remember this one, actually.  It's way too faded to be one of the new ones... ~
  =
  ~(She is talking about a small scar on the right side of her uncovered belly, surrounding its trail with both hands, stretching the skin around it for you to see it clearly.)~
  =
  ~Hmmm...~
  =
  ~(However, you *do* recognize it. This scar is in exactly the same place as the one the 'Dream Imoen' showed you that she had gotten when she was very young.)~
  ++ ~Have I told you I like apples?~ + MRLoveTalk5-8Apples
  ++ ~You can't hope to remember all of them, I guess.~ + MRLoveTalk5-8End
  ++ ~imoen, remember when I told you of my dreams about you...?  That scar looks *exactly* like the one you showed me.~ + MRLoveTalk5-9
  ++ ~I'm sure you'll remember.  In the meantime, we should get some sleep.  We need our strength.~ + MRLoveTalk5-6Go
END

IF ~~ MRLoveTalk5-8Apples
  SAY ~Err... No, you haven't...~
  ++ ~I want an apple.~ + MRLoveTalk5-8Apples2
  ++ ~Well, I do like apples.~ + MRLoveTalk5-8Apples2
  ++ ~An apple from time to time helps your mind grow strong.~ + MRLoveTalk5-8Apples2
  ++ ~Some apples have worms. I don't like worms.~ + MRLoveTalk5-8Apples2
  ++ ~Sometimes I think to myself, "What would we do without apples?"~ + MRLoveTalk5-8Apples2
END

IF ~~ MRLoveTalk5-8Apples2
  SAY ~Uh... right.~
  =
  ~Better if we... umm... get some sleep, right?~
  =
  ~(As she walks away, she shakes her head and mutters to herself) Wow.  That was *weird*!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-8End
  SAY ~True, true.  Even *my* memory isn't perfect.  Anyways, we should get to sleep.  Can't kill the bad guys without a beauty nap!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-9
  SAY ~Like you're saying the dream really happened?  Some goblin attacking me?  I *know* I'd remember that!~
  ++ ~Huh... guess you're right.~ + MRLoveTalk5-9End
  ++ ~maybe not... your 'dream self' said there's a lot of stuff you don't remember.~ + MRLoveTalk5-10
END

IF ~~ MRLoveTalk5-9End
  SAY ~Of course I'm right!  It's not like I'm gonna forget something like that, geez.~
  =
  ~Anyways, we should get to sleep.  Can't kill the bad guys without a beauty nap!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-10
  SAY ~(Imoen raises an eyebrow at you) What're you on about?~ [ MRImNig1 ]
  ++ ~you told me that you came to Candlekeep when you were ten, but that you remembered absolutely nothing of your life before being there.~ + MRLoveTalk5-11
END

IF ~~ MRLoveTalk5-11
  SAY ~Heh.  That's ridiculous.  You know I've spent my entire life in Candlekeep!  We grew up together, you bufflehead.~
  ++ ~Um... what?~ + MRLoveTalk5-11What
  ++ ~that's not true, and you know it.~ + MRLoveTalk5-11False
  ++ ~Uh, if you say so. I don't remember much myself, to tell the truth...~ + MRLoveTalk5-11Vague
  ++ ~Alright, sorry to disturb you.~ + MRLoveTalk5-11Sorry
END

IF ~~ MRLoveTalk5-11Vague
  SAY ~Obviously.  Y'know, sometimes I think you've taken one too many conks on the head.~
  =
  ~Anyways, we should get to sleep.  Can't kill the bad guys without a beauty nap!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-11Sorry
  SAY ~Oh don't get all apologetic.  Not all of us are gifted with a memory like mine!~
  =
  ~Anyways, we should get to sleep.  Can't kill the bad guys without a beauty nap!~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-11False
  SAY ~Huh?  I think I'd remember my *own* past, <CHARNAME>.~
  IF ~~ + MRLoveTalk5-12
END

IF ~~ MRLoveTalk5-11What
  SAY ~"What?"  Whaddya mean, "what"?  You heard me just fine!~
  IF ~~ + MRLoveTalk5-12
END

IF ~~ MRLoveTalk5-12
  SAY ~I spent all my life in Candlekeep, just like you!  How in Oghma's name could you forget that?~
  ++ ~imoen, it's you who doesn't remember it all... you came to Candlekeep when you were ten. Of that, I am completely sure.~ + MRLoveTalk5-13
  ++ ~Oh, yeah, you're right! Sorry, I was confused.~ + MRLoveTalk5-11Vague
  ++ ~Oh, very well, you're right, you were born there... I'm sorry for pestering you.~ + MRLoveTalk5-11Sorry
END

IF ~~ MRLoveTalk5-13
  SAY ~(Your continued pestering seem to be upsetting her... quite a lot)  What the Hell is wrong with you?  I was born in Candlekeep, my mother died giving birth to me and my father a year or two later.  Ol' Puffguts took care of me like I was his own daughter.~
  = ~C'mon, we heard that story tons of times growing up!~
  ++ ~imoen...? I can assure you that that's not true.~ + MRLoveTalk5-14
  ++ ~Are you mad or what?~ + MRLoveTalk5-14
  ++ ~Well, now that you put it that way, I don't know...~ + MRLoveTalk5-11Vague
  ++ ~I'm sorry Imoen, I think you're right, I was mistaken.~ + MRLoveTalk5-11Vague
END

IF ~~ MRLoveTalk5-14
  SAY ~(She glares at you, narrowing her eyes to thin slits... almost menacingly.)~
  =
  ~Are you questioning my *own* memories, <CHARNAME>?~
  ++ ~I'm not questioning anything. I'm just telling the truth, and the truth is that you are tremendously wrong.~ + MRLoveTalk5-14Wrong
  ++ ~well, prove you were born in Candlekeep then.~ + MRLoveTalk5-15
  ++ ~Uh... um... no, of course not! You're right, I was mistaken, I'm sorry.~ + MRLoveTalk5-11Vague
  ++ ~No, Imoen, I'm not; just drop it, you were right.~ + MRLoveTalk5-11Vague
END

IF ~~ MRLoveTalk5-14Wrong
  SAY ~Oh yeah?  (She places her hands on her hips)  And what makes you so damned sure you're right?~
  ++ ~Well, prove you were born in Candlekeep then.~ + MRLoveTalk5-15
  ++ ~Uh... um... no, of course not! You're right, I was mistaken, I'm sorry.~ + MRLoveTalk5-11Vague
  ++ ~No, Imoen, I wasn't; just drop already, you were right.~ + MRLoveTalk5-11Vague
END

IF ~~ MRLoveTalk5-15
  SAY ~Prove... that I...?? And how am I supposed to do that, you toadwart?~
  ++ ~just tell me any memory you have from *before* you were ten...~ DO ~SetGlobal("MRTenYearTalkHappened","GLOBAL",1)~ + MRLoveTalk5-16
  ++ ~You don't have to, since I now realize that you're right after all... I was mistaken, I'm sorry.~ DO ~SetGlobal("MRTenYearTalkHappened","GLOBAL",1)~ + MRLoveTalk5-11Vague
  ++ ~Bah, it doesn't matter! Just shut up already, you were right.~ DO ~SetGlobal("MRTenYearTalkHappened","GLOBAL",1)~ + MRLoveTalk5-11Vague
END

IF ~~ MRLoveTalk5-16
  SAY ~(Imoen remains speechless for a while, swimming through her memories to find something related to what you asked.)~
  =
  ~I... ummmm...~
  ++ ~Take your time...~ + MRLoveTalk5-17
  ++ ~You don't remember anything, now do you...?~ + MRLoveTalk5-17
  ++ ~the first book you read... the two of us playing together... any familiar faces... no memories of anything until you were ten.~ + MRLoveTalk5-17
END

IF ~~ MRLoveTalk5-17
  SAY ~Just gimme a minute, sheesh.  I'm tired, and you ranting at me isn't helping.~
  ++ ~Give up, Imoen... there's no memory you can find.~ + MRLoveTalk5-18
  + ~CheckStatGT(Player1,12,CHR)~ + ~(make up something to see if she falls in the trap) So Imoen... you don't even remember when I 'accidentally' ate some toadstool you *assured me* was perfectly edible...? I was sick for at least two weeks, it almost killed me! We were only six when that happened.~ + MRLoveTalk5-17Lie
  + ~!CheckStatGT(Player1,12,CHR)~ + ~(Make up something to see if she falls in the trap) So Imoen... you don't even remember when I 'accidentally' ate some toadstool you *assured me* was perfectly edible...? I was sick for at least two weeks, it almost killed me! We were only six when that happened.~ + MRLoveTalk5-17Lie2
  ++ ~Haha, don't tell me you have doubts already! It was all a joke, you were right from the beginning!~ + MRLoveTalk5-17Jerk
END

IF ~~ MRLoveTalk5-17Lie
  SAY ~(She glances at you, obviously doubtful and confused. Not knowing what to do, she takes the risk.)~
  =
  ~Of- of course I remember that! Heheh, you changed colors so fast...~
  =
  ~(This is even more troubling than you thought. You don't really know what will happen if you continue to press her about this subject. This belief seems deeply rooted in her mind.)~
  ++ ~Your insecurity proves to me that you remember absolutely nothing of your past. That you have fallen for such an obvious trap is proof enough for me to see how desperate you are to find an argument in your favor.~ + MRLoveTalk5-18
  ++ ~hmmm... Imoen, that was a lie. I'm sorry to say none of that happened. I never ate any poisonous mushrooms, I just invented that story now.~ + MRLoveTalk5-18
  ++ ~Yeah, heh, and remember what Gorion said? "Never, *ever* trust Imoen again, <CHARNAME>; that's an order!" hahahah.~ + MRLoveTalk5-17Jerk
END

IF ~~ MRLoveTalk5-17Lie2
  SAY ~(She glances at you doubtfully, then decides to take the risk.)~
  =
  ~That didn't happen at all, did it? You're just trying to trick me! (She huffs with a mocking smile.)  Besides, you're contradicting yourself... by saying that we didn't meet until I was ten but then saying we were together when we were six!~
  =
  ~I know my own past, <CHARNAME>, thank you.  And honestly it's kinda disappointing that you *don't*.  Maybe you've forgotten it all because of everything that has happened to us, or maybe it wasn't important enough for your memory to keep it.~
  =
  ~Anyways, we should get to sleep, don't you think?~
  =
  ~(She shoves past you and starts to set out her bedroll - a good distance away from you and your troubling questions.  But it is obvious that what you have said has worried her... badly)~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-17Jerk
  SAY ~(Imoen laughs lightheartedly. You have swallowed what you *know*, for the good of both of you...)~
  =
  ~Alright, now that was enough, better if we get some sleep, hmm?~
  =
  ~(She shoves past you and starts to set out her bedroll - a good distance away from you and your troubling questions.  But it is obvious that what you have said has worried her... badly)~
  IF ~~ EXIT
END

IF ~~ MRLoveTalk5-18
  SAY ~Um, I, ahh... (She surely is wondering how she could have fallen for such an obvious trap. She frowns and then lashes out at you angrily.)~
  =
  ~Look, <CHARNAME> - *I* know better than *you* what has happened in MY life, got it?  So let's drop this *stupid* conversation before I throw a fireball at your eyebrows!~
  =
  ~(She shoves past you and starts to set out her bedroll - a good distance away from you and your troubling questions.  But it is obvious that what you have said has worried her... badly)~
  IF ~~ EXIT
END


//** Love Talk 6 - Irenicus' Torture **//

//** Must happen directly upon entering Suldanessellar **//

IF ~Global("MRLoveTalk","GLOBAL",12) !Global("ImoenRomanceActive","GLOBAL",3)~ THEN BEGIN MRLoveTalk6
  SAY ~I... I need to talk to you, <CHARNAME>.~
  = ~Alone.~
  ++ ~You and everyone else.  Wait your turn.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk6-Insist
  ++ ~We're kinda busy. Can it wait?~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk6-Insist
  + ~NumInPartyGT(2)~ + ~of course.  (Motion her to step away from the group)~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk6-1
  + ~!NumInPartyGT(2)~ + ~of course, Imoen.  What's wrong?~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1) IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk6-1
  ++ ~Sure.  Make it quick.~ DO ~IncrementGlobal("MRLoveTalk","GLOBAL",1)~ + MRLoveTalk6-1
END

IF ~~ MRLoveTalk6-Insist
  SAY ~*Now*, <CHARNAME>.~
    ++ ~No.  Now is not the time!~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk6-End
    ++ ~Don't order me around.  Don't think I won't treat you just like any other upstart mage I've met.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk6-Threat
    + ~NumInPartyGT(2)~ + ~of course.  (Motion her to step away from the group)~ + MRLoveTalk6-1
    + ~!NumInPartyGT(2)~ + ~of course, Imoen.  What's wrong?~ + MRLoveTalk6-1
    ++ ~Sure.  Make it quick.~ + MRLoveTalk6-1
    + ~Gender(Player1,MALE)~ + ~Oh gods.  Are you pregnant?~ + MRLoveTalk6-Preg
END

IF ~~ MRLoveTalk6-Preg
  SAY ~What?  No!  It has nothing to do with that!  At all!~
    ++ ~Oh.  Well in that case - Now is not the time!~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",-1)~ + MRLoveTalk6-End
    + ~NumInPartyGT(2)~ + ~well, let's talk over here then.  (Motion her to step away from the group)~ + MRLoveTalk6-1
    + ~!NumInPartyGT(2)~ + ~well, what is it then?  What's wrong?~ + MRLoveTalk6-1
END

IF ~~ MRLoveTalk6-Threat
  SAY ~Are you- did you just *threaten* me?~
  IF ~GlobalLT("MRKinCounter","GLOBAL",10) GlobalGT("MRCorCounter","GLOBAL",3)~ + MRLoveTalk6-ThreatLeave
  IF ~OR(2)
    !GlobalGT("MRCorCounter","GLOBAL",3)
    !GlobalLT("MRKinCounter","GLOBAL",10)~ + MRLoveTalk6-ThreatStay
END

IF ~~ MRLoveTalk6-ThreatLeave
  SAY ~You seriously have the nerve to threaten me, when you consistently treat me like dirt to begin with?~
  = ~Well, lemme tell ya what, '<PRO_BROTHERSISTER>' - I've got my limits, too.  And you just crossed them.~
  = ~Find some other 'upstart mage' to save your ass.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) SetGlobal("MRConsequences","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ MRLoveTalk6-ThreatStay
  SAY ~You're a bastard.  You didn't even know what I was going to say!  And now you never will.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRCorCounter","GLOBAL",1)~ EXIT
END

IF ~~ MRLoveTalk6-End
  SAY ~But-  (Her lips press together tightly as she struggles with her emotions.  Apparently whatever she was about to tell you was important.  Very important.)  You didn't even know what I was going to say!~
  = ~And now you never will.~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRCorCounter","GLOBAL",1)~ EXIT
END

IF ~~ MRLoveTalk6-1
  SAY ~I...~
  IF ~NumInPartyGT(2)~ + MRLoveTalk6-1_1
  IF ~!NumInPartyGT(2)~ + MRLoveTalk6-1_2
END

IF ~~ MRLoveTalk6-1_1
  SAY ~(You both step a safe distance away from the group, and Imoen lowers her voice as she turns to you with a suddenly-striken face)~
  IF ~~ + MRLoveTalk6-1a
END

IF ~~ MRLoveTalk6-1_2
  SAY ~(Imoen lowers her voice as she turns to you with a suddenly-striken face)~
  IF ~~ + MRLoveTalk6-1a
END

IF ~~ MRLoveTalk6-1a
  SAY ~I- I can't do this, <CHARNAME>.  I can't.~
  ++ ~do what?  What are you talking about?~ + MRLoveTalk6-2
  ++ ~You can and you will!  That's an order!~ + MRLoveTalk6-2a
  ++ ~Umm.... okay...?~ + MRLoveTalk6-2
END

IF ~~ MRLoveTalk6-2a
  SAY ~No, I-  I can't! Because of...~
  IF ~~ + MRLoveTalk6-2
END

IF ~~ MRLoveTalk6-2
  SAY ~*Him*!  Irenicus!  You have no idea what he did to me, <CHARNAME> - no idea.  An' I thought I was strong enough to just- just *ignore* it, but I'm not.~
  = ~I'm scared.  I can't face him again.  I just can't.~
  ++ ~You faced Bodhi down without a problem.~ + MRLoveTalk6-3
  ++ ~Oh c'mon, I got tortured too - it wasn't THAT bad.~ + MRLoveTalk6-3
  + ~NumInPartyGT(2)~ + ~yes, you can, Im.  You're not alone now.  We're here to protect you this time.~  + MRLoveTalk6-3
  + ~!NumInPartyGT(2)~ + ~yes, you can, Im.  You're not alone now.  I'm here to protect you this time.~  + MRLoveTalk6-3
END

IF ~~ MRLoveTalk6-3
  SAY ~You don't *understand*!  (She yanks up one of her sleeves and shoves her arm in your face)  D'you think a few scars is all he did to me?  You really think he's that unimaginative?~
  = ~He had *decades* to design his 'experiments'.  And magic doesn't always leave marks.~
  = ~You of all people should know that.~
  ++ ~but, Imoen, you are stronger than-~ + MRLoveTalk6-4
  ++ ~Stop being such a snivelling little-~ + MRLoveTalk6-4
  ++ ~Never fear!  I, <CHARNAME>, shall-~ + MRLoveTalk6-4
  ++ ~I know, but-~ + MRLoveTalk6-4
END

IF ~~ MRLoveTalk6-4
  SAY  ~(She abruptly shoves you backwards, her fear transforming into anger at your words)  No!  YOU should've been there!  It's YOUR fault!~
  =
  ~You just- you just STOOD there and let him take me!  You pranced around Athkatla playing adventure while I rotted in that cell!~
  =
  ~While he cut me open, while he chained me down, while he turned me inside out piece by piece and showed me what was inside!  He was in my mind, in my brain, in my *soul*...~
  =
  ~And then he'd heal me.  Rip the skin off my body and heal me.  Crack open my mind and then heal me.  Dissect me, enchant me, possess me, grind me down until I didn't know where I was - until I didn't know *who* I was.~
  =
  ~(Tears glitter in her eyes, and now they spill down her cheeks as the emotions overwhelm her.  Her body trembles, but her fists remain clenched tightly at her sides)  You don't know.  You've got no idea.  He never touched you!  Not like that.  Not like me.~
  ++ ~Do NOT blame me!  I busted my butt to come save you as fast as I could!~ + MRLoveTalk6-4End
  ++ ~No?  Irenicus tortured me, too, Imoen - don't play the martyr with me!~ + MRLoveTalk6-4MeToo
  ++ ~Are we done with this sob-story?  'Cause I've still got a bad guy to kill.~ + MRLoveTalk6-4End
  ++ ~imoen... I had no idea... I'm sorry.~ + MRLoveTalk6-5
  ++ ~Hey, that kinda sounds like fun!~ + MRLoveTalk6-4Joke
END

IF ~~ MRLoveTalk6-4MeToo
  SAY ~I'm not playing the martyr!  I know what he did to you.  Don't you think I was there?  Don't you think he made me watch every time he sliced you open?~
  ++ ~Then do NOT blame me!  I busted my butt to come save you as fast as I could!~ + MRLoveTalk6-4End
  ++ ~Are we done with this sob-story?  'Cause I've still got a bad guy to kill.~ + MRLoveTalk6-4End
  ++ ~Imoen... I had no idea... I'm sorry.~ + MRLoveTalk6-5
END

IF ~~ MRLoveTalk6-4Joke
  SAY ~Like...fun?  (Her eyes narrow dangerously)  You think this is a JOKE?  You think what he *did* to me, is a joke??~
  = ~I- I can't believe that I ever even *dreamt* that you would understand!~
  IF ~~ + MRLoveTalk6-4End2
END

IF ~~ MRLoveTalk6-4End
  SAY ~You-  you think this is all about you!  I can't believe you!~
  IF ~~ + MRLoveTalk6-4End2
END

IF ~~ MRLoveTalk6-4End2
  SAY ~I've got half a mind to leave you here and let you face him on your own.  Maybe then you'd understand!~
  = ~Just... just don't talk to me!  Don't touch me, don't look at me!~
  IF ~~ DO ~SetGlobal("ImoenRomanceActive","GLOBAL",3) IncrementGlobal("MRKinCounter","GLOBAL",-4)~ EXIT
END

IF ~~ MRLoveTalk6-5
  SAY ~I can't face him, <CHARNAME>.  If I do I know I'll just break down and panic and- and-~
  ++ ~it's okay, Imoen.  I understand.  You don't have to.  You really don't.~ DO ~IncrementGlobal("MRKinCounter","GLOBAL",1)~ + MRLoveTalk6-6
  ++ ~You're not going to abandon me, are you??  After all we've been through?~ + MRLoveTalk6-4End
  ++ ~And become a liability?  Best you if don't continue then.~ + MRLoveTalk6-6
  ++ ~I get it - you're a coward.  Well I don't need you!  Get lost!~ + MRLoveTalk6-4End
END

IF ~~ MRLoveTalk6-6
  SAY ~Are... are you sure?~
  ++ ~No, I'm not sure!  You have to come!  You just have to!~ + MRLoveTalk6-7
  ++ ~well... I would miss you, but... if it's better for you...~ + MRLoveTalk6-7
  ++ ~I'm sure.  It's better if you stay behind.~ + MRLoveTalk6-7
  ++ ~Just get lost.~ + MRLoveTalk6-7
END

IF ~~ MRLoveTalk6-7
  SAY ~(She purses her lips, her expression conflicted and torn.  Obviously this decision is not an easy one for her)~
  IF ~GlobalLT("MRKinCounter","GLOBAL",35)~ + MRLovetalk6-7Leave
  IF ~GlobalGT("MRKinCounter","GLOBAL",34)~ + MRLoveTalk6-7Stay
END

IF ~~ MRLoveTalk6-7Stay
  SAY ~No... no, I can't leave you.  No matter how scared I am, I can't just leave you.~
  = ~You- you mean too much to me.  And I know that as long as you're here, I'll be safe.~
  = ~(She takes your hands in hers and squeezes them tightly)  Sorry I freaked out, <CHARNAME>.  I'll be okay.  I promise.~
  = ~Just... let's go before I change my mind.~
  IF ~~ EXIT
END

IF ~~ MRLovetalk6-7Leave
  SAY ~If... if you're sure....~
  = ~I- I'm sorry, <CHARNAME>.  I thought... I thought I was stronger than this, but I just can't.  I can't.  I'm so ashamed, but I can't.~
  = ~Goodbye...and good luck.  I'm sorry.~
  IF ~~ DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END
END