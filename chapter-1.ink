=== Chapter_1_Intro ===

VAR Chapter_1_Hungover = false
LIST Chapter_1_Locations = Bar,Bakery,Street
VAR Chapter_1_Location = Bar
LIST Chapter_1_Times = Morning,Noon,Evening,Midnight
VAR Chapter_1_Time = Morning

Chaper 1: The Client

One week earlier.

->Meeting_Yv

= Meeting_Yv

~temp Treat = false

* The Tura Turil Bakery, just before dawn.
    ~Chapter_1_Time = Morning


    ~Chapter_1_Location = Bakery

    The kitchen is busy, even as the streets are quiet. The morning elevators bring outland tourists down to see the old city.
    You'd have trouble getting flour elswhere in the depths, but staples passing through tend to get staged together, and a portion is generally carved off for sale at each stop of the journey.
    
    ** People need to eat[.], and it's these people that keep the trade flowing.
    ** Middlers upon middlers[.], the nature of any trade route. Only thing special about this one is that it goes down.
    
    -- The kid on the counter passes you back your cloth, neatly wrapping your breakfast.
    
    **{Skilled(Upper)}Suutebread - it's tourist food, but hell, you're a tourist.
    **{Skilled(Lower)}Your usual - you've been coming here for years.
    **A tart, heaving with berries - it's been a long turn, and you deserve a treat.
        ~Treat = true
    **Cust, a meat bun dripping with grease - hell of a hangover cure.
        ~Chapter_1_Hungover = true
    
    -- Breakfast in hand, you make your way back into the waking city, trying to find a quiet place {Chapter_1_Hungover: to rest your pounding head| to watch the sunrise}.
    
        ~Chapter_1_Location = Street
        
    Making your along the ancient, cobbled streets, you find your feet following the fall of gravity towards the old factories, just inside the fort walls. You look for a place to sit.
    
    ** An old crane[...], creaking softly as the air warms. 
    ** A factory rooftop[...], stepping carefully around missing tiles.
    
    -- <>Inner ring infrastructure, made by imperial contractors who didn't know the mountain, but must have sensed at some level that it wouldn't last.
    
    You find a spot to sit yourself, as comfortable as any other, and take a minute to listen to the groans of aging infrastructure.
    
    -- The city, over the rooftops, starting to wake up. 
    -> Contemplate_City -> 
    
* The Blasted Shaft Bar, just before dusk.

    ~Chapter_1_Location = Bar
    ~Chapter_1_Time = Evening

    You take a table on the balcony, looking out over the city. Catching the eye of a server, you gesture for...
    
    **{Skilled(Lower)}Your usual - you've been coming here for years.
    **{NotSkilled(Lower)}Whatever's good. This is your first time down here in a while.
    **Something special - it's been a long turn, and you deserve a treat.
        ~Treat = true
    **The same as yesterday - you're nursing a sizable hangover.
        ~Chapter_1_Hungover = true
    
    --As the server fetches your drink, you let the moment wash over you.
    --(waitingForDrinks)
    ** The city[...], over the balcony, still humming with activity. 
    -> Contemplate_City -> waitingForDrinks
    ** [The other patrons...]
    A mix of folk. Not many imperials down here, this far from the lodestone. But the last elevator doesn't leave for a few hours, and a few look like tourists.
    *** {Skilled(Thief)} Would be easy pickings, if you weren't keeping your head down. 
    *** {Skilled(Muscle)} Even if you weren't keeping your head down, you doubt anything would try and start something. 
    *** {Skilled(Lower)} This isn't the real city. You're itching to find somewhere grimier.
    *** A boring backdrop for what will hopefully be a boring meeting.
    --- -> waitingForDrinks
    ** -> wrapup
    
