APPEND AERIEJ
IF ~Global("MRAerieBanterFire","GLOBAL", 2)~
MRDreamComment
  SAY ~<CHARNAME>... y-you were talking in your sleep last night...~
  = ~You c-c-called Imoen's name.  You must really m-miss her.~
  ++ ~It's really none of your business, is it?~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRAerieBanterFire","GLOBAL", 3)~ + MRDreamComAer
  ++ ~I do... and actually, I've been dreaming of her a lot lately.~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRAerieBanterFire","GLOBAL", 3)~ + MRDreamComAer2
END
END

// ***Aerie***

APPEND AERIEJ

IF ~~ MRDreamComAer
  SAY ~Uh, okay then...~
  IF ~~ EXIT
END

IF ~~ MRDreamComAer2
  SAY ~Oh... umm... alright...~
  =
  ~And, err... w- were they pleasant dreams?~
  ++ ~Well they were... strange.~ + MRDreamComAer3
  ++ ~Oh, yeah, sure!~ + MRDreamComAer3
  ++ ~Not at all... they made me feel uncomfortable.~ + MRDreamComAer3
  ++ ~Oh, I just wanted you to know that. Let's go on!~ + MRDreamComAer
END

IF ~~ MRDreamComAer3
  SAY ~Oh?  And why is that?~
  ++ ~She told me of events long past, when we both lived together in Candlekeep.~ + MRDreamComAerYouth
  ++ ~She asked me weird questions implying that at certain points of my life I loved her... and then she ardently kissed me.~ + MRDreamComAerKissed
  ++ ~I appeared with an axe in my hands; then, I approached Imoen, cut her in little pieces, drank her blood, and ate her flesh.~ + MRDreamComAerBlood
  ++ ~Well I was in a field near Candlekeep and I was completely nude. So was Imoen. I pulled her to the ground and then I... (Describe, in great detail, what you did with Imoen.)~ + MRDreamComAerPerv
  ++ ~Umm... better if you forget about it, it's nothing really.~ + MRDreamComAer
END

IF ~~ MRDreamComAerPerv
  SAY ~(Aerie's eyes open wider and wider as you tell your 'tale', until she can't stand it anymore.)~
  =
  ~S-s-stop, stop it! That's so... so inappropriate!  Why are you telling me all this?~
  ++ ~Oh c'mon Aerie, I was only joking! What really happened is that she told me of events long past, when we both lived together in Candlekeep.~ + MRDreamComAerYouth
  ++ ~Oh c'mon Aerie, I was only joking! She only asked me weird questions implying that at certain points of my life I loved her... and then she ardently kissed me.~ + MRDreamComAerKissed
  ++ ~Uhh... I don't know?~ + MRDreamComAerDunno
  ++ ~Well I thought I should initiate you to the arts of sex.~ + MRDreamComAerIntro
  + ~InParty("Viconia")~ + ~But.. aren't you a nymphomaniac elf?~ + MRDreamComAerVic
  + ~!InParty("Viconia")~ + ~But... aren't you a nymphomaniac elf?~ + MRDreamComAerVic2
END

IF ~~ MRDreamComAerBlood
  SAY ~(Aerie's eyes open wider and wider as you tell your 'tale', until she can't hold it anymore.)~
  =
  ~Y- you are a sadistic, disgusting <PRO_MANWOMAN>! Why are you telling me about such horrible dreams?~
  ++ ~Oh c'mon Aerie, I was only joking! What really happened is that she told me of events long past, when we both lived together in Candlekeep.~ + MRDreamComAerYouth
  ++ ~Oh c'mon Aerie, I was only joking! She only asked me weird questions implying that at certain points of my life I loved her... and then she ardently kissed me.~ + MRDreamComAerKissed
  ++ ~Uhh... I don't know?~ + MRDreamComAerDunno
  ++ ~Well I thought I should initiate you to the arts of blood and carnage.~ + MRDreamComAerIntro
  IF ~InParty("Viconia")~ THEN REPLY ~Huh? Aren't you one of those cruel and bloodthirsty elves?~ + MRDreamComAerVic
  IF ~!InParty("Viconia")~ THEN REPLY ~Huh? Aren't you one of those cruel and bloodthirsty elves?~ + MRDreamComAerVic2
END

