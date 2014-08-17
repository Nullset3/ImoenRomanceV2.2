/* DREAM COMMENTS FROM ROMANTIC INTERESTS [COMPLETED] */

/*** Note to Kat -- need some coding done down in Anomen's area -- it's marked as a comment ***/

APPEND AERIEJ
IF ~Global("MRHadDream2","GLOBAL",1)
!GlobalGT("Chapter","GLOBAL",3)
!Global("MRDreamRomanceComment","LOCALS",1)
OR(2)
  Time(DAWN_START)
  Time(DAWN_END)~
MRDreamComment
  SAY ~<CHARNAME>... y-you were talking in your sleep last night...~
  = ~You c-c-called Imoen's name.  You must really m-miss her.~
  ++ ~It's really none of your business, is it?~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1)~ + MRDreamComAer
  ++ ~I do... and actually, I've been dreaming of her a lot lately.~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1)~ + MRDreamComAer2
END
END

APPEND VICONIJ
IF ~Global("MRHadDream2","GLOBAL",1)
!GlobalGT("Chapter","GLOBAL",3)
!Global("MRDreamRomanceComment","LOCALS",1)
OR(12)
  AreaCheck("AR1100")
  AreaCheck("AR1101")
  AreaCheck("AR1102")
  AreaCheck("AR1103")
  AreaCheck("AR1104")
  AreaCheck("AR1105")
  AreaCheck("AR1106")
  AreaCheck("AR1200")
  AreaCheck("AR1201")
  AreaCheck("AR1202")
  AreaCheck("AR1203")
  AreaCheck("AR1204")~
MRDreamComment
  SAY ~I hope tonight passes without your constant snivelling and snoring, <CHARNAME>.~
  ++ ~My nights have been restless... I keep dreaming about Imoen...~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1)~ + MRDreamComVic2
  ++ ~And I'd like today to pass without *yours*, Viconia.~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1)~ + MRDreamComVicPreEnd
END
END


APPEND JAHEIRAJ
IF ~Global("MRHadDream2","GLOBAL",1)
!GlobalGT("Chapter","GLOBAL",3)
!Global("MRDreamRomanceComment","LOCALS",1)
AreaType(FOREST)
!Time(DAWN_START)
!Time(DAWN_END)~ 
MRDreamComment
SAY ~<CHARNAME>...~
  = ~Your sleep has been far too restless.  The noise you make could easily betray us to a predator.~
  ++ ~I'm sorry, Jaheira...  Imoen has been haunting my dreams.~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1) ~ + MRDreamComJah2
  ++ ~I don't need you mothering me, Jaheira.  Drop it.~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1) ~ + MRDreamComJah
END
END

APPEND ANOMENJ
IF ~Global("MRHadDream2","GLOBAL",1)
!GlobalGT("Chapter","GLOBAL",3)
!Global("MRDreamRomanceComment","LOCALS",1)
AreaType(DUNGEON)~
MRDreamComment
  SAY ~<CHARNAME>... something is bothering you.  It is as clear on your face as Pelor's light.~
  ++ ~As wise as always, Anomen.  Imoen has been foremost in my dreams lately.~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1)~ + MRDreamComAno2
  ++ ~There's nothing bothering me, Anomen.  You're imagining things.~ DO ~SetGlobal("MRDreamRomanceComment","LOCALS",1)~ + MRDreamComAno
END
END




/* Party comments on PC's dreams */

/* Jaheira */

APPEND JAHEIRAJ
IF ~~ MRDreamComJah
  SAY ~(She raises an eyebrow at you) Very well.~
  IF ~~ EXIT
END

IF ~~ MRDreamComJah2
  SAY ~Is that so?  And what were those dreams about?~
  ++ ~Just... just random memories from when we lived in Candlekeep.~ + MRDreamComJahYouth
  ++ ~They begin in Candlekeep; she appears and begins to tell me about things that happened when we were young.  The dreams feel incredibly real.~ + MRDreamComJahYouth
  ++ ~This 'dream Imoen' shows me past events, asks me odd questions, and we alwaysEND up... uh... kissing each other...~ + MRDreamComJahKiss
  ++ ~(Exaggerate) Sex, and lots of it.  Almost pornographic, really.~ + MRDreamComJahPorn
END

IF ~~ MRDreamComJahPorn
  SAY ~(She looks at you quite surprised)  You-  sexual dreams... about *her*?~
  IF ~~ + MRDreamComJahNext
