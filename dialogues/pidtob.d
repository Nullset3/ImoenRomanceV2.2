// Imoen PID
APPEND IMOEN25J 

IF ~Global("MRNoPid","GLOBAL",0) Global("ImoenRomanceActive","GLOBAL",2) Global("RJImoenStartFlirtTOB","GLOBAL",0)~ pid
  SAY ~Heya, <CHARNAME>.~
  ++ ~Leave her alone.~ EXIT
  +  ~RandomNum(2,1)~ + ~(Smile at Imoen)~ + RJImoenFlirtSmile1
  +  ~RandomNum(2,2)~ + ~(Smile at Imoen)~ + RJImoenFlirtSmile2
  +  ~RandomNum(5,1)~ + ~(Hug Imoen)~ + RJImoenFlirtHug1
  +  ~RandomNum(5,2)~ + ~(Hug Imoen)~ + RJImoenFlirtHug2
  +  ~RandomNum(5,3)~ + ~(Hug Imoen)~ + RJImoenFlirtHug3
  +  ~RandomNum(5,4)~ + ~(Hug Imoen)~ + RJImoenFlirtHug4
  +  ~RandomNum(5,5)~ + ~(Hug Imoen)~ + RJImoenFlirtHug5
  +  ~RandomNum(2,1)~ + ~(Kiss Imoen on the cheek)~ + RJImoenFlirtCheek1
  +  ~RandomNum(2,2)~ + ~(Kiss Imoen on the cheek)~ + RJImoenFlirtCheek2
  +  ~RandomNum(3,1)~ + ~(Kiss Imoen on the lips)~ + RJImoenFlirtLips1
  +  ~RandomNum(3,2)~ + ~(Kiss Imoen on the lips)~ + RJImoenFlirtLips2
  +  ~RandomNum(3,3)~ + ~(Kiss Imoen on the lips)~ + RJImoenFlirtLips3
  +  ~RandomNum(3,1)~ + ~(Hold Imoen's hand)~ + RJImoenFlirtHand1
  +  ~RandomNum(3,2)~ + ~(Hold Imoen's hand)~ + RJImoenFlirtHand2
  +  ~RandomNum(3,3)~ + ~(Hold Imoen's hand)~ + RJImoenFlirtHand3
  +  ~RandomNum(2,1)~ + ~(Rub up against Imoen)~ + RJImoenFlirtRub1
  +  ~RandomNum(2,2)~ + ~(Rub up against Imoen)~ + RJImoenFlirtRub2
  +  ~RandomNum(3,1)~ + ~I love you, Imoen.~ + RJImoenFlirtLove1
  +  ~RandomNum(3,2)~ + ~I love you, Imoen.~ + RJImoenFlirtLove2
  +  ~RandomNum(3,3)~ + ~I love you, Imoen.~ + RJImoenFlirtLove3
  +  ~RandomNum(3,1)~ + ~(Cradle Imoen in your arms and kiss her firmly)~ + RJImoenFlirtFirm1
  +  ~RandomNum(3,2)~ + ~(Cradle Imoen in your arms and kiss her firmly)~ + RJImoenFlirtFirm2
  +  ~RandomNum(3,3)~ + ~(Cradle Imoen in your arms and kiss her firmly)~ + RJImoenFlirtFirm3
  +  ~RandomNum(2,1)~ + ~(Rub Imoen's back and neck)~ + RJImoenFlirtBack1
  +  ~RandomNum(2,2)~ + ~(Rub Imoen's back and neck)~ + RJImoenFlirtBack2
  +  ~RandomNum(2,1)~ + ~Imoen, can you give me a massage? I feel sooooo achey,~ + RJImoenFlirtAsk1
  +  ~RandomNum(2,2)~ + ~Imoen, can you give me a massage? I feel sooooo achey,~ + RJImoenFlirtAsk2
  +  ~RandomNum(3,1)~ + ~(Lick Imoen's ear, blowing gently and growling)~ + RJImoenFlirtLick1
  +  ~RandomNum(3,2)~ + ~(Lick Imoen's ear, blowing gently and growling)~ + RJImoenFlirtLick2
  +  ~RandomNum(3,3)~ + ~(Lick Imoen's ear, blowing gently and growling)~ + RJImoenFlirtLick3
  +  ~RandomNum(4,1)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke1
  +  ~RandomNum(4,2)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke2
  +  ~RandomNum(4,3)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke3
  +  ~RandomNum(4,4)~ + ~(Stroke Imoen's ears and face)~ + RJImoenFlirtStroke4
  +  ~RandomNum(3,1)~ + ~(Caress Imoen's body all over)~ + RJImoenFlirtCaress1
  +  ~RandomNum(3,2)~ + ~(Caress Imoen's body all over)~ + RJImoenFlirtCaress2
  +  ~RandomNum(3,3)~ + ~(Caress Imoen's body all over)~ + RJImoenFlirtCaress3
  +  ~RandomNum(3,1)~ + ~I need you tonight, Imoen.~ + RJImoenFlirtNeed1
  +  ~RandomNum(3,2)~ + ~I need you tonight, Imoen.~ + RJImoenFlirtNeed2
  +  ~RandomNum(3,3)~ + ~I need you tonight, Imoen.~ + RJImoenFlirtNeed3
  +  ~RandomNum(2,1) OR(2) AreaCheck("AR5003") AreaCheck("AR5501")~ + ~(Bathe with Imoen)~ + RJImoenFlirtInnBath1
  +  ~RandomNum(2,2) OR(2) AreaCheck("AR5003") AreaCheck("AR5501")~ + ~(Bathe with Imoen)~ + RJImoenFlirtInnBath2
  +  ~RandomNum(2,1) AreaCheck("AR6400")~ + ~(Bathe with Imoen)~ + RJImoenFlirtOutBath1
  +  ~RandomNum(2,2) AreaCheck("AR6400")~ + ~(Bathe with Imoen)~ + RJImoenFlirtOutBath2
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

IF ~~ RJImoenFlirtInnBath1
   SAY ~(Imoen steels herself with a deep breath, and takes your arm as you lead her to the bath house. Before you can make noises about privacy, Imoen sweeps the room with her sweetest, most charming look, and the stragglers pack their things and leave you alone. You hear a bit of jealous groaning, but they leave all the same.)~
   = ~(She waits for you to begin undressing before she follows suit, standing well away from you. Although later to start, she finishes first, and scampers into the steaming tub as though afraid that your eyes will make her dirtier. She clings to the side of the tub, hiding her body from the neck down.)~
   = ~(Once you join her in the bath, Imoen calms down, and gingerly relaxes her tight body backwards into your arms, soaking in the water and your affections. She shudders as you run your fingernails lightly through her scalp, giving your thighs an involuntary squeeze.)~
   = ~(Glancing down, you cannot help but notice the scarred stripes on her back where Irenicus hurt her. You feel a rush of sadness and rage,  but she trusts you enough not to cringe as you gently wash her there.)~
   = ~(She turns to face you, and suppresses an enormous grin as she proudly soaps up your chest, shoulders, arms and neck, gently dunking you down in the water after she finishes, then giggles slightly as she leans back to clean herself without taking her eyes off you.) I think you should do the rest, <CHARNAME>. I wouldn't want to do it wrong.~
   = ~(With the water cooling and looking rather grimier than when you started, Imoen glides out smoothly, dripping beautifully before you for a moment before she quickly towels off and prepares for the road once more. Between the dirty bathwater and your fresh-smelling mate, the choice to follow her is easy.)~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtInnBath2
   SAY ~(Imoen seems reluctant at first, but the eagerness in your eyes overcomes her modesty as you make your way purposefully to the inn's bath house, which is miraculously empty except for the lightly snoozing attendant, who briskly fills a tub for the two of you, then makes himself scarce.)~
   = ~(She lets you help her out of most of her things, but saves her undergarments for herself, and only after you have stripped naked and started getting into the tub. As the hot water begins to soothe your aches, you eye her greedily as she comes near. Her youthful body is smooth and soft and pleasantly slick with sweat. As she climbs in you note her barely perceptible navel--not even the diameter of her pinky finger.)~
   = ~(Imoen fusses over every scrape and bruise on your weary body, cleaning your wounds thoroughly, stopping to kiss you every so often--on the lips, though, rather than on the cuts she so courteously just cleaned.)~
   = ~(As much as you have shared, however, she still feels self-conscious about you pawing at her with soapy hands, and she eventually nudges you out of the tub to give her the freedom to clean herself. She is extremely methodical but almost blindingly fast, working from her feet up to her hair.)~
   = ~(When she plunges into the water for a final rinse, you fantasize briefly that a mermaid Imoen will emerge... but the naked, wet Imoen that steps from the tub and takes your offered towel is just as satisfying.)~
   IF ~~ EXIT
END

IF ~~ RJImoenFlirtOutBath1
   SAY ~(Imoen seems ready to protest as you begin unbuckling her gear, but thinks better of it, and begins scrounging the nearby foliage. She eventually finds roots and leaves to her liking and improves a handful of mush as you lazily float in the water. She would work faster, but she keeps glancing at you...)~
   = ~(She makes you come back to hold the gunk as she undresses, arranging her clothing and equipment in a neat pile near yours. Her breasts bounce pleasantly at you as she jogs to join you in the water.)~
   = ~(The paste hardly looks appetizing, but Imoen insists that it is safe, and indeed you notice that her skin gets clean, taut, and shiny where she rubs it on herself.)~
   = ~(After refreshing yourselves, you lie on the riverbank for a spell to dry, fingers intertwined, nude bodies shivering slightly in the breeze. Imoen stands up and towers over you, smiling with sweet contemplation, and the view from beneath her beats even the most splendid sunset you have ever seen.)~
   = ~(She murmurs a few words, waves her hands, then crouches down to kiss your lips softly. You feel a rush of adrenaline and a surge of lust, along with a spreading sense of peace and safety.)~
   = ~(Satisfied with her work, Imoen suits up, and playfully throws your gear at you until you consent to don it.)~
   IF ~~ EXIT
END


IF ~~ RJImoenFlirtOutBath2
   SAY ~(Imoen grins, and insists that you travel further from the beaten path than you had originally intended, but given the circumstances, you understand well enough.)~
   = ~(Once you reach a place where only the occasional amphibian can see, Imoen starts shedding her unnecessary items, but she insists on tantalizing you by keeping her back to you, turning and scampering when you try to peek.)~
   = ~(She ultimately strips down just to a shirt, and takes your hand as you go to the water's edge. She motions for you to wait where the water laps at your ankles while she enters to midriff depth, turning to face you again before submerging and springing up again.)~
   = ~(Water rolls down from her hair and neck across the thin top that, drenched, now clings desperately to her firm breasts. Pink struggles to be seen underneath. She looks exceedingly proud of being so naughty.)~
   = ~I thought you might like this, <CHARNAME>. (Her eyes lock on exactly where your body is displaying its approval at the sight. Her grin is wider than you've ever seen, and she briskly wades back to you and kisses you greedily.)~
   = ~I think we made a mistake! I don't think either of us will get cleaner this way, my love. (She grins again, takes off the shirt and hangs it from your member, and re-equips, waiting patiently for you to follow suit. Imoen has clearly been getting advice from someone, somewhere...)~
   IF ~~ EXIT
END

END

