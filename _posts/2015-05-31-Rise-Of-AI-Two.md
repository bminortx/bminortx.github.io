---
layout: post
title:  "The Rise of AI, Part II: The State of the Art"
date:   2015-05-31 18:30:50
category: Robotics
image: "images/iceland.jpg"
preview: "It's not what you think."
---

When I started my PhD, I had a big misconception about what the phrase 'state-of-the-art' meant. In my mind, a state-of-the-art vehicle was the Mach 5. A state-of-the-art facility was one with a lot of glass walls, researchers in white coats, and floating computers that gave sassy, yet sage, advice. _State-of-the-Art_ was synonymous with _The Future_.

I have since learned that this is not correct.

Not entirely, at least. For me, The Future was complete. Things worked. Technologies were flawless. Since I've become involved in robotics, I know now that State-of-the-Art, especially in these fields, is often far from achieving this lofty goal. Things break. Solutions are hacky.

This is in no way a criticism of the robotics community; the science that has been produced in the past couple of years is _amazing_, and often a strong prediction of what The Future will hold. Yet the fact of the matter is, creating robotic systems is hard. Design is hard. Perception is hard. Path planning is hard. These are all active fields of research, and there is no perfect solution to any of them. 

However, research and the real world often tend to be two very different things. AI is big business, and this economic boom has accelerated the development of new technologies. These, in turn, create even greater economic demand. It's a cycle that we're trying to harness at [Replica Labs](http://www.replicalabs.com): business begetting tech, begetting business. However, as discussed in [Part I](http://127.0.0.1:4000/2015/05/26/Rise-Of-AI-One/), important players in this field (research and business alike) are voicing real fears about the pace of progress, mainly that we're going too fast to truly understand [the implications of what we are creating](https://www.youtube.com/watch?v=4PLvdmifDSk). To better know these claims, I believe it's important to realize the state of AI now; that way, we can make a more educated prediction on what we might realistically expect.

- - - - - - - -

## The Buildup: Parallel Processing and the Algorithms They Love ##

Imperative to this conversation is what powers this AI takeover: parallel processing through Graphics Processing Units, or GPUs[^1]. GPUs are parallel programming to the extreme; while CPUs - Central Processing Units - commonly have 4-16 cores, allowing for 4-16 simultaneous calculations, beefy GPUs can have [over 3000 cores](http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-titan-x/specifications), allowing for unheard-of computation speed. This kind of capability has been especially useful in computer graphics, where each pixel in an image can be changed at the same time, but researchers have begun to design their science around this massively-parallelizeable structure. Calculations used to take so long on CPUs that entire branches of math have been developed to compensate, usually sacrificing mathematical accuracy to gain cut down on computation time. Now, algorithms are built with parallelizability in mind, and boy has it been worth it. Mythbusters explain it best:

<div class="video">
    <figure>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/-P28LKWTzrI" frameborder="0" allowfullscreen></iframe>
    </figure>
</div>

Done right, GPUs can whittle down calculations that took days into a single afternoon. GPUs have gone beyond 'graphics processing', and now allow researchers to perform real-time physics simulation, real-time control, real-time speech analysis. GPU programming has hit the mainstream, but more importantly, programmers have finally learned to harness that power effectively.

- - - - - - - -

## The Here and Now: Prediction and Control ##

This newfound computation speed is allowing for things that weren't quite possible a decade ago. One of the most striking examples here is the advent of the self-driving car. Cars that know not only where they need to go but also how to get there might seem like an amazing magic trick (or a one-way ticket to the ICU, depending on your technological stance), yet the speed of GPU processing, along with a lot of smart code, make it possible. Tesla even announced a future over-the-air update that adds [fully autonomous driving](http://bit.ly/1ECvrBw) to their Model S. This feat was powered by a whole lot of parallel algorithms and, what else, the high-performance GPUs Tesla has in every car, compliments of a partnership with NVIDIA. Given that the Tesla is virtually a computer on wheels, this kind of hardware is not only convenient, but also vital for the safety of the passengers inside. Other self-driving cars share a similar story; GPUs and parallel algorithms allow an autonomous machine to both perceive and act upon their environment.

That example aside, cars have a long way to go before they're turned into hyper-intelligent rolling doom machines. Here's NVIDIA CEO Jen-Hsun Huang[^2] showing off their new vehicle-embedded street object identification system. 

<div class="video">
    <figure>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/zsVsUvx8ieo" frameborder="0" allowfullscreen></iframe>
    </figure>
</div>

It knows cars. Not a lot, just mainly cars, which is actually damn impressive, but still not really what you would consider a super-human sort of intelligence. Yet that video - _that video_ - is the kind of science that strikes fear into the hearts of AI ethicists everywhere. 

- - - - - - - - -

## The Scary Part: Machine Learning ##

If you actually played the video above, you probably heard phrases like 'deep learning' and 'neural nets'. These are all different parts of one big concept: Machine Learning. In my mind, the development of advanced machine learning is one of the most transformative achievements of our time. Put simply, machine learning makes sense of vast amounts of data for use in more abstract processes. For example, a good ML process can use all of those cat videos on YouTube to figure out for itself what a 'cat' is, and then use that info to identify cats in the future. I hope this doesn't sound too simplistic, because the process of teaching a computer 'cat'-ness is difficult, to say the least (though [Google has done exactly that](http://research.google.com/archive/unsupervised_icml2012.html)).

Machine learning as a field has been around for a while - papers date back to the '50s - but ML in its current form has existed for only a couple of decades, with the maturation of _neural networks_. Neural nets are just a statistical method of finding patterns in large swaths of data, the design of which was originally inspired by the way your optic nerves communicate images to the brain. In its most basic form, neural networks use a non-linear equation of some sort to map a function from data (input) to result (output):

<div class="row">
<div class="col-sm-6 col-sm-offset-3" style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/rise_of_ai_two/single_neuron.png" title="Circle :: Function, btw." class="img-thumbnail">
</div>
</div>

A perfect example of the State-Of-The-Art here lies in a paper by Alex Krizhevsky called ["ImageNet Classification with Deep Convolutional Neural Nets"](http://www.cs.toronto.edu/~fritz/absps/imagenet.pdf). It takes the above simplistic, straightforward model and just absolutely tears it up[^3]. What was once a quaint input-output is now an incredibly dense network of connections, all resulting in a complete and sophisticated way of mapping images to their identifying label.

<div class="row">
<div class="col-sm-8 col-sm-offset-2" style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/rise_of_ai_two/alexnet.png" title="Statistics is all just lines and boxes." class="img-thumbnail">
</div>
</div>

The picture does not do it justice, but suffice to say, this system took days to process, or _train_, even when designed with GPUs in mind. It makes sense now why this type of network is 'deep'; it's layers upon layers, and the connections are too numerous to count. AlexNet, as it's coloquially named, was one of the most successful image identification systems made, and many systems since have been based on this work. Looking at his system's initial labeling results below, even the missed classifications are pretty honest errors. 

<div class="row">
<div class="col-sm-6 col-sm-offset-3" style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/rise_of_ai_two/alexnet_success.png" title="Who labeled that picture 'Cherry'?" class="img-thumbnail">
</div>
</div>

- - - - - - - -

This kind of statistics is impressive in itself, but it gets even crazier when you realize that deep neural nets _don't even need to know what they're learning_. When I mentioned Google's cat identification project using YouTube videos, it's important to realize that _they never told their system what a cat was_.

Never mentioned it.

And yet, when asked for the strongest 'cat'-like classifier when given a cat-like image, here's what it came up with:

<div class="row">
<div class="col-sm-6 col-sm-offset-3" style="text-align: center; padding-top: 20px; padding-bottom: 20px">
<img src="/images/rise_of_ai_two/catness.png" title="The essence of cat... is frightening." class="img-thumbnail">
</div>
</div>

That is a damn creepy cat... but it's definitely a cat, and that's even more unnerving. The Google researchers that helped train this network were looking for what they called a "Grandmother Neuron", or a classifier from a neural net that captured the essence of what an object was. Given the thousands (millions?) of cat videos this deep neural net was subjected to, this is the Grandmother Neuron that best described whatever was in all of these videos. Again, it was never told what a cat was; it just found a lot of different examples of the same thing, and used this to relate all the things together. That thing just happened to be a cat.

This ability to make sense of the world without human interference makes Machine Learning processes so powerful, and at the same time, so frightening. It's easy to take the results of these experiments and extrapolate the horrible things that computers could do once they really start getting into the data. 

* Talk about NVIDIA and their obsession on ML
NVIDIA highlighted ML processes
http://www.ustream.tv/recorded/60025825

FUN EXAMPLE: Mar I/O https://www.youtube.com/watch?v=qv6UVOQ0F44&feature=youtu.be

In a way, AI and humans are redefining one another as developments continue.


## The (Realistic) Future of AI ##

SUMMARY: Worry about dumb AI, not smart AI. Overreaching leads to downfall.

REFERENCE JURRASIC WORLD? 

http://www.wired.com/2014/10/future-of-artificial-intelligence

- - - - - - -

Further reading, and some sources:
http://colah.github.io/posts/2014-03-NN-Manifolds-Topology/
https://en.wikipedia.org/wiki/Artificial_neural_network#History
http://ufldl.stanford.edu/wiki/index.php/Neural_Networks
http://www.slideshare.net/yuhuang/deep-learning-for-image-denoising-superresolution-27435126

[^1]: Sorry if I dumb this down too much; GPUs are incredibly popular, but I realize that might just be with a niche group. All of robotics is a niche, to be perfectly honest.
[^2]: Does anyone else think he sounds like Nicolas Cage? No? He makes his appearance about halfway in, for reference; you be the judge.
[^3]: Mathematically speaking.