--(wrapup) The server places your drink in front of you {Treat: - it's taller than you expected, and blood red - } and takes the coins you slide across the table.
    ** Just the asking price.
    ** A good tip - you're feeling generous.

- You take a {Chapter_1_Location == Street: bite of your breakfast| sip}, and your mind wanders once again, casting back to your first job, all those years ago.
-> First_Job ->
    
You sense familiar movement in the corner of your eye, bringing you back to the here-and-now.
* "You're early."
* "You're late."
* "You're right on time."

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
 
 - Yv looks out over the city, watching as {Chapter_1_Location == Street: the last of the mirrors catch the light, basking the depths in daylight| the last of the evening light leaves the mirrors, and night decends on the mountain}. {Chapter_1_Location == Bar: He waves away the approaching server and waits for a second as they quiety retreat.}  "He asked to meet in person."
 
 * "What?"
 Yv broadly shrugs, a stiff movement, keeping arms as still as he can. "
 * "Why?"
 "

 * "No."
    "Look, I'm not happy about this either{Chapter_1_Hungover:, and you don't look in any fit state to be meeting with a client. |, but we don't really have a choice. } 
 * "And what did you say?"
    "I didn't get a chance to say much of anything. 
    <> <>
 
- <>I didn't get much out of his middler - horrid little imp thing. Knew I wouldn't be impressed and shot off into the ceiling as soon as passing on the message."
 
 * "That job was hard enough as it is. I want it on the other side of our ledger."
    "To be clear, I'm completely focused on us getting this money."
 * "I'm already spending the money, Yv!"
    "Well, we better get to the bottom of this fast, then, shouldn't we?"
 * "Isn't this a bad look for our benefactor?"
    "If anyone knew who he was, which they don't." 
    
- <> He flicks a square of card between the two of you. "This is what we're going off. What do you make of it?"

~temp NoticedFont = false

You examine the card. It's embossed with an unusual mark, seven crossed lines, slightly out of alignment. {NotSkilled(Lower) && NotSkilled(Mage) && NotSkilled(Tinker): You flip the card over. -> flip | "It's subtle, but..."}

-(cardRoot)

* {Skilled(Mage)}"...it's warded[."], not in a way you'd easiliy notice. But it's close enough to what we felt in the vault that I wouldn't call it a coincidence. I'm not sure anyone other than us could read this." 
* {Skilled(Lower)}"...it's never seen sunlight[."]... you'd expect some kind of yellowing, but this is almost transparent. One of the old houses, burrowed in deep." 
* {Skilled(Tinker)}"...it's not a standard glyph. Dwarven technique.["] Someone that doesn't want to deal with the guilds."
    ~NoticedFont = true
* ->postCard

- ->cardRoot

- (postCard) There's a long beat as Yv watches you. 
"..And the address?"

- (shame)
* "Ah."  -> shame 
* You {wordlessly|} flip the card over.

- (flip){{NotSkilled(Lower): {NoticedFont:The same|An} unusual typeface, in monospace smithscript. You were never great at traderunes - less common on the surface. | {NoticedFont:More t|T}raderunes, tightly monospaced.} | You look back down at the card.}

* {Skilled(Lower)} You read it effortlessly. 
    "What's owed now, and ten times again to each participant?"
* {NotSkilled(Lower)}Your read it with some effort.
    "What's owed... today, and more, and more again?"
    Yv's face is completely impassive. "Ten times more. To each participant."
* "A little theatrical, don't you think?"
    Yv grunts. "Certainly smells of wealth though. Lot of effort to get something like this printed for a ruse."
    ->flip
- You do some quick mental math{Chapter_1_Hungover: - the headache doesn't help|}.

* "That's enough to really set us up. Buy our way into the Karaken bazaar."
* "That's enough to set us up with our own ship."
* "That's enough for us to get our transit papers - get out of the mountain for good."

- Yv stands, and looks out over the city. "He wants a pilot at the meeting. A good one. 
{PlayerHeistRole == Pilot: 
  <> That's you 
  {Skilled(Tinker):
    <>."
    
  -else:
    <>, which also means for the first time in a long time, we're 
    {Skilled(Mage): <> down a mage}
    {Skilled(Muscle): <> short of muscle}
    {Skilled(Thief): <> down a second-story-{man()}}
    <>."
   }
-else:
~KnownNeededRoles += Pilot
}<>"

-
~temp discussedPilot = false
~temp discussedShip = false

    * {PlayerHeistRole == Pilot}"It'd be good to get into the air again[."]. The tunnels aren't good for me."
    * {PlayerHeistRole == Pilot && (Skilled(Tinker))}"That was easy[."] We'd still need a ship though."
    * {PlayerHeistRole == Pilot && NotSkilled(Tinker)}"We wouldn't need them for the meet[."]. Just me and a ship would be enough."   
    * {PlayerHeistRole != Pilot}"I might know someone[."]. {Skilled(Upper): Was going to catch a ride with them back home | Good pilot, grew up near me.}"
    ~discussedPilot = true
    * "I could head down to the docks to look for a ship {Chapter_1_Time == Morning: today | tonight}?"
    ~discussedShip = true
     *{PlayerHeistRole != Pilot && Skilled(Pilot)}"I'd offer, but I'm a little rusty[."]. Don't want a whole job resting on my shoulders."

-Yv nods. "If he wants to meet our pilot, we'll also need to front up with a tinker, to show we can keep an engine running.

~ temp knowJustStandingIn = 0

