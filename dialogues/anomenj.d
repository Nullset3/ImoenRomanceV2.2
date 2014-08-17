 APPEND ANOMENJ
IF ~Global("MRAnomenBanterFire","GLOBAL", 2)~
MRDreamComment
  SAY ~<CHARNAME>... something is bothering you.  It is as clear on your face as Pelor's light.~
  ++ ~As wise as always, Anomen.  Imoen has been foremost in my dreams lately.~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRAnomenBanterFire","GLOBAL", 3)~ + MRDreamComAno2
  ++ ~There's nothing bothering me, Anomen.  You're imagining things.~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRAnomenBanterFire","GLOBAL", 3)~ + MRDreamComAno
END


IF ~~ MRDreamComAno
  SAY ~As you wish.~
  IF ~~ EXIT
END

END

CHAIN ANOMENJ MRDreamComAno2
  ~Sometimes...~
  == ANOMENJ IF ~Global("AnomenDecide","GLOBAL",0)~ THEN ~Sometimes I dream of my sister Moira as well.  It has been… too long, since I saw her last.~
  == ANOMENJ IF ~!Global("AnomenDecide","GLOBAL",0)~ THEN ~I dream of Moira as well.  I shall…  I shall never forget her.~
END
  ++ ~Yes… well… ah… Let’s move on, shall we?~ + MRDreamComAno
  ++ ~Not *those* types of dreams… at least, I hope not.~ + MRDreamComAno3
  ++ ~You have hot dreams about your sister, too?~ + MRDreamComAno3


APPEND ANOMENJ

IF ~~ MRDreamComAno3
  SAY ~I beg your pardon?~
  ++ ~Uh…actually, nevermind.~ + MRDreamComAno
  ++ ~Well, my dreams were… unusual, to say the least.  (Tell him, leaving out the kissing)~ + MRDreamComAno4
  ++ ~Well, my dreams were… unusual, to say the least.  (Tell him, including the kissing)~ + MRDreamComAno5
  ++ ~I’ve been having these really graphic dreams about Imoen… (Lie and try your best to shock him right out of his armor)~ + MRDreamComAnoDirty
END

END

CHAIN ANOMENJ MRDreamComAnoDirty
  ~You— that is despicable!  She is your friend!  Practically your sister!~
  == ANOMENJ IF ~!ReputationGT(Player1,8)~ THEN ~From a scoundrel like you I should have expected as much.  Nay – even the filthiest swine in Faerun would not stoop so low!~
  == ANOMENJ IF ~ReputationGT(Player1,8) ReputationLT(Player1,13) Gender(Player1,MALE)~ THEN ~I— I cannot believe that any man could even *think* such a thing!~
  == ANOMENJ IF ~ReputationGT(Player1,8) ReputationLT(Player1,13) Gender(Player1,FEMALE)~ THEN ~And how could two women-  That is unthinkable.  A perversion!~
  == ANOMENJ IF ~ReputationGT(Player1,13)~ THEN ~I thought you walked the path of righteousness.  Clearly I was mistaken!~
END
  ++ ~I was just kidding!  Geez!~ EXTERN ANOMENJ MRDreamComAnoNext
  ++ ~Like you never had thoughts like those about-~ EXTERN ANOMENJ MRDreamComAnoDirty2
  IF ~!ReputationGT(Player1,8)~ EXTERN AnomenJ MRDreamComAnoAttack


APPEND ANOMENJ

IF ~~ MRDreamComAnoDirty2
SAY ~No!  Do not dirty her name!~
IF ~~ + MRDreamComAnoAttack
END

IF ~~ MRDreamComAnoAttack
SAY ~I won’t tolerate your foul existence any longer.  Prepare yourself!~
IF ~~ DO ~SetGlobal("AnomenJoined","LOCALS",0) LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ MRDreamComAnoNext
  SAY ~Spare me your sick so-called humor.  I do not find it amusing in the slightest.~
  =
  ~Do you have something meaningful to tell me, <CHARNAME>, or shall we continue on our journey?~ 
  ++ ~ Actually… let’s just go.~  + MRDreamComAno
  ++ ~ No… I’m sorry.  It’s important, actually.  (Tell him, leaving out the kissing)~ + MRDreamComAno4
  ++ ~No… I’m sorry.  It’s important, actually.  (Tell him, including the kissing) ~ + MRDreamComAno5
