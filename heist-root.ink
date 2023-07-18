INCLUDE chapter-1.ink
INCLUDE kuren-ken.ink

LIST Crew = Unset, Pilot,Muscle,Tinker,Mage,Thief
LIST Backgrounds = Upper,Lower
LIST UnfallibleComprehensiveListOfAllGendersAndIdentities = He,She,They
VAR PlayerGender = They

VAR PlayerSkills = ()
VAR KnownNeededRoles = ()
VAR KnownFilledRoles = ()

VAR PlayerHeistRole = Unset

-> The_Heist

=== The_Heist

VAR enableDebug = false

{enableDebug == false: -> Prologue}

-(menu)
+ New Game -> Prologue
+ Debug Mode
Pick Build:
++[Pilot, Mage, Lower, Migrant]
    ~ PlayerHeistRole = Pilot
    ~PlayerSkills+= (Pilot,Mage,Lower,Migrant)
    Player skills set to "{PlayerSkills}"
++Back -> menu
--Pick Location:
**Kuren-Ken
...
->Chapter_1_Kuren_Ken.Debug


= Prologue

{AdvanceAndShowCountdown(22)}

You'd think you could see to the end of the world, considering how high in the air you are, but the heat coming off the lava fields quickly turns everything around you into a shimmering haze. The air is hot, and dry. You adjust your facemask.

 * You look up.
    Airships wreathed in vapour, an entire regatta of djinn and higher beings, watching the events playing out above with a lazy curiosity. 
    A long way to climb.
 * You look down.
    Buzzing airships, jostling for space and depositing goods into the cool, black maw below. 
 A long way to fall.

- You ask yourself again why they came to you for this job.
* {NotSkilled(Pilot)}Because you can fly rings around these ships.
    ~AddSkill(Pilot)
    You put both hands back on the wheel and make a careful adjustment, smoothly taking the ship up through a gap between two ivory pleasurecraft.
* {NotSkilled(Muscle)}They needed muscle. You're muscle.
    ~AddSkill(Muscle)
    You check over your weapons one last time, and adjust your breastplate. Heavy gear for airbourne work, but if the pilot does their job, you've got nothing to worry about.
* {NotSkilled(Tinker)}They knew you're the best with machines.
    ~AddSkill(Tinker)
    You make one last adjustment to the rotastat and pull yourself back to the front of the ship, just in time to see the pilot smoothly navigating between two ivory pleasurecraft.
* {NotSkilled(Thief)}They heard about your second story work.
    ~AddSkill(Thief)
    You make one last adjustment to the rigging and lower yourself down to the deck of the ship, just in time to see the pilot smoothly navigating between two ivory pleasurecraft. 
* {NotSkilled(Mage)}Because a ship like this doesn't stay in the air without magic, no matter what most folk would like to think.
    ~AddSkill(Mage)
    You cast you hand once more over the engine, muttering instinctually under your breath as you feel the shape of the enchantments. Returning to the front of the ship, you're just in time to watch the pilot smoothly navigating between two ivory pleasurecraft. 

- 
~PlayerHeistRole = LIST_MIN(PlayerSkills)
You know what they say about you.
* She's[...]
    ~PlayerGender = UnfallibleComprehensiveListOfAllGendersAndIdentities.She
* He's[...]
    ~PlayerGender = UnfallibleComprehensiveListOfAllGendersAndIdentities.He
* They're[...]
    ~PlayerGender = UnfallibleComprehensiveListOfAllGendersAndIdentities.They
- <> the best you can get on a budget.

* {NotSkilled(Lower)}A dock rat in need of a lucky break.
    ~AddSkill(Lower)
* {NotSkilled(Upper)}An upper rim dropout with everything to prove.
    ~AddSkill(Upper)

- The ship lurches, taking a wide arc around a floating palace, temporarily cutting off line of sight to the busiest sectors of sky.

"Alright folks," you hear yourself say.

* "Let's make some money."
* "Let's make some noise."
* "Let's get to work."

-
*...

- -> Chapter_1_Intro

= Interstital_1
+ ...
-

{AdvanceAndShowCountdown(12)}

Interstital_1_Placeholder

Something cool and fun will happen here, foreshadowing the next chapter.

//144th year, Fifth turn, fourth day. 26 minutes since the Arterial Aerial  entered Karaad airspace. 

//Some kind of action... 

+ ...
-

->-> 

=== function AdvanceAndShowCountdown(amount)

VAR CurrentTime = 0

~CurrentTime+= amount

144th year, Fifth turn, fourth day. 
{CurrentTime} minutes since the Arterial Aerial entered Karaad airspace.

=== function Skilled(skill)

~return PlayerSkills ? skill

=== function NotSkilled(skill)
~return !(PlayerSkills ? skill)

=== function AddSkill(skill)
~PlayerSkills += skill

=== function Him()
{PlayerGender:
-He:
    Him
-She:
    Her
-They:
    Them
}

=== function him()
{PlayerGender:
-He:
    him
-She:
    her
-They:
    them
}

=== function His()
{PlayerGender:
-He:
    His
-She:
    Hers
-They:
    Theirs
}

=== function his()
{PlayerGender:
-He:
    gis
-She:
    hers
-They:
    theirs
}

=== function man()
{PlayerGender:
-He:
    man
-She:
    woman
-They:
    person
}