END

IF ~~ MRDreamComJahKiss
SAY ~Many friends share an occasional embrace.  It is hardly-~
++ ~Passionately, Jaheira.  Like lovers.~ + MRDreamComJahKiss2
END

IF ~~ MRDreamComJahKiss2
  SAY ~(She looks at you quite surprised)  Lovers... with *her*?~
  IF ~~ + MRDreamComJahNext
END

IF ~~ MRDreamComJahYouth
  SAY ~Memories from your youth, I presume?~
  IF ~~ + MRDreamComJahYouth2
END

IF ~~ MRDreamComJahNext
  SAY ~That— that is disturbing, <CHARNAME>.  *Beyond* disturbing.~
  ++ ~Calm down, Jaheira.  They are only dreams, and involved much more than just that.  I'm telling you this because I trust in your understanding and common sense.~ + MRDreamComJahCalm
  ++ ~Yeah, they are incredibly real too. Just thinking about them really turns me on.~ + MRDreamComJahScan
END 

IF ~~ MRDreamComJahScan
  SAY ~(Jaheira is scandalized. She would have never expected you to have such thoughts concerning Imoen.)~
  =
  ~Are you *mad*, <CHARNAME>?!  Imoen is practically a sister to you!  How can you possibly even think about such— such-~
  =
  ~(She takes a deep breath and seems to gather her composure again.  Her gaze on you – and the tone of her voice – turns bitterly cold)~
  =
  ~I do not understand why you tell me about these perversions, <CHARNAME>.  I surely wasn't willing to hear them.~
  =
  ~Now, if you'll excuse me, I think we have someone to rescue and people to avenge.~
  IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComJahCalm
  SAY ~I... *ahem*...  I apologize.  I obviously overreacted, <CHARNAME>.~
  =
  ~There is something more to these dreams then, I presume?~
  IF ~~ DO ~SetGlobal("MRDreamComJahCalm","GLOBAL",1)~ + MRDreamComJahYouth2
END

IF ~~ MRDreamComJahYouth2
  SAY ~What manner of events or memories does she show you?~
  ++ ~Don't know really, it's all fuzzy in my mind. The only thing I remember clearly are her kisses...~ + MRDreamComJahEnd2
  ++ ~Things we did together in our youth.~ + MRDreamComJahNext2
  + ~Global("MRDreamComJahCalm","GLOBAL",1)~ + ~Umm... now that I think about it, it's really too private to discuss.~ + MRDreamComJahWaste
  + ~!Global("MRDreamComJahCalm","GLOBAL",1)~ + ~Umm... now that I think about it, it's really too private to discuss.~ + MRDreamComJahWaste2
  + ~Global("MRDreamComJahCalm","GLOBAL",1)~ + ~All manner of them: in the first one, we mounted a purple oliphant and flew all over Faerun; in the second, we met some sod named 'Oompalendorn' that transported us to the Omblicorn Plane...~ + MRDreamComJahWaste
  + ~!Global("MRDreamComJahCalm","GLOBAL",1)~ + ~All manner of them: in the first one, we mounted a purple oliphant and flew all over Faerun; in the second, we met some sod named 'Oompalendorn' that transported us to the Omblicorn Plane...~ + MRDreamComJahWaste2
END

IF ~~ MRDreamComJahWaste
  SAY ~(Jaheira purses her lips in disapproval) I thought you 'trusted my understanding', <CHARNAME>.~
  IF ~~ + MRDreamComJahWaste3
END

IF ~~ MRDreamComJahWaste2
  SAY ~(Jaheira purses her lips in disapproval)~
  IF ~~ + MRDreamComJahWaste3
END

IF ~~ MRDreamComJahWaste3
  SAY ~I know you are very fond of wasting your own time, but I won't allow you to waste mine. We should get moving.~
  IF ~~ EXIT
END

IF ~~ MRDreamComJahNext2
  SAY ~You have said that already. ~
  ++ ~In the first one, she showed me a scene where we were very young and I saved her from a goblin. The second one was an event that took place some years after that. It was about a day when we went to take a bath in the small lake near Candlekeep.~ + MRDreamComJahNext3
  + ~Global("MRDreamComJahCalm","GLOBAL",1)~ + ~Umm... now that I think about it, it's really too private to discuss.~ + MRDreamComJahWaste
  + ~!Global("MRDreamComJahCalm","GLOBAL",1)~ + ~Umm... now that I think about it, it's really too private to discuss.~ + MRDreamComJahWaste2
