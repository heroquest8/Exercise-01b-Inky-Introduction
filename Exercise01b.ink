/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and the west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It's also pretty dark over here, you can't see anything.
* {torch_pickup} [Light torch] -> west_tunnel_lit
+ [Go back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
+ [Stuff your pockets] -> uhoh_thiefery
-> END

== uhoh_thiefery ==
You now have a bunch of the coins in your pockets... this will get you at LEAST two crunchwraps at Taco Bell!
+ [Make a run for it!!] -> cave_mouth
-> END

== west_tunnel_lit ==
Your torch light reveals a medium-sized chest against one of the walls of the room. There also seems to be a deep hole in the wall to your right, just small enough for you to fit in if you crawl.
+ [Investigate chest] -> chest_invest
+ [Crawl into the hole] -> hole_time
-> END

== chest_invest ==
The chest is quite fun compared to the average chest. It is covered in a glittery paint and has several cute and childlike stickers covering the exterior.
+ [Open chest] -> chest_open
+ [Go back] -> west_tunnel_lit
-> END

== chest_open ==
The chest won't budge!! It's locked shut.
+ [Go back] -> west_tunnel_lit
* {key_find} [Try the keys on it] -> chest_success
-> END

== hole_time ==
The hole is dark, and you can't fit your torch in the hole with you. There is enough room for you to extend your arm.
+ [Feel around in the dark] -> key_find
+ [Crawl back out of the hole] -> west_tunnel_lit
-> END

== key_find ==
After patting around in the dark hole, you feel something metal. It's a set of keys!
+ [Take the keys] -> key_pickup
-> END

== key_pickup ==
You now have the set of keys with you. Maybe these fit in somewhere...
+ [Crawl back out of the hole] -> west_tunnel_lit
-> END

== chest_success ==
Yahahaha!! The keys work!! The chest unlocks with ease.
+ [Take a look inside of the chest] -> prize_inside
-> END

== prize_inside ==
Woahhh... inside of the chest, there's a small plastic box. It has some cool graphics on the exterior, and there are a few parts of clear plastic that let you see what's inside. It's a bit hard to see from here, though...
+ [Investigate the plastic box] -> goku_time
-> END

== goku_time ==
Dude, no way!! Now that you can see the box better, you realize it's an action figure!! And it's a figure of your favorite character, Goku!! Whoever hid that chest has very similar interests as you...
-> END
