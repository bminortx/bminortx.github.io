---
layout: post
title:  "Season of Migration to the Cloud"
date:   2015-07-10-08:14:52
category: ""
image: "images/season_of_migration/storm.jpg"
preview: "Software engineering is hard."
---

I used to hate working with databases and servers, but [Django](https://www.djangoproject.com/) changed my attitude. Django claims to be "the web framework for perfectionists with deadlines", and it definitely makes good on that promise. Its perfectionist outlook became particularly imperative when the Replica tech team decided to move all of our media files from our AWS EC2 instance to a Amazon Simple Storage Service (S3). There were two main reasons for this switch:

1. Having most processes localized on one machine would make it much harder to scale later down the line.
2. It was cheaper.

We've known about these advantages for a long time (I think this to-do was written down late last year), but there was really no reason to go through with the switch. However, given the many improvements that we're trying to push onto our reconstruction system currently, and the money that we could save doing it, now seemed like the most pain-free time to migrate. Not to say that there wasn't going to be any pain involved: we still faced the task of keeping the frontend pretty and resopnsive while completely restructuring the backend, and minimizing downtime is the most important metric for success when you have an active userbase.

So, we went about the delicate task of database migration, and I'm happy to say that it went well! With the help of a couple of tutorials and some nifty shell commands, we piped all of the data from one server to the other and programmed our way to victory. No user was the wiser<span class="ref"><span class="refnum">[1]</span><span class="refbody">
Unless they tried to download that one video.
</span></span>.

Except.

We didn't really have to do any of that. We realized later that one of the core aspects of Django, a mechanic called 'migrations', actually does this whole thing for you if you write it correctly. Just program the files to save to this database and not that database, and you're good to go. Even though we put so much thought into the process, our way still seemed hacky and unsafe when compared to something that our chosen framework already offered.

In my opinion, this kind of situation is what makes software engineering so hard. You could be incredibly good at database design, user flow, or scientific computation, but there's always going to be a new or better way to do it. The worst part is that it seems so obvious in hindsight, and you wonder why you ever did anything else. Odds are, most of what an engineer just learned about a new API or interesting system is going to be outdated in a couple of years<span class="ref"><span class="refnum">[2]</span><span class="refbody">
Though if you program for the government, you're probably OK for at least 10.
</span></span>, replaced by something that goes 10x faster and uses the computational resources of, like, two pieces of tape<span class="ref"><span class="refnum">[3]</span><span class="refbody">
I dunno, I'm not great at hardware.
</span></span>. This kind of situation is a fact of life for software designers, especially since their whole career is based on the utilization and effective communication of electronic stores of knowledge; it doesn't get much more ephemeral than that.

So, the lesson here? Never stop learning, I guess. In software, multiple solutions can often be found for the same problem, but that doesn't mean that they're all equally good. This applies for other professions just as well<span class="ref"><span class="refnum">[4]</span><span class="refbody">
The phrase "Fitting a round peg in a square hole" comes to mind. Looking at you, peg makers.
</span></span>. Make it your goal to always be learning something new, something deeper, so you develop the intuition for finding what could be a better way. I definitely have a ways to go here, but I like to think I'm getting a bit better every time something like this happens. 