END

IF ~~ MRDreamComJahNext3
  SAY ~(She nods, waiting for you to finish.)~
  ++ ~Both dreams were presented as 'proof' that she's... more than just a friend for me... if you know what I mean. Then, we kissed...~ + MRDreamComJahEnd2
  ++ ~And that's all.~ + MRDreamComJahEnd
  + ~Global("MRDreamComJahCalm","GLOBAL",1)~ + ~Umm... now that I think about it, it's really too private to discuss.~ + MRDreamComJahWaste
  + ~!Global("MRDreamComJahCalm","GLOBAL",1)~ + ~Umm... now that I think about it, it's really too private to discuss.~ + MRDreamComJahWaste2
END

IF ~~ MRDreamComJahEnd
  SAY ~That is all? That's all that is troubling you?~
  =
  ~Obviously your subconscious is giving you the moments with Imoen that your conscious being has been deprived of.~
  =
  ~You miss her, <CHARNAME>, and you are worried about her.  You dream of the 'old times' when she was with us.~
  =
  ~It is perfectly natural. I myself sometimes dream about Khalid...~
  =
  ~(She is silent for a second or two, her eyes momentarily looking nowhere, and seems to be lost in her own thoughts.)~
  =
  ~(She quickly regains her poise.) I am sure that when we find her, those dreams will disappear.~
  =
  ~So we had best move on.  We still have to rescue her.~ 
  IF ~~ EXIT
END
END

CHAIN JAHEIRAJ MRDreamComJahEnd2
  ~(Jaheira looks at you with a mixture of thoughtfulness and disbelief.)~
  =
  ~Well...I truly believe that dreams always mean something, <CHARNAME>.~
  =
  ~Although I would have never expected you to have such 'desires' for our Imoen...~
  =
  ~The real question is, what feeling do you have for her right now? ~
  == JAHEIRAJ IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN ~And for me?~
END
  + ~!Global("JaheiraRomanceActive","GLOBAL",2)~ + ~I... I feel... (Fall silent and look away.)~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN JAHEIRAJ MRDreamComJahDis
  + ~Global("JaheiraRomanceActive","GLOBAL",2)~ + ~I... I'm sorry, Jah... (Fall silent and look away.)~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXTERN JAHEIRAJ MRDreamComJahDis
  ++ ~I... I don't know, Jaheira.  I was sure she was only my friend but... those dreams have confused me to the point that I don't know what to believe...~ EXTERN JAHEIRAJ MRDreamComJahUnk
  ++ ~She's my closest friend, and I love her for that, Jaheira. She's almost a sister to me, but she will never be anything more.~ EXTERN JAHEIRAJ MRDreamComJahSib
  ++ ~Well you should know that I've never liked her much. I need her abilities, but personally I find her annoying.~ EXTERN JAHEIRAJ MRDreamComJahAnnoy
  ++ ~Actually, I hope she's dead by now. A burden off my back. I'm trying to get to that place only to find Irenicus.~ EXTERN JAHEIRAJ MRDreamComJahCruel
  ++ ~Those dreams have really made me see that I want to have sex with her.~ EXTERN JAHEIRAJ MRDreamComJahNext

APPEND JAHEIRAJ
IF ~~ MRDreamComJahCruel
  SAY ~(Jaheira is shocked by your cruelty.)~
  =
  ~How can you say such things, <CHARNAME>?? Imoen has helped you since this all began.  She deserves both consideration and respect.~
  =
  ~She has mine, at least. Something *you* certainly do not.~
  IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComJahAnnoy
  SAY ~Although sometimes I could say the same about her, I mostly disagree with your way of thinking. I think you should appreciate the care and concern she has for you, <CHARNAME>.~
  =
  ~That is not something that is found so easily... especially in your case.~
  IF ~~ + MRDreamComJahFinish
END

IF ~~ MRDreamComJahSib
  SAY ~It's good to hear you have a clear idea of your relationship, <CHARNAME>.  It would pain me to see you foster such unnatural yearnings.~
  IF ~~ + MRDreamComJahFinish
END

IF ~~ MRDreamComJahUnk
  SAY ~Then I cannot help you, <CHARNAME>.~
  IF ~~ + MRDreamComJahFinish
END

