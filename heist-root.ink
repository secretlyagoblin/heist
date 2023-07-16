LIST Crew = Unset, Pilot,Muscle,Tinker,Mage

VAR PlayerRole = Crew.Unset
VAR KnownNeededRoles = ()
VAR KnownFilledRoles = ()

VAR PlayerMagic = 0
VAR PlayerMechanical = 0
VAR PlayerUpper = 0
VAR PlayerDeep = 0

-> The_Heist.Prologue

=== The_Heist

= Prologue

144th year, Fifth turn, fourth day. 22 minutes since the Arterial Aerial  entered Karaad airspace. 

You'd think you could see to the end of the world, considering how high in the air you are, but the heat coming off the lava fields quickly turns everything around you into a shimmering haze. The air is hot, and dry. You adjust your facemask.

 * You look up.
    Pleasurecraft wreathed in vapour circle, an entire regatta of djinn and higher beings, watching the events playing out below with a lazy curiosity. 
    A long way to climb.
 * You look down.
    Buzzing airships, jostling for space and depositing goods into the cool, black maw below. 
 A long way to fall.

-
* This is why they needed a pilot. 
    ~KnownNeededRoles += Crew.Pilot
* This is why they needed me. 
    ~PlayerRole = Crew.Pilot

-    -> Chapter_1

= Interstital_1

Interstital_1_Placeholder

//144th year, Fifth turn, fourth day. 26 minutes since the Arterial Aerial  entered Karaad airspace. 

//Some kind of action... 

->-> 

=== Chapter_1 ===

VAR Chapter_1_Hungover = false
VAR Chapter_1_Treat = false
LIST Chapter_1_Locations = Bar,Bakery,Street
VAR Chapter_1_Location = Bar
LIST Chapter_1_Times = Morning,Noon,Evening,Midnight
VAR Chapter_1_Time = Morning

Chaper 1: Access

One week earler.
->Meeting_Yv

= Meeting_Yv

* XXX Bakery, just after dawn.
    ~Chapter_1_Time = Morning


    ~Chapter_1_Location = Bakery

    You'd think it would be difficult to get flour down here, but staples staged for a trip into the depths tend to get grouped together, and a portion is generally carved off for sale.
    
    ** People need to eat.
            
    ** Middlers being middlers.
    
    -- The boy on the counter passes you back your cloth, neatly wrapping your purchase
    
    ** XXXX - it should last a few days
    ** YYYY - hell of a hangover cure
        ~Chapter_1_Hungover = true
    ** ZZZZ - a local favourite
        ~Chapter_1_Treat = true
    
    -- <>, and you make your way back into the waking city, trying to find a quiet place {Chapter_1_Hungover: to rest your pounding head| to watcht the sunrise}.
    
        ~Chapter_1_Location = Street
    
    ** An old crane[], creaking softly as the air warms. 
    ** A factory rooftop[], stepping carefully around missing tiles.
    
    -- <>Inner ring infrastructure, made by contractors who didn't know the mountain, and must have known it wouldn't last.
    
    

    
* XXX Bar, just after sunset.
    ~Chapter_1_Location = Bar
    ~Chapter_1_Time = Evening

- It's not long after you settle down to {Chapter_1_Location == Street: eat| drink}, however, before your solitude is interupted.
* "You're early."
* "You're late."

- 


VAR KnowTinker = false

The figure sits down in front of you. {Chapter_1_Hungover: "And you look like shit." |{Chapter_1_Hungover:  "Glad to see you're treating yourself before you've been paid."| "Glad to see you're enjoying yourself." }}
- (hello)
* His eyes[..], sunken into a cracked grey face, hidden behind metal and glass. Toeing the line between ostentatious and workmanlike.
* His arm[..] took a beating on the last job, and you can tell it's still giving him grief - you can hear the odd click and whirr beneth his long sleeve.
* His boots[..] are still caked in dirt and dust. He looks like he's been spending time on the surface - you know better.
* -> anyway
- -> hello
- (anyway) 
* "You holding together[?"] alright, Yv?
He flexes his arm and you hear a whirr. "Oh, this? Not my problem. I've got a guy for it, skyward, in the scratch. They'll sort me out."'
~KnowTinker = true
* "What's news[?"], Yv?"
 
 - Yv looks out over the city, watching as {Chapter_1_Location == Street: the last of the mirrors catch and bask the depths in daylight| the last of the evening light leaves the mirrors, and night decends on the mountain}. "He asked to meet in person."
 

 * "What?"
 Yv broadly shrugs, keeping arms as still as he can. "
 * "Why?"

 * "No."
    "Look, I'm not happy about this either{Chapter_1_Hungover:, and you don't look in any fit state to be meeting with a client|, but we don't really have a choice}.
 * "And what did you say?"
    "I didn't get a chance to say much of anything.
 
