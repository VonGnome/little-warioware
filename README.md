# Little Warioware (Exam version)

## My contribution (and exam fluff)
This is a fork of NEW-CYLANDIAs Little Warioware project, wherein I have built two microgames, scramble and rhythm, for my programming for designers exam. So if you are a teacher looking for my contributions **you will find them in the folders labeled Scramble and Rhythm_game**. As such I want to first thank Cylandia for the idea, and all the other contributers for the groundwork of little Warioware. but then, as is tradition for aesthetic programmers (go read that book its good) I want to do a little reflection, and say a sorry for deleting the other microgrames on this branch, it was (imo) a necesseity for the sake of showing off at the exam, they are still intact on the other branch1

### Why this project?
The idea for this project sprung from two sources: the first was *Stress* as the two other big projects loomed over the fall semester and the second was that I wanted to work on a Godot project as I have previously worked with [p5.js](https://p5js.org/) (javascript) and Unity, so in an effort to challenge myself and in an attempt to get more FOSS into my toolset I chose Godot as my engine, found the Wario ware project through twitter (rip) and got off to the races with a *very* minimum viable product.

### some thoughts on Godot and choosing a game engine
While this years [Unity news](https://www.rockpapershotgun.com/unitys-per-install-fee-will-be-based-on-estimates-and-unity-may-not-spot-fraudulent-installs-in-advance) certainly made my decision easier to justify, and the exams (supposed) engine neutrality allowed it, I still felt as many of my peers chose Unity, that I was doing something wrong. but why? open source software should be normalized, and Godot certainly feels very good to use, and with projects such as little warioWare and [Little Mario](https://github.com/a-little-org-called-mario/a-little-game-called-mario) there is plenty of reason for developers to switch over as well as for teachers to do the same. And it is maybe that group, teachers, who I am especially curious about. An argument made in the case of Unity is that it is the leading game engine in the industry, but first does such a monolithic thing as **the** games industry even exist? arguably [no](https://mitpress.mit.edu/9780262545402/the-videogame-industry-does-not-exist/) its should rather be understood through the lens of a disparate grouping of artist, atleast when it comes to the indie scene. Secondly say the industry does exist? is Unity then even the most used? The only article I could find says, [kind of](https://www.gamedeveloper.com/production/which-are-the-most-commonly-used-game-engines-) it is on Itch.IO but Unreal takes the cake on Steam. And this is of course games released. Games and especially AAA games take years to build, so if we choose the engine to teach people to use based on yesterday, who is to say it will be the engine used tomorrow?

### "Solution"
Maybe then, the argument for engine choice should be one of a desired future, rather than a purely plausible one. Since teachers are in a position to **teach** students about new engines, tools and perspectives. The university as an institution is the perfect place to learn and experiment with the engine that teachers want to see used more. And to still make an argument for those valuing a job, the largest percent of games on steam are made with "another engine" and companies use proprietary tools all the time, so learning how to learn is going to be the most useful tool in a programmers toolbox (and especially a designer/programmers), or in other words, teaching how to get [over mount stupid](https://www.youtube.com/shorts/8XYDQlQUBnw?feature=share). So, the solution at the time of writing this is to learn Godot, not because it will be the indie engine of tommorow (although it might be that) but because it alligns with my own value of appreciating FOSS and because it at the moment, is the least likely to become [enshittified] https://www.wired.com/story/tiktok-platforms-cory-doctorow/.  








## Project README
For posterity, and for informations sake I have chosen to leave this here, I HAVE NOT WRITTEN THIS!

### 🎮 [Play on itch.io!](https://new-cylandia.itch.io/little-warioware)
### 🎙️ [Join our Discord Server!](https://discord.gg/jfmYPE3qV7)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![License: CC-BY](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) [![License: CC-BY](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)

## What is this?

Little Warioware is an open-source clone of [Nintendo's WarioWare series](<https://www.mariowiki.com/WarioWare_(series)>), in which players must survive a gauntlet of randomized "microgames" (games with a simple objective and a time limit of less than 10 seconds).

If you haven't played WarioWare before, I recommend checking out some longplay videos on Youtube: https://youtu.be/XLg1zLXTnL0?t=168

The goal with this project is not to make a 1:1 reproduction of the original games, but to provide a framework for playing microgames and allowing _anyone_ to create their own microgames. Also, **crediting and discovery will be a primary focus** - the dream is to make a system in which you can easily bookmark microgames you enjoyed and trace the creators back to their external social media or portfolio sites.

In short - I want to give WarioWare the [Little Mario](https://github.com/a-little-org-called-mario/a-little-game-called-mario) treatment!

## How can I help?

Microgame contributions are always welcome, but there's still a lot of core system work that needs to be hammered out as well. There are a number of pieces I would like to be firmly in place before making this project fully public and open to submissions. I will try to keep the [Issues page](https://github.com/iznaut/little-warioware/issues) updated - anything there is work that needs to be done and I could likely use all the help I can get!

A lot of the conversation around the project happens on our [Discord](https://discord.gg/jfmYPE3qV7), drop on by to chat with folks about getting involved!

By contributing, you agree to abide by our [code of conduct](CODE_OF_CONDUCT.md). We take it seriously!

## Resources

At some point I will formalize the rules and guidelines for making microgames and contributing, but for now I'm just going to point to the incredible wealth of resources available on MarioWiki:

- [Microgame](https://www.mariowiki.com/Microgame) - An overview of how a microgame is designed
- [List of WarioWare, Inc.: Mega Microgame$ microgames](https://www.mariowiki.com/List_of_WarioWare,_Inc.:_Mega_Microgame$!_microgames) - An exhaustive list of all 213 microgames from the original WarioWare, each with its own dedicated wiki page with gameplay descriptions and screenshots
- [WarioWare D.I.Y.](https://www.mariowiki.com/WarioWare:_D.I.Y.) - An overview of Nintendo's own attempt at a WarioWare that includes tools for user-generated content (a stretch goal for this project would be to similarly include tools that make it easy for non-programmers to create microgames!)

You can also read my [more rambly notes on Notion](https://iznaut.notion.site/Little-Warioware-c289be2b77fe4b478a5bf1ad66cef8b5), if you really want to.

## Project Licensing

The source code for this project is licensed under the MIT License. A copy of this license can be found in the `LICENSE.md` file in this repo.
Non-code assets for this project are licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).
Additionally, `ATTRIBUTION.md` contains credits for third-party assets not covered under either of those licenses.

This project is licensed under extremely generous terms. Our intent is that you are welcome to liberally borrow code or assets from this project (given appropriate crediting and all other licensing terms are met), but we ask that you not rip off whole microgames or the entire game, and that you not attempt to financially profit from this work.