END

IF ~~ MRDreamComAno4
  SAY ~Is that all?~
  IF ~Global("AnomenIsKnight","GLOBAL",1) ~ + MRDreamComAno4_1
  IF ~!Global("AnomenIsKnight","GLOBAL",1) ~ + MRDreamComAno4_2
END

IF ~~ MRDreamComAno4_1
  SAY ~That you seek my wisdom as a Knight of the Order is understandable, but even the most ungifted of souls could see the meaning in this.~
  IF ~~ + MRDreamComAno4_3
END

IF ~~ MRDreamComAno4_2
  SAY ~Perhaps I am… less wise than I once thought, <CHARNAME>, but even the most ungifted of souls could see the meaning in this.~
  IF ~~ + MRDreamComAno4_3
END

IF ~~ MRDreamComAno4_3
  SAY ~You feel guilty about Imoen’s predicament.  You feel guilty for letting her down, now and in the past.  You dream of her begging you for help, and forgiving you when you help her.~
  = ~Obvious, isn’t it?~
  ++ ~You’re right – that’s all it is.  Thank you, Anomen.  Let’s keep moving.~ + MRDreamComAno
  ++ ~I really think it’s more than that, Anomen.  Or that it might be.~ + MRDreamComAno45
  + ~Global("AnomenRomanceActive","GLOBAL",2)~ + ~Well thanks, Captain Obvious.  That was no help at all.~ + MRDreamComAno6_3
  + ~!Global("AnomenRomanceActive", "GLOBAL", 2) Global("AnomenIsKnight", "GLOBAL", 1)~ + ~Well thanks, Captain Obvious.  That was no help at all.~ + MRDreamComAno6_1
  + ~!Global("AnomenRomanceActive", "GLOBAL",2)  !Global("AnomenIsKnight","GLOBAL",1)~ + ~Well thanks, Captain Obvious.  That was no help at all.~ + MRDreamComAno6_2
END

IF ~~ MRDreamComAno45
  SAY ~Do you?  And why, pray tell, might that be?~
  ++ ~I... ah… left out a part.  (Confess the rest of the dream)~ + MRDreamComAno5
  ++ ~Nothing.  No, now that I think about it, you must be right.~ + MRDreamComAnoEnd1
  + ~Global("AnomenRomanceActive","GLOBAL",2)~ + ~Well thanks, Captain Obvious.  That was no help at all.~ + MRDreamComAno6_3
  + ~!Global("AnomenRomanceActive", "GLOBAL", 2) Global("AnomenIsKnight", "GLOBAL", 1)~ + ~Well thanks, Captain Obvious.  That was no help at all.~ + MRDreamComAno6_1
  + ~!Global("AnomenRomanceActive", "GLOBAL",2)  !Global("AnomenIsKnight","GLOBAL",1)~ + ~Well thanks, Captain Obvious.  That was no help at all.~ + MRDreamComAno6_2
END

IF ~~ MRDreamComAnoEnd1
  SAY ~Of course I am.  Now, let us quit this idle talk and continue with our quest.~
  IF ~~ EXIT
END

END

CHAIN ANOMENJ MRDreamComAno6_1
  ~You shall not speak to me so, <CHARNAME>!  I am a knight, and you had best remember that.  Show some respect for your betters.~
  = ~Now, let us quit this foolery and continue with our quest.~
EXIT

CHAIN ANOMENJ MRDreamComAno6_2
  ~Lucky for you, <CHARNAME>, that I remain an honorable man despite my disgrace.~
  = ~Let us keep walking, before I give in to the temptation of violence.~
EXIT

