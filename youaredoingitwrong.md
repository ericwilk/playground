The Indestructible Banana, or... How to NOT Do THINGS
=====================================================

Things are so small these days! These days I seem to need a microscope to even see everything. Back when I was a child I could easily desolder components to repair or make things and get burned and electrocuted in the process. I was in early Grade School and didn't have the best judgement. Well, maybe I still don't.

I bought a Banana Pi and a little clear case to put it in. The case was rather cheap plastic so it fell apart, and me (being a bit of a hack) just superglued it back together. I later obtained a 5" LCD panel, and not knowing how fragile the FPC socket was I tried opening it with a precision screwdriver and it broke.

Well, "okay," I thought. "I can just wedge some tape or something in there to hold the ribbon cable in place." This "sort-of" worked, but ended up with a flickering panel since it would move around. So of course, I decide to use super glue. This acually worked GREAT until I wanted to remove the ribbon cable. NOT a good idea...

![fail... fail... fail...](https://raw.githubusercontent.com/ericwilk/playground/master/IMG_0494.JPG "Evidence of a bad idea gone wrong.")

I think I was going to save the LCD for the newer Banana Pro I'm getting; I also got a touch-screen digitizer from some GPS device from China for around $5 to add to it.

Anyway, I still wanted to use it as a computer and just hook it up to one of my monitors via HDMI, but as you can see a lot of metal touching metal is probably bad and I didn't want to create a short (and I believe the power is on one of the ends, if I remember from the schematics). I tried separating the pins with a precision screwdriver under a dissection microscope (the one used for the pics) but this was incredibly frustrating to remove 80 tiny prings via metal fatigue. Sooooo...

DREMEL TOOL, GO!

(Sometimes I go just *a bit* overboard.)

![more fail...](https://raw.githubusercontent.com/ericwilk/playground/master/IMG_0495.JPG "Destruction.")

![yeah, this looks good](https://raw.githubusercontent.com/ericwilk/playground/master/IMG_0496.JPG "More destruction.")

![oh, wow](https://raw.githubusercontent.com/ericwilk/playground/master/IMG_0498.JPG "Okay, this CAN NOT possibly work, anymore.")

Well, just for fun I put everything back together, changed the file on the boot partition to point to HDMI and plugged everything in. You know... Just to see what would happen.

![It's ALIIIIIVE!](https://raw.githubusercontent.com/ericwilk/playground/master/IMG_0500.JPG "Just like the Energizer bunny.")

Wow, really?

There are some damages but not too hard to repair... I mean hack.

Of course, my soldering station just came in the mail today so my next "How NOT to do things" will probably be "repairing ground circuit boards after going crazy with a dremel tool using the wires from those flimsy LVDS cables."

By the way, the correct answer is probably "be patient and wait for the right tools." That's not QUITE as much fun, though ;3
