 APPEND JAHEIRAJ
IF ~Global("MRJaheiraBanterFire","GLOBAL", 2)~
MRDreamComment
SAY ~<CHARNAME>...~
  = ~Your sleep has been far too restless.  The noise you make could easily betray us to a predator.~
  ++ ~I'm sorry, Jaheira...  Imoen has been haunting my dreams.~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRJaheiraBanterFire","GLOBAL", 3) ~ + MRDreamComJah2
  ++ ~I don't need you mothering me, Jaheira.  Drop it.~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRJaheiraBanterFire","GLOBAL", 3) ~ + MRDreamComJah
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