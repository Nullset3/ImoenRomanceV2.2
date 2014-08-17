APPEND VICONIJ
IF ~Global("MRVicBanterFire","GLOBAL", 2)~ MRDreamComment
  SAY ~I hope tonight passes without your constant snivelling and snoring, <CHARNAME>.~
  ++ ~My nights have been restless... I keep dreaming about Imoen...~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRVicBanterFire","GLOBAL", 3)~ + MRDreamComVic2
  ++ ~And I'd like today to pass without *yours*, Viconia.~ DO ~SetGlobal("MRDreamRomanceComment","GLOBAL",1)SetGlobal("MRVicBanterFire","GLOBAL", 3)~ + MRDreamComVicPreEnd
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






IF ~RealGlobalTimerExpired("MRDreamComVicTimer", "GLOBAL")~ THEN BEGIN MRDreamComVicContinue
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
  ++ ~That's what I thought. I find it quite... strange. I had never thought of her in that way.~ + MRDreamComVic2Admit
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

IF ~~ MRDreamComVic2Admit
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