{PlayerHeistRole == Tinker:
<> But you've got us covered there.
-else:
<> I can stand-in as a tinker for the meet in a pinch.
~knowJustStandingIn = 1
}
<>"

-(chatRoot)

* "Hold on, I'm still not convinced we're doing this."
    "We don't need to take the job. We do need to take the meeting. And we've got to look professional."
    ** "Since when do we worry about looking professional?"
    ** "Fine, but I'm still not convinced."
    ** "Okay then. We'll hear him out."
    -- Yv grunts noncommitally. -> chatRoot
* "I take it {|from this that} you trust {this guy|the client}?"
    "You saw that card. Lot of money to spend on a trap for the two of us."
        ** "And we still have his merchanise."
            "That we do."
        ** "You said his middler was a {Skilled(Mage): summon | imp} of some kind? {Skilled(Mage): Not | Can't be} cheap."
        "With the money he's throwing around, I very much think this guy is one to be taken seriously."
        ** "I trust you to follow that up."
        Yv gives a slight smile. "I intend to spend the rest of the {Chapter_1_Time == Morning: day | night} scoping out the meet, while you're out running our errands."
        ->chatRoot
        -- <> Yv gives a slight smile. "I also intend to spend the rest of the {Chapter_1_Time == Morning: day | night} scoping out the meet, while you're out running our errands."
        ->chatRoot
        
        
* {knowJustStandingIn == 2 } "{KnowTinker: What about your guy? Up in the scratch|Do we know a tinker}?"
    Yv gives a noncommital gesture. "{KnowTinker == false:I've got a guy who does my arms, skyward, in the scratch. |}I trust him, but I'm not sure he's looking for action. His brother though... just as good, faster, louder. Not a problem for today." 
    ~KnowTinker = true
    -> chatRoot
* {knowJustStandingIn == 1} "...just standing in?"
    Yv snorts with irritation. "If we're taking this seriously, I'll have my hands full just getting everything in place. Don't have the time to get my arm back to job condition. Time's against us."
    ~knowJustStandingIn = 2
    -> chatRoot

* "Alright. Say we do this... what's next?"


- Yv reaches out for the card in your hand.
* [Slide it back over.] You slide it back over, and it dissapears into his sleeve. He sits back down.
* [Keep it.] You pocket the card. Yv's expression is hard to read, but he gives you a neutral shrug and sits back down.
- "We're to meet another handler in the warren at {Chapter_1_Time == Morning: sunset| dawn}. That gives us {Chapter_1_Time == Morning: today| tonight} today to put on a good show. We need the merchanise, {PlayerHeistRole != Pilot: we need a pilot,} we need a ship, and we need to make sure our backs are covered. I'll handle the last point, if you can take the rest."

* "We're really doing this, huh?"
* "You can count on me."
* "As long as we're getting paid this time."

- Yv stands and makes to leave. "Anything else before I head out?"
-(leaving)

* "The merchanise is still with Tolsen?"
    He shrugs. "I haven't seen her since you've seen her."
    **"She's holed up here in the fort[."]. I'll make sure to give her some warning that we're moving tonight."
    **"We might need an extra pair of hands moving the box[."], but I can worry about that."
    **{Skilled(Mage)}"I'll be able to propogate the wards myself[."]. I'm sure she'll be happy to be rid of it."
    
* "Any sense heading anywhere but the docks?"
    As if on cue, a dirgable hums low overhead. You both wait a second as it passes. "For ships? Not really. Asking around at the elevators might be a good idea though. Those folk talk. Long trip down though, so you'll only want to do it once."
* "Where in the warren?"
    He gestured broadly in the direction of the main gatehouse, across the fort from here. "Just start walking. If I'm there, I'll find you. Trust me."
* "I'm good for now."
->trueLeaving

- {Yv nods. "Anything else?" | |"That it?" || "We're good?"} ->leaving


-(trueLeaving)"I'll leave a ribboned candle at the shrine to Oria if we're on. Do you know it?"

* {Skilled(Migrant)} "My family is from the Vigil, {Skilled(Lower): I know| I can find} the place."
* {Skilled(Lower)} "I remember the place."
* {NotSkilled(Lower) && NotSkilled(Migrant)} "No, but I can find it."

- "If you show, I'll show. See you {Chapter_1_Time == Morning: tonight| in the morning}."

* "Be safe, Yv."
* "See you soon."
* "Enjoy perching."

- -> The_Heist.Interstital_1 -> Chapter_1_Kuren_Ken

= Contemplate_City
~temp lookedUp = false
~temp lookedDown = false
~temp gate = false
Karaad - your home.