IF ~~ MRDreamComJahDis
  SAY ~So you... you think you love her?~
  =
  ~You would take your foster sister as a man would take a wife?~
  =
  ~Such a desire is unnatural, <CHARNAME>.  It is an abomination.  Perhaps it is merely your heritage which makes you think such things.  For your sake, I hope that is the case.~
  IF ~~ + MRDreamComJahFinish
END

IF ~~ MRDreamComJahFinish
  SAY ~One way or another, you must find your own answer to those dreams.~
  =
  ~Look inside yourself. That is all the advice that I can give you.~
  IF ~~ EXIT
END
END


// ***Viconia***

APPEND VICONIJ

IF ~~ MRDreamComVicPreEnd
SAY ~(Viconia snorts at you) These kivvin...~
IF ~~ EXIT
END

IF ~~ MRDreamComVic2
  SAY ~And why should your feeble dreams with that annoying girl interest me, kivvil?~
  ++ ~Well I thought that, since you're a sex-obsessed wench, you'd like to know about my erotic dreams.~ + MRDreamComVicSex1
  ++ ~Well I thought that you'd like to know about my erotic dreams.~ + MRDreamComVicSex2
  ++ ~Well I... I just wanted share something with you that has been troubling me, that's all...~ + MRDreamComVicShare
  ++ ~Hmmm... you're right.~ + MRDreamComVicRight
  ++ ~... bitch.~ + MRDreamComVicBitch
END

IF ~~ MRDreamComVicRight
  SAY ~As always.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicBitch
  SAY ~(Viconia scowls menacingly)~
  =
  ~I won't warn you again, dog. Watch that tongue of yours when you address me, or soon you will lose it.~
  IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComVicSex1
  SAY ~(Viconia snorts with scorn)  Erotic dreams with that *child*?  Hah, you are more iniquitous than I thought, <CHARNAME>.~
  =
  ~That's something I don't dislike at all, dog. But watch that tongue of yours when you address me, or soon you will lose it.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicSex2
  SAY ~(Viconia snorts with scorn) Erotic dreams with that *child*? Hah, you are more iniquitous than I thought, <CHARNAME>.~
  =
  ~That's something I don't dislike at all, dog.  What kind of wicked things did you do in those so-called 'erotic dreams'?~
  ++ ~And why should you be interested in that, drow harpy? It's none of your business, as you said.~ + MRDreamComVicBitch
  ++ ~Well, we kissed each other passionately.~ + MRDreamComVicKissed
  ++ ~It would take several hours for me to describe EVERYTHING I did to her... if you know what I mean...~ + MRDreamComVicExplicit
  ++ ~Actually, as you said, there's no reason for me to tell you that.~ + MRDreamComVicEnd
END

IF ~~ MRDreamComVicEnd
  SAY ~Do not play games with me, shu caluss. I have asked you a question.~
  ++ ~And why should you be interested in that, you drow harpy? It's none of your business, as you said!~ + MRDreamComVicBitch
  ++ ~Well, we kissed each other passionately.~ + MRDreamComVicKissed
  ++ ~It would take several hours to describe EVERYTHING I did to her... if you know what I mean...~ + MRDreamComVicExplicit
END

IF ~~ MRDreamComVicKissed
  SAY ~Is that all? Hah, if that's what you consider an 'erotic' dream... (She approaches you and pushes her body against yours)   I will have to describe one of mine, <CHARNAME>...~
  IF ~~ + MRDreamComVicFlirt1
END

IF ~~ MRDreamComVicExplicit
  SAY ~(She smiles mischievously, and approaches you. Before you can react she has wrapped her body around yours. You can feel her heat and you sense the unspoken invitation.)~
  =
  ~You could demonstrate for me, <CHARNAME>...~
  IF ~~ + MRDreamComVicFlirt1
END

IF ~~ MRDreamComVicFlirt1
  SAY ~Would you like that...?~
  ++ ~OF COURSE!~ + MRDreamComVicYes
  IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY ~Uh- no... I know what you'd tell me if I was foolish enough to say 'yes'... you'd say 'Lick my boots, dog' or something like that...~ + MRDreamComVicWise
  ++ ~Actually, drow aren't among my tastes. Not even incredibly beautiful drow such as you...~ + MRDreamComVicMaybe
  ++ ~Never, evil creature. I don't know why I even speak to you.~ + MRDreamComVicNo
END

