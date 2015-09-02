---
layout: post
title:  "Season of Migration to the Cloud"
date:   2015-07-10-08:14:52
category: "code"
image: "images/rise_of_ai_two/alexnet.png"
preview: "This is why programming is hard."
---

I used to hate working with databases and servers, but [Django](https://www.djangoproject.com/) changed my attitude. Django claims to be "the web framework for perfectionists with deadlines", and it definitely makes good on that promise. Its perfectionist outlook became particularly imperative when the Replica tech team decided to move all of our media files from our AWS EC2 instance to a Amazon Simple Storage Service (S3). There were two main reasons for this switch:

1. Having most processes localized on one machine would make it much harder to scale later down the line.
2. It was cheaper.

We've known about these advantages for a long time (I think this to-do was written down late last year), but there was really no reason to go through with the switch. However, given the many improvements that we're trying to push onto our reconstruction system currently, and the money that we could save doing it, now seemed like the most pain-free time to migrate. Not to say that there wasn't going to be any pain involved: we still faced the task of keeping the frontend pretty and resopnsive while completely restructuring the backend, and minimizing downtime is the most important metric for success when you have an active userbase.

Luckily, our existing Django backend made the task a bit more manageable. I wrote this in the present tense, as a how-to, but this is the logic flow that we followed. 






