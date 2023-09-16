
=== Chapter_1_Kuren_Ken

~Chapter_1_Location = Street

You finish your {Chapter_1_Time == Morning: breakfast, jump down from your perch, | drink, leave your table, } and make your way out into the streets of Kuren Ken.

- (root) -> Ambience ->
+ Take stock... -> Things_To_Do -> root
+ [Head out...] It's time to head out.
    -> Travel -> root
+ You look around... 
    -> Look_Around -> root

TO BE CONTINUED.

- -> END

= Things_To_Do

You reflect on what you need to do today.

+ {NotSkilled(Migrant) && NotSkilled(Lower)}You need to find the shrine of Oria[.], to confirm that the meet is still on.
+ I know what I need to do. 

- ->->

= Travel

* Down to the docks, looking for a {NotSkilled(Pilot):pilot and a } ship in a hurry.
    -> Chapter_1_Docks ->
* Into town, to check in on the merchanise.
* Do the rounds, listen to the city for a while.

- ->->

= Ambience

{The city blarts|The city glarts}.

->->

= Look_Around

{Chapter_1_Location == Chapter_1_Locations.Street: -> Chapter_1_Intro.Contemplate_City ->}

->->

=Debug

->Chapter_1_Kuren_Ken