- <>  I didn't get much out of his middler - they knew I wouldn't be impressed and shot off into the ceiling as soon as passing on the message."
 
 * "That job was hard enough as it is. I want it on the other side of our books."
    "To be clear, I'm completely focused on us getting this money."
 * "I'm already spending the money, Yv!"
    "Well, we better get to the bottom of this fast, then, shouldn't we?"
 * "Isn't this a bad look for our benefactor?"
    "If anyone knew who he was, which they don't." 
    
- <> He flicks a square of card between the two of you. "This is what we're going off. What do you make of it?"

You examine the card. It's embossed with an unusual mark, seven crossed lines, slightly out of alignment.  "It's subtle, but..."

* "...it's warded[." \[+1 Magic\]], not in a way you'd easiliy notice. But it's close enough to what we felt in the vault that I wouldn't call it a coincidence."
* "...it's never seen sunlight[." \[+1 Deep\]]... you'd expect some kind of yellowing, but this is almost transparent. One of the old houses, burrowed in deep." 
* "...it's not a standard glyph. Dwarven technique.[" \[+1 Mech\]] Someone that doesn't want to deal with the guilds."

- There's a long beat as Yv watches you. 
"..And the address?"

- (shame)
* "Ah." -> shame
* You {wordlessly|} flip the card over.

- The same unusual typeface, in monospace smithscript...

* You read it effortlessly [\[+1 Deep\]]
    "What's owed now, and ten times again to each participant?"
* Your read it with some effort  [\[+1 Upper\]]
    "What's owed... today, and more, and more again?"
    Yv's face is completely impassive. "Ten times more. To each participant."

- You do some quick mental math{Chapter_1_Hungover: - the headache doesn't help|}.

* "That's enough to really set us up. Buy our way into the bazaar."
* "That's enough to set us up with our own ship."
* "That's enough for us to get our papers - get out of the mountain for good."

- Yv stands, and looks out over the city. "He wants a pilot at the meeting. 
{PlayerRole == Crew.Pilot: 
    <> That's you, which also means that we'll need a replacement
    {PlayerMagic > PlayerMechanical:
        <> mage.
            ~KnownNeededRoles += Crew.Mage
        - else:
        <> tinker.
            ~KnownNeededRoles += Crew.Tinker
    }
}<>"

-(chatRoot)

* {KnownNeededRoles ? (Crew.Pilot) } "...a pilot?"
* {KnownNeededRoles ? (Crew.Tinker) } "{KnowTinker: What about your guy? Up in the scratch|Do we know a tinker}?"
    Yv gives a noncommital gesture. "{KnowTinker == false:I've got a guy who does my arms, skyward, in the scratch. |}I trust him, but I'm not sure he's looking for action. His brother though... just as good, faster, louder." 
    ~KnowTinker = true
    -> chatRoot
* {KnownNeededRoles ? (Crew.Tinker) } "...and {that's not you?|you couldn't be the tinker?}"
* {KnownNeededRoles ? (Crew.Mage) } "...a mage?"
* "So you trust {this guy|the client}?"
* "Alright. So what's next?"

- Yv reaches out for the card in your hand.
* [Slide it back over.] You slide it back over, and it dissapears into his sleeve. He sits back down.
* [Keep it.] You pocket the card. Yv's expression is hard to read, but he gives you a neutral shrug and sits back down.
- "We're meeting another handler in the warren at {Chapter_1_Time == Morning: sunset| dawn}. That gives us {Chapter_1_Time == Morning: today| tonight} today to put on a good show. We need the merchanise, we need a {KnownNeededRoles}, and we need to make sure our backs are covered. I'll handle the last point, if you can take the first two."

* "We're really doing this, huh?"
* "You can count on me."
* "As long as we're getting paid this time."

- Yv stands and makes to leave. "I'll leave a ribboned candle at the vigil to Oria if we're on. If you show, I'll show. See you  {Chapter_1_Time == Morning: today| tonight}."

-> The_Heist.Interstital_1 -> Lower_Streets

= Lower_Streets

You finish your {Chapter_1_Time == Morning: breakfast, jump down from your perch, | drink, leave your table, } and make your way out into the streets of XXX.

- -> END