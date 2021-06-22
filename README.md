# Never Say You Can’t Survive ![in progress](https://img.shields.io/badge/status-complete-green) ![MIT license](https://img.shields.io/badge/license-MIT-brightgreen)

![Book Cover](cover.jpg)

“You have the power to shape worlds, and the monsters are scared of you.”

From author Charlie Jane Anders, Never Say You Can’t Survive is a how-to book about the storytelling craft, but it’s also full of memoir, personal anecdote, and insight about how to flourish in the present emergency.

---

The repository contains scripts to generate an ebook in the EPUB format from the posts at tor.com. More details at <https://www.tor.com/series/never-say-you-cant-survive-by-charlie-jane-anders/>.

Support the author by getting the book at [Amazon.com](https://www.amazon.com/Never-Say-You-Cant-Survive-ebook/dp/B08JK8XD1N), [Indiebound](https://www.indiebound.org/book/9781250800015), [Barnes and Noble](https://www.barnesandnoble.com/w/never-say-you-cant-survive-charlie-jane-anders/1137655286?ean=9781250800015). Audiobook coming soon [on Audible](https://www.amazon.com/Never-Say-You-Cant-Survive/dp/B08XDQGS5Q/).

## How to run

### With Docker

```bash
docker pull captn3m0/never-say-you-cant-survive
docker run --rm --volume "$(pwd):/output" captn3m0/never-say-you-cant-survive:latest
```

The generated file will get created in your current directory.

If you are on Windows, instead run:

```
docker pull captn3m0/never-say-you-cant-survive
docker run --rm --volume "//c/:/output" captn3m0/never-say-you-cant-survive:latest
```

and the generated ebook will be created in the `C:\never-say-you-cant-survive.epub`.

### Without Docker

Dependencies: `ruby`, `wget`, `pandoc`

```
git clone https://github.com/captn3m0/never-say-you-cant-survive.git
cd never-say-you-cant-survive
bundle install
./generate.sh
```

Your generated ebook should be available at never-say-you-cant-survive.epub

## Contents

(All links to Tor.com)

<details><summary>Section I - Introduction</summary><ol>
<li markdown=1>[How To Make Your Own Imaginary Friends][c1]</li>
<li markdown=1>[Imposter Syndrome Is Just Part of Being a Writer][c2]</li>
<li markdown=1>[Embrace Uncertainty: The Joy of Making a Giant Mess][c3]</li>
<li markdown=1>[Everything Is Broken! What Should I Write About?][c4]</li>
</ol></details>

<details><summary>Section II - What’s A Story, and How Do You Find One?</summary><ol>
<li markdown=1>[Don’t Be Afraid to Go on Lots of First Dates With Story Ideas][c5]</li>
<li markdown=1>[The Secret to Storytelling? Just One Good Scene, and Then Another and Another][c6]</li>
<li markdown=1>[The Most Powerful Thing a Story Can Do Is Show How People Change][c7]</li>
<li markdown=1>[A Good Plot Is Made Out of Two Things][c8]</li>
<li markdown=1>[How to Tell a Thrilling Story Without Breaking Your Own Heart][c9]</li>
<li markdown=1>[The Ending Is The Beginning][c10]</li>
</ol></details>

<details><summary>Section III - Your Feelings are Valid—and Powerful</summary><ol>
<li markdown=1>[Hold On To Your Anger. It’s a Storytelling Goldmine][c11]</li>
<li markdown=1>[People Are Only as Interesting as Their Relationships][c12]</li>
<li markdown=1>[One Easy Way to Feel Better About the World][c13]</li>
<li markdown=1>[Revision Is the Process of Turning Fake Emotion Into Real Emotion][c14]</li>
<li markdown=1>[Twelve Ways to Keep the Fun of Writing Alive][c15]</li>
</ol></details>

<details><summary>Section IV - What We Write About When We Write About Spaceships</summary><ol>
<li markdown=1>[How to Write a Political Story Without Falling on Your Face][c16]</li>
<li markdown=1>[Good Worldbuilding Shows How Things Could Be Different][c17]</li>
<li markdown=1>[The Unexamined Story Is Not Worth Writing][c18]</li>
<li markdown=1>[Weirdness Gives Me the Strength To Keep Going][c19]</li>
<li markdown=1>[When Is It Okay To Write About Someone Else’s Culture or Experience?][c20]</li>
</ol></details>

<details><summary>Section V: How to Use Writerly Tricks to Gain Unstoppable Powers</summary><ol>
<li markdown=1>[Find Your Voice and Make It LOUD][c21]</li>
<li markdown=1>[A Strong Narrator Can Help You Weave a Spell of Protection][c22]</li>
<li markdown=1>[When the World Goes Loopy, You Can Become a Master of Time and Space][c23]</li>
<li markdown=1>[Irony Doesn’t Have To Be the Enemy of Feels. They Can Team Up, In Fact!][c24]</li>
<li markdown=1>[Write The Book That Only You Could Have Written][c25]</li>
</ol></details>

## License

Licensed under the [MIT License](https://nemo.mit-license.org/). See LICENSE file for details.

## Other Projects

A list of my other EBook generation projects: <https://captnemo.in/ebooks/>.

[c1]: https://www.tor.com/2020/05/12/never-say-you-cant-survive-how-to-get-through-hard-times-by-making-up-stories/
[c2]: https://www.tor.com/2020/05/19/never-say-you-cant-survive-imposter-syndrome-is-just-part-of-being-a-writer/
[c3]: https://www.tor.com/2020/05/26/never-say-you-cant-survive-embrace-uncertainty-the-joy-of-making-a-giant-mess/
[c4]: https://www.tor.com/2020/06/09/never-say-you-cant-survive-everything-is-broken-what-should-i-write-about/
[c5]: https://www.tor.com/2020/06/16/never-say-you-cant-survive-dont-be-afraid-to-go-on-lots-of-first-dates-with-story-ideas/
[c6]: https://www.tor.com/2020/06/23/never-say-you-cant-survive-the-secret-to-storytelling-just-one-good-scene-and-then-another-and-another/
[c7]: https://www.tor.com/2020/06/30/never-say-you-cant-survive-the-most-powerful-thing-a-story-can-do-is-show-how-people-change/
[c8]: https://www.tor.com/2020/07/14/never-say-you-cant-survive-a-good-plot-is-made-out-of-two-things/
[c9]: https://www.tor.com/2020/07/21/never-say-you-cant-survive-how-to-tell-a-thrilling-story-without-breaking-your-own-heart/
[c10]: https://www.tor.com/2020/07/28/never-say-you-cant-survive-the-ending-is-the-beginning/
[c11]: https://www.tor.com/2020/08/04/never-say-you-cant-survive-hold-on-to-your-anger-its-a-storytelling-goldmine/
[c12]: https://www.tor.com/2020/08/11/never-say-you-cant-survive-people-are-only-as-interesting-as-their-relationships/
[c13]: https://www.tor.com/2020/08/18/never-say-you-cant-survive-one-easy-way-to-feel-better-about-the-world/
[c14]: https://www.tor.com/2020/08/25/never-say-you-cant-survive-revision-is-the-process-of-turning-fake-emotion-into-real-emotion/
[c15]: https://www.tor.com/2020/09/01/never-say-you-cant-survive-twelve-ways-to-keep-the-fun-of-writing-alive/
[c16]: https://www.tor.com/2020/09/08/never-say-you-cant-survive-how-to-write-a-political-story-without-falling-on-your-face/
[c17]: https://www.tor.com/2020/09/15/never-say-you-cant-survive-good-worldbuilding-shows-how-things-could-be-different/
[c18]: https://www.tor.com/2020/09/22/never-say-you-cant-survive-the-unexamined-story-is-not-worth-writing/
[c19]: https://www.tor.com/2020/09/29/never-say-you-cant-survive-weirdness-gives-me-the-strength-to-keep-going/
[c20]: https://www.tor.com/2020/10/06/never-say-you-cant-survive-when-is-it-okay-to-write-about-someone-elses-culture-or-experience/
[c21]: https://www.tor.com/2020/10/13/never-say-you-cant-survive-find-your-voice-and-make-it-loud/
[c22]: https://www.tor.com/2020/10/20/never-say-you-cant-survive-a-strong-narrator-can-help-you-weave-a-spell-of-protection/
[c23]: https://www.tor.com/2020/11/03/never-say-you-cant-survive-when-the-world-goes-loopy-you-can-become-a-master-of-time-and-space/
[c24]: https://www.tor.com/2020/11/10/never-say-you-cant-survive-irony-doesnt-have-to-be-the-enemy-of-feels-they-can-team-up-in-fact/
[c25]: https://www.tor.com/2020/11/17/never-say-you-cant-survive-write-the-book-that-only-you-could-have-written/