IF ~~ MRDreamComVicNo
  SAY ~(Viconia stares at you menacingly.)~
  =
  ~Because I let you do it, <PRO_RACE>.~
  =
  ~Now begone. I grow tired of your boring presence.~
  IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ MRDreamComVicMaybe
  SAY ~Your mouth says things that your eyes do not, yeunn uln'hyrr. You barely manage to control yourself.~
  =
  ~A bit more persuasion would leave you at my feet... if I wanted to.~
  =
  ~But that is not the case.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicYes
  SAY ~(Your lustful reaction was all-too-predictable. Viconia smirks and pushes you away.)~
  =
  ~Do you really think I would sully myself with a lowly <PRO_RACE> like you?~
  =
  ~Lick my boots, toad, and perhaps I will consider it.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicWise
  SAY ~(She is momentarily surprised by your response, but regains her composure almost immediately.)~
  =
  ~A shame for you, <CHARNAME>... you have lost a great opportunity.  (She licks your earlobe, then moves away from you.)~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicShare
  SAY ~(Viconia looks at you scornfully) I am not your confidant, <PRO_RACE>.~
  =
  ~If you think a drow would care for your troubles, then you are far too naive to lead this group.~
  =
  ~...~
  =
  ~(Despite her words Viconia's expression has changed to one of puzzlement, an expression that is quickly erased when she realizes you are still looking at her.)~
  =
  ~(Your words seem to have created an impact of some sort on her.)~
  IF ~~ DO ~RealSetGlobalTimer("MRDreamComVicTimer","GLOBAL",300)~ EXIT
END

IF ~RealGlobalTimerExpired("MRDreamComVicTimer","GLOBAL")~ THEN BEGIN MRDreamComVicContinue
  SAY ~What was it that you wished to tell me before?~
  ++ ~Huh? Why the change all of sudden?~ + MRDreamComVicChange
  ++ ~Oh, it was something about me having very weird dreams...~ + MRDreamComVic3
  ++ ~It was nothing really, it doesn't matter. Let's go on.~ + MRDreamComVicDismiss
  ++ ~I thought it didn't interest you.  Leave me be, wench.~ + MRDreamComVicBitch
END

IF ~~ MRDreamComVicDismiss
  SAY ~Whatever, <PRO_RACE>.  It didn't interest me anyway.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicChange
  SAY ~(She frowns slightly)  I am the one asking questions here, <CHARNAME>~
  ++ ~Oh, it was something about me having very weird dreams...~ + MRDreamComVic3
  ++ ~It was nothing really, it doesn't matter. Let's go on.~ + MRDreamComVicDismiss
  ++ ~Well that's too late now, wench. Leave me be.~ + MRDreamComVicBitch
END

IF ~~ MRDreamComVic3
  SAY ~(She motions you to go on.)~
  ++ ~In them, Imoen appeared and showed me events that happened long ago, when we lived in Candlekeep.~ + MRDreamComVicYouth
  ++ ~In them, Imoen kissed me in quite a... disturbing way, to say the least...~ + MRDreamComVicKissed2
  ++ ~In them, you, Imoen and I had a three-night threesome. The dreams were terrific, by the way.~ + MRDreamComVicExplicit2
  ++ ~You know Viconia, I don't really want to talk about it now...~ + MRDreamComVicDismiss
END

IF ~~ MRDreamComVicExplicit2
  SAY ~(Viconia's eyes widen in surprise at first, then narrow as she smiles mischievously.)~
  =
  ~I should have let you tell me about them before, <CHARNAME>...~
  =
  ~(She approaches and pushes her body against yours; you can feel her warmth inviting you as her breath caresses your mouth.)~
  =
  ~Perhaps when we find that girl I'll convince her to help me make your dreams come true...~
  IF ~~ + MRDreamComVicFlirt1
END

IF ~~ MRDreamComVicKissed2
  SAY ~I see.  I knew you two held some kind of physical attraction for each other... undoubtedly, that is the proof.~
  ++ ~What? I love her like my closest friend, but that's all! They are just dreams!~ + MRDreamComVicDeny
  ++ ~You're wrong.  She's almost a sister to me...~ + MRDreamComVicDeny
  ++ ~Do you really think that...? I... don't know what to think at all...~ + MRDreamComVicConfused
  ++ ~That's what I thought. I find it quite... strange. I had never thought of her in that way.~ + MRDreamComVicAdmit
  ++ ~I don't know, the only thing that I know for sure is that you are a harlot.~ + MRDreamComVicBitch
END

IF ~~ MRDreamComVicDeny
  SAY ~Yes, tell yourself that a thousand times. Perhaps you will even convince yourself.~
  =
  ~I sense your desire for her in your eyes even as you talk to me, <PRO_RACE>. Trying to hide it only shows your weakness.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicConfused
  SAY ~Such indecision should not blur the mind of one in your situation. Take one path or another, but don't dwell upon it.~
  =
  ~It is a waste of your time *and* mine.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicAdmit
  SAY ~(Her lips purse together.  Whether she is disgusted or merely disappointed, you cannot tell)~
  =
  ~So you have finally accepted it, I see. I knew you wouldn't stifle your instincts towards her much longer.~
  ++ ~But that's not what I me-~ + MRDreamComVicFinal
  ++ ~You are too fast to judg-~ + MRDreamComVicFinal
  ++ ~Yeah I wanna scr-~ + MRDreamComVicFinal
END

IF ~~ MRDreamComVicFinal
  SAY ~Keep your petty words to yourself.  I am not interested.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicYouth
  SAY ~Events, like what?~
  ++ ~Don't know, it's all jumbled inside my head... the only thing I remember is that we kissed rather... passionately.~ + MRDreamComVicKissed2
  ++ ~In the first one, she showed me a scene when we were very young and I had saved her from a goblin. The second one was an event that took place some years after that. It was about a day when we went to have a bath in the small lake near Candlekeep.~ + MRDreamComVicMore
  ++ ~(Make up a simple lie) In both dreams I saved her from fearsome monsters, and then she kissed me with the utmost passion as a reward. It was great.~ + MRDreamComVicKissed2
  ++ ~(Make up an outrageous lie) In both dreams we had sex over and over again until we died in each others arms from exhaustion.~ + MRDreamComVicKissed
  ++ ~Thinking about it, I realize it's none of your business.~ + MRDreamComVicGames
END

IF ~~ MRDreamComVicGames
  SAY ~(Viconia glares at you) I don't tolerate those who play games with me, <PRO_RACE>.  Bear this in mind before you waste my time again.~
  IF ~~ EXIT
END

IF ~~ MRDreamComVicMore
  SAY ~And is there a point to this nostalgic pining?~
  ++ ~Well, actually she asked me questions about those events, trying to imply I should consider that she is 'more than a friend' to me, if you take my meaning... and then, she kissed me... passionately.~ + MRDreamComVicKissed2
  ++ ~(Lie) Well actually in both dreams, after that we had sex once and again until we died from our exertions...~ + MRDreamComVicKissed
  ++ ~You know what, it's none of your business!~ + MRDreamComVicGames
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
  ++ ~Anyway I was finished already. That is all.~ + MRDreamComAerYouth2
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
 


// ***Anomen***

APPEND ANOMENJ

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
  == ANOMENJ IF ~!ReputationGT(Player1,8)~ THEN ~From a scoundrel like you I should have expected as much.  Nay – even the filthiest swine in Faerun would not stoop so low!~ MRDreamComAnoAttack
  == ANOMENJ IF ~ReputationGT(Player1,8) ReputationLT(Player1,13) Gender(Player1,MALE)~ THEN ~I— I cannot believe that any man could even *think* such a thing!~
  == ANOMENJ IF ~ReputationGT(Player1,8) ReputationLT(Player1,13) Gender(Player1,FEMALE)~ THEN ~And how could two women-  That is unthinkable.  A perversion!~
  == ANOMENJ IF ~ReputationGT(Player1,13)~ THEN ~I thought you walked the path of righteousness.  Clearly I was mistaken!~
END
  ++ ~I was just kidding!  Geez!~ EXTERN ANOMENJ MRDreamComAnoNext
  ++ ~Like you never had thoughts like those about-~ EXTERN ANOMENJ MRDreamComAnoDirty2

APPEND ANOMENJ

IF ~~ MRDreamComAnoDirty2
	SAY ~No!  Do not dirty her name!~
	IF ~~ + MRDreamComAnoAttack
END

IF ~~ MRDreamComAnoAttack
	SAY ~I won’t tolerate your foul existence any longer.  Prepare yourself!~
	IF ~~ DO ~Enemy()~
EXIT
END
//Joel - Changed Anomen to enemy for time being.//
//*** CODE LEAVE PARTY, SUPPRESS KICKOUT DIALOG, SET FIGHT SCRIPT TO SOMETHING SEMI-INTELLIGENT, ATTACK PLAYER1 ***//

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
  ++ ~You are a fine and noble man, Anomen.  But my heart-~ + MRDreamComAnoLove3
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