-(theCity)
*You look up.
    ~lookedUp = true
    The central shaft, miles across at its widest, towers above you, {Chapter_1_Time == Morning: the first light beginning to catch| the last light of the evening leaving} the mirrors that line it, bringing the network of elevators that line it into sharp relief. 
    The crater, far above, is just out of view, the scratch forming a natural barrier between the fort and true daylight.
*You look down.
    ~lookedDown = true
    ~gate = true
    From your vantage point, you can see over the walls of the old fort, across the vast underground chasm, tracing the contours of the landscape as it falls from farmland, to the docks, down towards the omnipresent Gate. 
* {lookedUp || lookedDown} The old fort[...], Kuren Ken. 
    Oldest place in Karaad, if you'd believe the historians of the Great Families. Sitting with it's back to the Gate, Kuren Ken is the rock that the armies of the deep have crashed against for millenia.
    It's where you're sitting now. A good place to take a break, if you keep you're head down. Something about the old stone, slows everything down. A moderating influence.
    ~gate = true
* {lookedDown} The farms[...]. 
    A patchwork of a hundred villages, crisscrossing roads, a delicate tablecloth laid of an endless honeycomb of caves
    {Skilled(Lower): 
    <> that you know like the back of your hand. 
    Home, if you can still call it home.
    -> Family_History ->
    -else:
    <>.
    }
* {lookedDown} The docks[...]. 
     {Skilled(Lower): You spent your youth roaming those narrow streets. }A staging ground for those crossing into the true stonewarren beyond the Gate. The goods follow gravity - all that comes out of that hole is golden.
    The docks fully ring the Gate - you could find an elevator down if you needed to.
   
* {gate} The Gate[...], the 'Teeth of Tarsus' {Skilled(Lower): ..."the plug", if you're in common company|}. 
    A thousand foot disk held together by equal parts old magic and old engineering. The barrier between "Karaad" and "not Karaad." A line drawn in the sand a hundred years ago by an empire that had no more room for ambiguity.
    Your job doesn't leave much room for black and white.
 *{lookedUp} The scratch[...].
    Miles and miles of spiralling, pockmarked stone, the beating heart of Karaad. You can get everything you need in the scratch, include a ticket outland through the Lodestone, or out to the surface if you have a debt or a deathwish. 
 *{lookedUp} The crater[...], Karaken, the ring of light.
    Poised right at the top of the caldera, a thousand contrasting forces jammed together, competing for space and light.
     The newest money, the finest manors, jostle against airship docks and enormous trade elevators. 
     //A strong imperial presence, though still far enough from the Lodestone that the real movers and shakers would think twice about living there.
    {Skilled(Upper): 
    Home, if you can still call it home.
    -> Family_History ->
    }

+You turn away. ->->

- -> theCity

= First_Job

A simple thing, just a smash and grab in some pawnshop in the scratch.

- You were young, but they picked you for a reason.
* {NotSkilled(Pilot)}You'd made a name for yourself almost crashing a stolen sloop {Skilled(Lower): down in the docks| up in the bazaar}. Almost.
    ~AddSkill(Pilot)
* {NotSkilled(Muscle)}You were big for your age - people didn't fuck with you.
    ~AddSkill(Muscle)
* {NotSkilled(Tinker)}You loved to tinker - and you didn't care where the machines came from.
    ~AddSkill(Tinker)
* {NotSkilled(Thief)}You broke into the Aaqaarian embassy. Only {man()} without wings to do it.
    ~AddSkill(Thief)
* {NotSkilled(Mage)}You could pick a cursed trinket out of a haul in a second.
    ~AddSkill(Mage)
    
- The place burned down soon after, probably for the insurance. If it wasn't you, it would've been someone else. 

*Better times[...]
*Worse times[...]
*Different times[...]

-<>, though less at stake, it feels at times. 

You got away nice and clean, well, except for word getting back to your family.

->Family_History->

->->

= Family_History

VAR HistorySet = false
LIST FamilyHistory = Refugee,Migrant,OldFamily

{HistorySet:->->}

Your family...

* Refugees from Arkenreln, and the lich wars.[] Your mother always tried to take jobs in the light.
    ~AddSkill(Refugee)
* They've lived here for longer than records have been kept.[] They're everywhere - for better or worse.
     ~AddSkill(OldFamily)
* Migrants from Oria's Vigil, trading the heat of the desert for the shadow of the mountain. [] Came here for a better life, and found it for the most part.
    ~AddSkill(Migrant)

- ~HistorySet = true
    * It's been too long.
    * It hasn't been long enough.
- ->->