CHAIN ANOMENJ MRDreamComAno6_3
  ~Those are very unbecoming words from a lady.~
  = 
  ~I choose to blame such hostility on your monthly cycle and simply forget this conversation.  Now, if you’ll excuse me.~
EXIT

CHAIN ANOMENJ MRDreamComAno5
  ~I… I see.  And from your tone I gather that these were no simple 'friendly' touches.~
  =
  ~I would not have expected this from you, <CHARNAME>.~
  == ANOMENJ IF ~GENDER(Player1,MALE)~ THEN ~ To envision this of your foster-sister…~
  == ANOMENJ IF ~GENDER(Player1,FEMALE) !Global("AnomenRomanceActive","GLOBAL",2)~ THEN ~To envision this of another woman... of your foster-sister...~
  == ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN ~To envision this of… of *anyone* other than your one true love…~
  == ANOMENJ ~I am at a loss for words.~
END
  + ~Global("AnomenRomanceActive","GLOBAL",2)~ + ~Don’t worry, Anomen.  This changes nothing of how I feel for you!~ EXTERN ANOMENJ MRDreamComAnoLove1
  + ~Global("AnomenRomanceActive","GLOBAL",2)~ + ~I... I’m just confused.  But I’m sure that this is just temporary.~ EXTERN ANOMENJ MRDreamComAnoLove1
  + ~Global("AnomenRomanceActive","GLOBAL",2)~ + ~Maybe I do envision my one true love, Anomen...~ EXTERN ANOMENJ MRDreamComAnoLove2
  + ~Gender(Player1,FEMALE) !Global("AnomenRomanceActive","GLOBAL",2)~ + ~Which part are you objecting to – the ‘woman’ or the ‘sister’?~ EXTERN ANOMENJ MRDreamComAno7
  + ~!Global("AnomenRomanceActive","GLOBAL",2)~ + ~I know.  I find it disturbing as well.~ EXTERN ANOMENJ MRDreamComAno8
  + ~!Global("AnomenRomanceActive","GLOBAL",2)~ + ~I know!  What an incredibly hot fantasy… I can’t wait until I get my hands on her for real!~ EXTERN ANOMENJ MRDreamComAnoDirty
  + ~Gender(Player1,MALE)~ + ~Would it be so bad, though?  Love is love, isn’t it?~ EXTERN ANOMENJ MRDreamComAnoLove3


APPEND ANOMENJ
IF ~~ MRDreamComAno7
  SAY ~To both of them, of course!~
  IF ~~ + MRDreamComAnoLove3
END

IF ~~ MRDreamComAno8
  SAY ~At least you have the decency to understand how wrong it is.~
  IF ~~ + MRDreamComAnoLove3
END

IF ~~ MRDreamComAnoLove1
  SAY ~Really?  Then why do I already hear the doubt trembling in your words?~
  IF ~~ + MRDreamComAnoLove3
END

IF ~~ MRDreamComAnoLove2
  SAY ~You… you believe you love her?~
  =
  ~You—you choose this SICKNESS over me?~
  ++ ~I... I’m just confused.  But I’m sure that this is only temporary, Anomen.~ + MRDreamComAnoLove1
  ++ ~No!  No, that’s not what I mean, Anomen, not at all!~ + MRDreamComAnoLove1
  ++ ~You are a fine and noble man, Anomen.  But my heart-~ + MRDreamComAnoLove2
END

IF ~~ MRDreamComAnoLove3
  SAY ~What you dream of is not ‘love’, <CHARNAME>.  It is perversion and immorality.  It is a sickness that the gods have denounced and which every sensible soul shrinks from in disgust.~
  =
  ~Pray tonight.  Pray tonight and every night thereafter that this pestilence is cleansed from your mind.  That is all the advice that I can give.~
  IF ~~ EXIT
  IF ~Global("AnomenRomanceActive","GLOBAL",2)~ + MRDreamComAnoLove3_1
END

IF ~~ MRDreamComAnoLove3_1
  SAY ~And stay away from me.  I’ll not have such filth near me, much less in my bedroll.~ 
  IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

END