IF ~~ MRDreamComAerVic
  SAY ~No!  That's... that's this drow, Viconia! I'm an Avariel, a flying elf, lover of art and GOOD things!~
  =
  ~You should pair with her, I'm sure she has dreams much like yours!~
  =
  ~(Aerie shudders and quickly moves away from you.)~
  IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComAerVic2
  SAY ~No! That's... that's a drow! I'm an Avariel, a flying elf, lover of art and GOOD things!~
  =
  ~That was very sickening, <CHARNAME>!  Please never talk to me about things like that again!~
  =
  ~(Aerie shudders and quickly moves away from you)~
  IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComAerIntro
  SAY ~Well you thought wrong! Th- That was d-d-disgusting, <CHARNAME>!~
  =
  ~Please never talk to me about things like that again!~
  =
  ~(Aerie shudders and quickly moves away from you)~
  IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComAerDunno
  SAY ~You don't know?  Y- you're mad! Do you often tell things like that to your companions for no reason at all?~
  =
  ~That was very d-d-disgusting, <CHARNAME>! Please never talk to me about things like that again!~
  =
  ~(Aerie shudders and quickly moves away from you.)~
  IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComAerYouth
  SAY ~Candlekeep? That's where you lived, a stronghold for wisdom... right?~
  =
  ~And this Imoen... what manner of events did she show you? (You can't tell if Aerie is truly interested or is just being polite to you.)~
  ++ ~Well to tell the truth, I don't remember them clearly... the only thing that is clear in my head are the avid kisses she gave me when the dreams were over.~ + MRDreamComAerKissed
  ++ ~In the first one, she showed me a scene when we were very young and I had saved her from a goblin. The second one was an event that took place some years after that. It was about a day when we went to have a bath in the small lake near Candlekeep.~ + MRDreamComAerYouth2
  ++ ~(Try to embarrass her) She showed me several scenes where I had sex with her; starting from when we were about fifteen years old... (describe every detail.)~ + MRDreamComAerSex2
  ++ ~(Try to scare her) She showed me several scenes of the slaughters and massacres we committed together within Candlekeep; from cows to cute little rabbits, there was blood everywhere. It was great.~ + MRDreamComAerBlood2
  ++ ~Aerie, if you are not in the mood to talk about these dreams, I don't mind, I understand...~ + MRDreamComAerPreEnd
  ++ ~Seeing how enthusiastic you are, I might as well tell it to that rock over there. Get lost, wingless.~ + MRDreamComAerCruelEnd
END

IF ~~ MRDreamComAerCruelEnd
  SAY ~(You can tell from her expression that you have hurt Aerie's feelings badly.)~
  =
  ~That... that was cruel, <CHARNAME>... I was just trying to... to b- be polite.~
  =
  ~(She seems on the brink of tears as she looks away from you.)~
  IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComAerPreEnd
  SAY ~Oh, no, no, please, continue! It's only that... well, I can't be of much help to you since I don't know Imoen yet.~
  ++ ~Oh, alright... the issue is that I don't remember them clearly... the only thing that is clear in my head are the avid kisses she gave me when the dreams were over.~ + MRDreamComAerKissed
  ++ ~Don't worry... well; in the first one, she showed me a scene when we were very young and I had saved her from a goblin. The second one was an event that took place some years after that. It was about a day when we went to have a bath in the small lake near Candlekeep.~ + MRDreamComAerYouth2
  ++ ~(Try to embarrass her) She showed me several scenes where I had sex with her; starting from when we were about fifteen years old... (describe every detail.)~ + MRDreamComAerSex2
  ++ ~(Try to scare her) She showed me several scenes of the slaughters and massacres we committed together within Candlekeep; from cows to cute little rabbits, there was blood everywhere. It was great.~ + MRDreamComAerBlood2
  ++ ~No, no, it's not important, seriously. Please, let us go on.~ + MRDreamComAer
END

IF ~~ MRDreamComAerBlood2
  SAY ~B- but... (She is nearly speechless. She hadn't thought you'd have called such horrid images dreams rather than 'nightmares'.)~
  =
  ~You... you are horrible! That's so revolting! Why are you telling me that?~
  ++ ~Oh c'mon Aerie, I was only joking! To tell the truth-~ + MRDreamComAerStop
  ++ ~Uhh... I don't know?~ + MRDreamComAerDunno
  ++ ~Well I thought I should initiate you to the arts of blood and carnage.~ + MRDreamComAerIntro
  IF ~InParty("Viconia")~ THEN REPLY ~Huh? Aren't you one of those cruel and bloodthirsty elves?~ + MRDreamComAerVic
  IF ~!InParty("Viconia")~ THEN REPLY ~Huh? Aren't you one of those cruel and bloodthirsty elves?~ + MRDreamComAerVic2
END

IF ~~ MRDreamComAerSex2
  SAY ~B- but... (She is speechless. She hadn't thought you'd have such dreams about someone you considered to be a 'close friend')~
  =
  ~You... you are horrible! That's so revolting! Why are you telling me that?~
  ++ ~Oh c'mon Aerie, I was only joking! To tell the truth-~ + MRDreamComAerStop
  ++ ~Uhh... I don't know?~ + MRDreamComAerDunno
  ++ ~Well I thought I should initiate you to the arts of sex.~ + MRDreamComAerIntro
  IF ~InParty("Viconia")~ THEN REPLY ~Huh? Aren't you a nymphomaniac elf?~ + MRDreamComAerVic
  IF ~!InParty("Viconia")~ THEN REPLY ~Huh? Aren't you a nymphomaniac elf?~ + MRDreamComAerVic2
END

IF ~~ MRDreamComAerStop
  SAY ~No, I don't want to hear any more of this, I've had enough!~
  =
  ~I... I hope you won't tell me things like that again, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ MRDreamComAerYouth2
  SAY ~Oh, then you enjoyed those dreams very much, didn't you?~
  =
  ~Sometimes I dream like that too... I mean, of past times... when I could fly.~
  =
  ~But anyway, you were telling me of your dreams about your friend Imoen... that's all that happened?~
  ++ ~Aerie, if you no longer feel in the mood for this, just tell me, alright?~ + MRDreamComAerPreEnd2
  ++ ~Yeah, well; as she showed me that, she asked me weird questions implying that at certain points of my life I loved her, and then she ardently kissed me.~ + MRDreamComAerKissed
  ++ ~Not really, that is all.~ + MRDreamComAerYouth3
  ++ ~Oh, I forgot to mention that I had sex with her! It was incredible, you see, first... (Start to tell her the details of your fantasies.)~ + MRDreamComAerSex2
  ++ ~Oh, I forgot to mention that everything was covered in blood and innards, and when the killings were over we drank from rivers of blood and feasted on the flesh of countless children!~ + MRDreamComAerBlood2
  ++ ~Pay attention, you wingless freak!~ + MRDreamComAerCruelEnd
END

IF ~~ MRDreamComAerYouth3
  SAY ~Oh... then what's the problem? That seems enjoyable enough.~
  =
  ~I wish I could have such pleasant dreams more often...~
  IF ~~ EXIT
END

IF ~~ MRDreamComAerPreEnd2
  SAY ~N- no, I'm fine... it was just some random memories that filled my mind for a moment...~
  =
  ~Please, go on.~
  ++ ~Alright then... as she showed me that, she asked me weird questions implying that at certain points of my life I loved her, and then she ardently kissed me.~ + MRDreamComAerKissed
  ++ ~Anyway I was finished already. That is all.~ + MRDreamComAer
  ++ ~Oh, I forgot to mention that I had sex with her! It was incredible, you see, first... (Start to tell her the details of your fantasies.)~ + MRDreamComAerSex2
  ++ ~Oh, I forgot to mention that everything was covered in blood and innards!~ + MRDreamComAerBlood2
END

IF ~~ MRDreamComAerKissed
  SAY ~Huh...?~
  =
  ~(If you didn't have Aerie's full attention before, you surely do now.)~
  =
  ~B- but I thought you and Imoen were just close friends from childhood... that she was almost a sister to you.~
  ++ ~Calm down, they are only dreams... I said she was my friend, and I assure you she will never be anything more than that to me.~ + MRDreamComAerDeny
  ++ ~They are only dreams, Aerie... however, they were so real they have managed to confuse me... I don't know what to think anymore.~ + MRDreamComAerMaybe
  ++ ~Although they are dreams, they have been so real that now I see things rather differently.~ + MRDreamComAerMaybe
  ++ ~Well, I lied. Those dreams are the manifestation of my hidden desires towards her, now I see that clearly.~ + MRDreamComAerAdmit
  ++ ~Yeah, but what I didn't say is that IT'S NONE OF YOUR BUSINESS. Get lost, you wingless wench.~ + MRDreamComAerCruelEnd2
END

IF ~~ MRDreamComAerCruelEnd2
  SAY ~(Aerie looks very surprised by your words.)~
  =
  ~B- but why? Why did you tell me that if you didn't want me to... to...~
  =
  ~(Her eyes are filled with tears. You have truly broken her fragile heart.)~
  =
  ~(Crying, she turns around and runs away. You are certain that you won't see her again... just as you commanded.)~
  IF ~~ DO ~ReputationInc(-2) ActionOverride(Player1,ApplySpellRES("SPMRACNE",Player1)) 
  LeaveParty()
  EscapeArea()~
EXIT
END

IF ~~ MRDreamComAerAdmit
  SAY ~That- that's quite...uh... dis- dis...~
  =
  ~Could we go now?  P- please?~
  IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComAerMaybe
  SAY ~Oh...~
  =
  ~W- well, I can't give you any advice... I don't know Imoen at all. I can only say that you should just follow your heart. Many times, it is the wisest part of our being.~
  =
  ~We've b- been talking for quite a while now... if you are done, we sh- should get moving.~
IF ~~ EXIT
END

IF ~~ MRDreamComAerDeny
  SAY ~Oh, then I guess those dreams were just some... random reverie experiences, heheh.~
  =
  ~Oh well... we have been talking for quite a while now... if you are done, we should get moving.~
  IF ~~ EXIT
END
END