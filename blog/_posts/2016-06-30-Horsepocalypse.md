---
layout: post
title:  "Horsepocalypse"
date:   2016-07-17 10:24:00
image: "images/horsepocalypse/horsepocalypse.jpg"
category: "VR"
permalink: /horsepocalypse
preview: "In which I explain the basics of Mixed Reality through the clever example of a Horse-fueled Apocalypse."
---

Since [Replica Labs joined Occipital](http://www.occipital.com/2016/replica-announcement) on the fantastic voyage that is developing computer vision technology, I've found myself working in areas that were previously inaccessible through Replica Labs' core products. Having depth information just handed to you, instead of deriving it from first principles from a video stream, is quite an engineering blessing; moreover, having spatial awareness demonstrated in real-time makes the jump of imagination needed to visualize a successful product much more attainable. If you have never seen this hardware/software combo at work yourself, you might be wondering: in what direction do most user's thoughts 'jump' when interacting with this for the first time? 

That's right: Virtual/Mixed/Augmented Reality<span class="ref"><span class="refnum">[1]</span><span class="refbody">If this was not your first thought, then you probably work with custom clothing for a living. And, you know, that's neat too.</span></span>. 

VR and MR experiences are on the brink of being truly mind-blowing. Oculus Rift, Microsoft, HTC + Valve, and various other companies are all vying for your alternate reality's attention, and doing a pretty damn good job at it. However, these are still the wild west times of VR, where the good, bad, and ugly aspects of the technology still coexist<span class="ref"><span class="refnum">[2]</span><span class="refbody">With Palmer Luckey as the sheriff, and Gabe Newell playing ragtime on the ol' ivories.</span></span>. There has yet to be a decisive win for any platform, and there hasn't been any one killer app developed that makes the world slap their wallets down and demand an immersive experience at any price. If I was to venture what that killer app would be, though, I would say it was to be a wonderfully done, [Mixed](https://www.youtube.com/watch?v=cEnnbCSbijo) [Reality](https://www.youtube.com/watch?v=GmdXJy_IdNw) [experience](https://www.youtube.com/watch?v=xgakdcEzVwg). 

This brings me to the point of this post. I recently<span class="ref"><span class="refnum">[3]</span><span class="refbody">-ish</span></span> gave a talk at [Boulder Startup Week](https://boulderstartupweek2016.sched.org/event/f52622d671197c5528fa2df8b47c23b0) explaining what Mixed Reality is, and how I believe it will provide a much richer experience than a Virtual Reality demo ever could. I've reproduced that talk below, in a more blog-friendly format, and I humbly present it to you. 

- - - - - - - 

## Reality ##

Let's start where all VR discussions start: the Jeff Bridges Reality Continuum.

<div style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/horsepocalypse/ar_spectrum.png" title="Just my opinion, man" class="img-thumbnail">
</div>

On the left, you have The Dude, the Jeff Bridges that clearly inhabits the same bizarre world that you and I do<span class="ref"><span class="refnum">[4]</span><span class="refbody">"These men are nihilists. There's nothing to be afraid of."</span></span>. On the right, you have Kevin Flynn, who is completely immersed in the Virtual. The "Kevin Flynn" VR experiences are probably the ones you are most familiar with, ones that use your motion information to provide a realistic visual experience, but don't actually incorporate what's around you into said experience. 

This brings us to The Tron Lebowski, located front and center. He represents a mixed reality experience: aspects of the real and virtual combined into one seamless reality. It becomes clear why this is a continuum, and not something more discrete: a headset can either make small modifications to your environment (like a heads-up display giving you nutrition information on your White Russian) or completely virtualize real-life objects while keeping their physical characteristics (turning that delicious beverage into that blue glowing drink from Tron). It's all about the amount of "virtual" one could want.

- - - - - - - 

## The Headset ##

The next question in my mind when thinking about this is: why now? Why did it take any sort of time to get these experiences off of the ground and into a headset? One can attribute it to the advancement of GPU technology<span class="ref"><span class="refnum">[5]</span><span class="refbody">A subject I covered in [a previous post about the rise of AI.](http://localhost:4000/robotics/2015/06/21/Rise-Of-AI-Two/)</span></span>. Like their name implies (Graphics Processing Units), GPUs do their best work on graphics and images, which is where the bulk of MR computing lies. The development of smaller and more efficient GPUs means that what was once the size of a desktop computer can now fit into a headset alone.

I'm oversimplifying a bit; a GPU does not a headset make. The lenses, displays, power supply, and even comfort level all roll in to making something usable. Moreover, a headset specializing in Virtual Reality won't have the same components as a headset designed for Mixed Reality, since an MR experience has to wrap information from the real world into the "reality" its trying to synthesize<span class="ref"><span class="refnum">[6]</span><span class="refbody">In other words, bring a bit of Lebowski into Flynn's Arcade.</span></span><span class="ref"><span class="refnum">[7]</span><span class="refbody">...It's a helpful metaphor, I swear.</span></span>. The Microsoft HoloLens hardware page does a great job explaining the core components needed for an MR setup (see that breakdown [here](https://www.microsoft.com/microsoft-Hololens/en-us/hardware)), but I wanted to cover why these parts are so essential to the experience.

### Sensor Fusion ###

<div style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/horsepocalypse/headset_one.png" title="All them senses" class="img-thumbnail">
</div>

For those not familiar with the term<span class="ref"><span class="refnum">[8]</span><span class="refbody">A lot of people, probably.</span></span>, sensor fusion refers to any method that combines data from several sensors into one coherent picture, 'fusing' the information together. In the case of a MR headset, you might have one or more color cameras providing visual info, an Inertial Measurement Unit (or IMU) giving acceleration and rotation over time, maybe another tracker in the form of an infrared receiver, etc. All of these things stream their own little data stream to your headset, all at their own rate and independently of any of the other sensors; it's quite a task to pick and choose what data to use, when, for successful sensor fusion to occur. 

Luckily, the problem has been well-studied, and because it is a solved problem given many common situations<span class="ref"><span class="refnum">[9]</span><span class="refbody">I say this with hesitation; in my experience, nothing in robotics is ever truly solved.</span></span>, the algorithms that live within the GPUs are able to pick up these data streams, fuse them together, and provide the software that renders your experience with a complete picture of your surroundings. There are, of course, still ways in which this might fail; a sensor might 'drift' virtually over time, giving more and more inaccurate measurements, or one sensor's data stream might cut off entirely due to this or that. However, since a MR demo has some pretty concrete goals (smooth movement is better than sudden jumps, relative position is important, but global position might not matter) we know what sensors we can compensate for, and what we can't live without. This allows an aspiring developer to make judgement calls for proper fusion processes based on this knowledge, even when incorporating less-than-perfect data. 

### The Display ###

With a typical VR setup, the display will consist of a pair of screens set to show stereoscopic images, with [Fresnel lenses](https://en.wikipedia.org/wiki/Fresnel_lens) over each screen to reflect the light into your eyes. The HTC Vive's headset has two 1080x1200 pixel screens, the hi-res being essential in a VR experience; anything less would probably result in a "screen door" effect, where lines of pixels would be discernible in the display. 

However, most MR experiences want the user to feel a bit more connection to the real world, and hence the headsets will expose as much of reality as they can. As you can see below, the Microsoft HoloLens doesn't have any sort of LED display, or any lenses; it's just two thin plastic sheets, one layered on top of the other, in front of your eyes. 

<div style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/horsepocalypse/headset_two.png" title="The Microsoft HoloLens lens, from Microsoft." class="img-thumbnail">
</div>

These displays work by focusing wave signals between these plastic sheets in specific patterns, deflecting the waves in some parts and letting them propagate in others. This is what's known as a _waveguide_, and _holograms_ guide the light through the plastic (hence the name "HoloLens")<span class="ref"><span class="refnum">[10]</span><span class="refbody">At least, that's the thinking. Could just be a cool name.</span></span>. This display technology allows the user to see the real world in front of them, instead of a camera stream. If one was looking for a great MR demo, it's obvious how much more immersive the former tech is compared to the latter.

(If you want to know more about the mechanics behind these transparent displays, James Ashley has written up a fairly user-friendly guide to the Microsoft HoloLens display tech, found [here](http://www.imaginativeuniversal.com/blog/post/2015/10/17/how-hololens-displays-work.aspx)).

- - - - - - - 

## The Experience ## 

At this point, you might be saying to yourself<span class="ref"><span class="refnum">[11]</span><span class="refbody">but probably aren't</span></span> "I've seen plenty of impressive Virtual Reality demos in my time, being wise and traveled. Why does having a bit of the real world to work with make an MR experience harder to perfect? Wouldn't having more information make things _easier_?" After looking down my nose at you over my pince-nez<span class="ref"><span class="refnum">[12]</span><span class="refbody">I keep them handy for just these occasions. As my pappy always use to say, "Never leave the house without your condescending pince-nez."</span></span>, and sighing a deep sigh, I would ask you to go on a mental journey with me through what I believe to be the next killer app for VR: 

*Horsepocalypse.*

<div style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<a href="https://www.pafa.org/collection/death-pale-horse">
<img src="/images/horsepocalypse/horsepocalypse.jpg" title="“Death on a Pale Horse” (1796) by Benjamin West. Oil on canvas. West based this work on the Book of Revelation 6:8, in which the Four Horsemen of the Apocalypse—Death, War, Famine, and Pestilence—ravage the earth. The biblical narrative of the painting was considered to be so complex that it was originally exhibited with an explanatory pamphlet, and even inspired a 114-page analysis by William Carey in 1836. - PAFA" class="img-thumbnail"></a>
</div>

What this means? It's up to you, as you are now the head designer of this intrepid Alternate Reality project. If you were working on the purely VR side of the JBRC<span class="ref"><span class="refnum">[13]</span><span class="refbody">Jeff Bridges Reality Continuum.</span></span>, you might start with a hi-res 3D asset of a large mansion, and go from there: 

<i class="fa fa-quote-left"></i>

_In the Horsepocalypse, your house, once immaculate in construction and full of high-end IKEA wares, has been ravaged by the effects of the Horsepocalypse. The virtual lights are dim, thunder claps at random intervals, and the virtual walls of your virtual house are covered in virtual mold and cobwebs. Things are starting to get a little creepy... But wait. Off in the distance, you spy<span class="ref"><span class="refnum">[14]</span><span class="refbody">...Shia LeBoeuf</span></span> a silhouette on the hill (that you programmed in):_

_The Horse_.

_(...fully scripted and rendered)._

<i class="fa fa-quote-right"></i>

This might make for a terrifying experience, but did you notice the complete control you had, as the developer, over the entire process? Anything that you wanted, you just programmed in. Now, let's add a dash of the real world to your killer app script, and make it into a bonafide MR experience: 

<i class="fa fa-quote-left"></i>

_In the Horsepocalypse, your house,_ still _immaculate in construction and full of high-end IKEA wares, has been lightly modified by the effects of the Horsepocalypse. The lights in your kitchen are really bright, because you bought the sunlight bulbs from Lowe's. Thunder claps at random intervals, but you can hear your children fighting over what movie to pick on the DVR in the living room. The real walls of your real house are covered in virtual mold and cobwebs and also that picture of you and your family at Coney Island, which always annoyed you because you had that weird stain on your shirt pocket that was just phallic enough to be unsettling. Why did you even hang that up?... Bringing your attention back to the experience, things are starting to get a little surreal... But wait. Off on the kitchen counter, you spy a silhouette_: 

_The Horse._ 

_(He is halfway through the counter. You can tell he is not his usual evil self, but you give him a break, since things are kind of cluttered up there)._ 

<i class="fa fa-quote-right"></i>

<div style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/horsepocalypse/haunted_house_two.png" title="Pictured: sheer horror" class="img-thumbnail">
</div>

Obviously, the experience wasn't nearly as impressive as you would have hoped. The lights were all wrong, the kids were loud, the stain was deeply troubling, and all of those real-world distractions came out in the worst way through your MR demo. Our goal had changed from VR to MR: we need to do more than stimulate the senses via the virtual. With the real world in play, we now need to build up a sense of _immersion_. I've used that word a couple of times throughout this post, but it's really at the crux of the argument. The user needs to feel not that their world has been changed, but that they are part of an entirely new world, one that demands to be explored and experienced in a brand new way. This is where the sense of awe and wonder comes from when one puts on that headset for the first time; you are simultaneously there, and not there. 

This means that mixed reality software needs to meet a couple of necessary requirements to be truly immersive: 

1. _Interaction and gestures:_ Controllers are one thing, but being able to naturally interact with objects in the real world, and for that to have an immediate reaction in the virtual world, is a crucial component to true immersion. 
2. _Realistic rendering:_ Those lights in the kitchen were quite a nuisance, but what's the best way to change them to create the right atmosphere? What if the lights turn off? Do we render a fully virtual scene instead, or keep the mood? These questions would need to be answered on-the-fly, and require a bit of thinking, algorithmically, to get right. 
3. _An understanding and utilization of the physical space:_ This might seem like the most obvious point, but it involves more than just knowing the 3D layout of a space. Our MR experience needs to understand what different objects are, their use, and how they should interact with one another. You don't want to virtually change your cookie jar into a smoke bomb, for instance, ready to throw across the room at your sister-turned-VR-goblin-magician. Proper modification of the environment means knowing what should be changed into what, when, or if it should be left alone or virtually blocked off. This ability would allow full immersion, without physical bounds or prohibitions. 

Next time you see a MR demo, look for these three components. In my (very humble) opinion, they are all necessary and sufficient conditions for a great Mixed Reality experience, and none of them have been truly solved. However, once it happens... that will be the killer app.

- - - - - - 

- - - - - - 

_If you liked what was covered in this post, let me know! These modern-day problems are fascinating to me, and if they're now fascinating to you, too, then I've accomplished what I set out to do. I'd love to hear what else in the robotics/VR/startup realm is on (or is bending) your mind. Maybe I have some insight... or maybe it blows my mind, too, and we can both learn something new. Either revelation is welcome._ 

<i class="fa fa-thumbs-up"></i>

