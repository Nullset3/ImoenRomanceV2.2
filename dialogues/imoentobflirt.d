
// Imoen-initiated TOB flirts : TURN BACK ON AFTER ExpLoveTalk=4

APPEND IMOEN25J

IF ~Global("RJImoenStartFlirtTOB","GLOBAL",1)~
THEN BEGIN imoeninitflirtbase1
 SAY ~(A smile playing at her lips, Imoen approaches you, hips swaying ever so slightly, beautiful eyes wide and inviting.)~

 IF ~RandomNum(23,1)~ + imoenshuffle2
 IF ~RandomNum(23,2)~ + imoenstandclose
 IF ~RandomNum(23,3)~ + imoenmakesee
 IF ~RandomNum(23,4)~ + imoeneyeing3
 IF ~RandomNum(23,5)~ + imoenshoulder2
 IF ~RandomNum(23,6)~ + imoenhugs
 IF ~RandomNum(23,7)~ + imoensidles
 IF ~RandomNum(23,8)~ + imoensohappy
 IF ~RandomNum(23,9)~ + imoencoolhand
 IF ~RandomNum(23,10)~ + imoenticklesu
 IF ~RandomNum(23,11)~ + imoenrestshead
 IF ~RandomNum(23,12)~ + imoenherewithyou2
 IF ~RandomNum(23,13)~ + imoengladyou
 IF ~RandomNum(23,14)~ + imoennipsear
 IF ~RandomNum(23,15)~ + imoentinymouth
 IF ~RandomNum(23,16)~ + imoenslygrin
 IF ~RandomNum(23,17)~ + imoennestlesclose
 IF ~RandomNum(23,18)~ + imoenlookingforward
 IF ~RandomNum(23,19) AreaType(CITY)~ + imoencity
 IF ~RandomNum(23,19) !AreaType(CITY)~ + imoencountry
 IF ~RandomNum(23,20) ReputationGT(Player1,15)~ + imoennice2people
 IF ~RandomNum(23,20) ReputationLT(Player1,16)~ + imoenmean2people
 IF ~RandomNum(23,21)~ + imoenlooparm
 IF ~RandomNum(23,22)~ + imoenthrumming
 IF ~RandomNum(23,23)~ + imoenloveyou

END

IF ~~ imoenlooparm
SAY ~(Imoen gingerly loops her arm around your back and snuggles against your side.)~
IF ~~ EXIT
END

IF ~~ imoencity
SAY ~All these people, <CHARNAME>. It makes me sad, sometimes. I don't think many of them are as lucky as I am, to have someone so special to them.~
IF ~~ EXIT
END

IF ~~ imoencountry
SAY ~It makes me sad, sometimes. I don't think many people are as lucky as I am, to have someone so special to them.~
IF ~~ EXIT
END

IF ~~ imoennice2people
SAY ~You find time to be nice to almost everybody, <CHARNAME>. If more people were like you, I think the world would be a much better place!~
IF ~~ EXIT
END

IF ~~ imoenmean2people
SAY ~(Imoen wrings her hands nervously, trying to build herself up to say something to you.)~
= ~<CHARNAME>, I think that you sometimes hurt people who might be willing to help us. If they haven't done anything to us, we should just leave them alone.~
IF ~~ EXIT
END

IF ~~ THEN BEGIN imoenlookingforward
SAY ~(She reaches up to kiss your neck, then whispers naughtily) I'm looking forward to getting you alone tonight, my love.~
= ~(With a rush of pink in her cheeks and a thrilled grin on her face, she scurries back to her place in line.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoennestlesclose
SAY ~(Imoen pulls you to her and nestles close, a gentle smile on her face.)~
= ~Sometimes I just really need you near me. I always like a hug, but nobody feels quite as nice in my arms as you do, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenslygrin
SAY ~(Imoen places her hands tentatively on your hips, mouth widening into an endearingly sly grin. Her eyes travel down your chest to a point below your waist, and she murmurs with a hint of shyness as she sidles close.)~
= ~I hope you will not be too weary this evening, my love. (She kisses you very sweetly, but you feel a hint of passion that tells you her thoughts are far from innocent.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoentinymouth
SAY ~(She kisses you firmly on the lips, her mouth soft and warm.)~
= ~<CHARNAME>, I'm so glad that you're with me. You've always been here for me when I needed you, and kept me strong. (She bites her lower lip, smiles, and kisses you once more.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoennipsear
SAY ~(Playfully, she tugs your head down to her and nips at your ear lightly. Giggling at your surprised expression, she hurries a few steps away and peeks at you from under her lashes.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoengladyou
SAY ~(Entwining your arms in hers, she leans her head against your shoulder, whispering as if to herself.) Glad you're here... so glad you're with me...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenherewithyou2
SAY ~(She rests her hands on your sides and looks at you. Her eyes are brimming with affection.) You know that I will never leave you, do you not, my love? I don't care what anyone says about us, or tries to do to us. We belong together, <CHARNAME>.~
= ~(Kissing your cheek, she gives you a look of budding strength and love that makes your heart soar.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenrestshead
SAY ~(Imoen stands behind you and rests her head on your shoulder, her hair cascading down your side. The scent of violet and honey drifts up to you as she rocks gently against you.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenticklesu
SAY ~(She leans in to kiss you, but at the last moment reveals her deception and tickles your sides and armpits.)~
= ~(She scurries out of reach before you have a chance to retaliate, beaming at you through a curtain of mussed hair.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenthrumming
SAY ~(Imoen takes your hand and places it against her chest... you feel her heart thrumming earnestly into your palm.)~
= ~I want you to feel this, <CHARNAME>. I live for you... I love you, with all my heart.~
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN imoencoolhand
SAY ~I love you, <CHARNAME>. (She leans in, eyes closed, and kisses you softly, running a cool hand down the side of your face and sending a surge of adrenaline through your veins.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenmakesee
SAY ~(Imoen hugs you close.) I only wish I could make everyone see how wonderful you are.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoeneyeing3
SAY ~(You catch her eyeing you up and down.)~
= ~I like to look at you, <CHARNAME>. I hope that pleases you.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenstandclose
SAY ~(She doesn't seem to want anything in particular... just to stand close to you.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenshuffle2
SAY ~(Imoen reaches out with both hands to take yours, and looks proud to be so close to you.)~
= ~(As they link, Imoen looks you in the eyes and smiles.)~
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN imoenshoulder2
SAY ~(Imoen twines both of her hands around your arm and rests her head against your shoulder.)~
= ~(She lets out the cutest satisfied sigh you have ever heard in your life.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenhugs
SAY ~(She hugs you close, and it warms your soul to feel her heart beat against your chest--rather faster than your own.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoensidles
SAY ~(Imoen sidles up to you and leans into your side, enveloping your arm between her firm breasts. She kisses your shoulder and hugs you before resuming her place in line.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoensohappy
SAY ~You make me so happy, my love. (She cheerily scrunches her shoulders together and smiles sweetly.)~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN imoenloveyou
SAY ~I love you, <CHARNAME>. (She leans in, eyes closed, and kisses you softly, running a cool hand down the side of your face and sending a surge of adrenaline through your veins.)~
IF ~~ THEN EXIT
END

END