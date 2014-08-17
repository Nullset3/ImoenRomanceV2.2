	---------------------------------------------------------
	*** *** *** Imoen's Romance Mod, Version 2.2 *** *** ***
	---------------------------------------------------------


PLEASE NOTE: RJ
This mod has content only for Shadows of Amn. (Well, actually, I have added a flirtpack that extends into TOB.)

--------------------------------------------------------------------------


Credit where it's due:

Original Romance: Lord Mirrabbo, Thank you for your original work that inspired this mod.

Dialog re-write and code cleanup: Huge thanks to both T.C. Dale and TheAcefes

V2.1: Thank you to Sarevok08 for the V2.1


--------------------------------------------------------------------------



I N D E X :

1. Installation

2. Compatibility issues

3. Things to expect in the Mod

4. Important notes

5. Version notes



---------------------------------------------------------------------------------------------



1.	*** INSTALLATION ***

You will need Throne of Bhaal to play this mod.


You should note that the mod comes in ZIP format. Most versions of windows should be able to extract the file.
Winzip can be used if you need to extract the files another way: http://www.winzip.com/win/en/prod_down.html


Although I might be insulting your intelligence, fellow player, here are the installation instructions:

1) Place the zip file in your root Baldur's Gate 2 directory (where baldur.exe is), right click and select Extract Here. Then move the zip file to another location.

2) Open your Baldur's Gate 2 folder, and double-click 'setup-imoenRomance.exe'. If there is no setup-imoenRomance.exe in this directory, you have extracted it to the wrong place.

3) Wait for it to install everything, and press enter when it is asked so it will unpack some additional files.

And that's it... you can play the mod now.

If you want to uninstall the mod, just double-click again 'setup-imoenRomance.exe'



---------------------------------------------------------



2.	*** COMPATIBILITY ISSUES ***

This mod should be compatible with any and all WeiDU mod out there. 

----------------------------------------------------------



3.	*** THINGS TO EXPECT IN THIS MOD ***

Baldur's Gate II SPOILERS AHEAD!

- Imoen and the main character are Bhaalspawn brother and sister / sisters. There's a bit of an "ick" factor there, and the mod deals with it head on.

- Imoen will romance any PC, regardless of gender or race. This is segregation of plot and gameplay. All of her dialogue is tailored to normal-height characters, and no references are made to ugly-faced, smelly half-orcs or stocky, burly dwarves with knee-long beards.

- It is HIGHLY recommended that you start a new game to fully experience the romance. You don't need to do this to experiment at least half of the interactions, but if you want her to love you, you'll have to start from the beginning.

- Imoen wants to be treated nicely. Evil characters may romance her, but they must be a little more careful than others.

- Getting all the answers right so that Imoen falls in love with her Bhaalspawn sibling is tricky. However, having a healthy relationship with your sister isn't all that hard. There is quite a bit of content in the mod that has nothing to do with romance and may be enjoyed by any PC. For my own convenience, I have changed the dialog to start with a small letter to mark the tricky path to achieve maximum "kindness", as this is far from obvious and cannot be deduced from the options available.

- There is some mild bad language sprinkled here and there.

- Things get rather steamy when spending quality time with Imoen.

- A wide variety of dialogue choices was one of the priorities when writing this mod. Some of these options are a little crazy, some of these options are cruel, and some are flat out depraved.

- The music is homemade with terribly primitive instruments. Do forgive if you don't like, and just appreciate the thought! (Actually, I think the homemade music is wonderful!)



----------------------------------------------------------



4.	*** VERY IMPORTANT NOTE ***

Dreams are important. They tell us things that we can't figure out with our conscious minds. Rest often, it's good for you.



--------------------------------------------------------



5.  V E R S I O N      N O T E S :

---------------------
This version is: 2.2
---------------------

FIXED: "GLOBALS" changed to "GLOBAL" in several IncrementGlobal statements, which puts the kindness counter back on track.

FIXED: TalkingAboutMusic changed to MRCampfireMusic in the imoen.baf to correspond with the lovescene.d

FIXED: Imoen went into permanent dialog mode at the end of the lovetalks.d, so I got rid of the MRImoenLovetalksTimer and converted to area specific triggers. You no longer need to initiate these dialogs yourself. (Except after gaining to power to become the Slayer at will and after you kill Bodhi!)

FIXED: The .tp2 makefile did NOT compile the LoveMe baf's.

FIXED: There was a break in the lovescene due to a crossover from IMOEN2J to BIMOEN2.

FIXED: Lovescene was not triggering.

FIXED: Imoen was never gonna stay because, while the trigger was kindness=35, the maximum kindness achievable was 25. Propose to her and you will achieve a kindness of 35.

FIXED: Navigating the dialogs to achieve maximum kindness being far from obvious, the necessary dialog selections have been flagged by starting with a small (non-capital) letter.

FIXED: Aerie loop in the first campfire comments.

FIXED: Both resolution PIDs triggered on !Dead("c6bodhi"), when the second one should have been after killing Bodhi.

FIXED: Various dialog typos. (Probably not all...)

NOT FIXED: After the lovescene and aftermath, Imoen and/or the PC may go into permanent fatigue. All I can suggest is to keep retrying until this does not occur. I have no idea why this happens. Try resting once first to see if that works.

ADDED: SoA flirts. PID only. Start after the proposal. (Late in game. I know.) The dialog was "borrowed" from the Aerie flirtpack.

ADDED: ToB flirts. PID and Imoen initiated. The Imoen initiated flirts are set to trigger every 10 minutes of real playing time. (I am an incurable romantic!) If this annoys, it can be changed by replacing the 600 at line 33 of the imoentobinitflirt.baf script before the initial install or then reinstalling.

ADDED: A new Imoen epilogue.

---------------------
This version is: 2.1
---------------------

FIXED: Imoen talks with us once again.

FIXED: Bugs with romance dialogues (wrong races etc)

ADDED: Audio was originally removed for re-mastering. I've re-inserted it, until we get remastered audio.


                ~~ HISTORY ~~

---------------------
This version is: 2.02
---------------------

FIXED: Could talk to Imoen about slayer dream before having the dream...

FIXED: Could talk to Imoen about slayer dream more than once.

FIXED: Imoen constantly stopping in spellhold once rescued.
				
---------------------
This version is: 2.01
---------------------

FIXED: Dreams with Imoen floating text now displaying correctly

FIXED: Journal entries about the dream were displaying other things. Now show correct journal entries.

------
v2.00
------

Complete recode of the original mod by TheAcefes, updated dialog by T.C. Dale