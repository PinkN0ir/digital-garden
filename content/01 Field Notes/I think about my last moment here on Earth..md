---
cssclasses:
  - banner
  - banner-fade
Date: 2026-08-11
created: 2026-08-11T05:35:00
updated: 2026-08-11T05:35:00
aliases:
  - I want my impact to outlive me.
tags:
  - death
---
![[Pasted image 20260810040758.png|banner]]

---

I think about death every day, and I couldn't be happier.

I'm not just curious about life after earth — I'm curious about the moment just before it. What could possibly be going through my head after realizing this is it, my time has come? When I reflect back on my life, would I be proud or disappointed by my past choices?

The realization that we are all going to die is a wake-up call. That time is extremely valuable. And every second spent should be used intentionally.

---

Thinking about death is a common practice I first read about in [Show Your Work](https://austinkleon.com/show-your-work/) by Austin Kleon. He stated:

> _"Thinking about death every morning makes me want to live."_

He takes time out of each morning to remember that death is part of his future — that when he wakes up, it's a blessing, another opportunity to live. Kleon takes it one step further by reading obituaries. He believes reading them is more about life than death. It's somebody's life story: their accomplishments, how they spent their years, and the impact they left behind. Kleon wrote:

> _"Reading about people who are dead now and did things with their lives makes me want to get up and do something decent with mine."_

Kleon calls this morning ritual a "near-death experience for cowards." When people come face to face with death, they begin to see life as the most beautiful thing. For some it's a blessing in disguise — a new point of view, a new beginning, another chance. But Kleon doesn't want to face death to feel an urge to live, so instead he reads about it, and he does that every day.

In [Show Your Work](https://austinkleon.com/show-your-work/), Kleon quotes Steve Jobs from his famous 2005 Stanford commencement address, where he describes death as "the single best invention of life." Jobs, too, used death to remind himself that there isn't enough time in life to wait. Pride, fear, embarrassment — those feelings often hold us back from what our hearts yearn for. But remembering that we will soon die reminds us to follow our own destiny instead of the path others expect us to walk.

> "Remembering that I'll be dead soon is the most important tool I've ever encountered to help me make the big choices in life. Because almost everything — all external expectations, all pride, all fear of embarrassment or failure — these things just fall away in the face of death, leaving only what is truly important. Remembering that you are going to die is the best way I know to avoid the trap of thinking you have something to lose. You are already naked." —Steve Jobs

---

[[Memento Mori]] is a Latin phrase meaning "remember you must die." It was, and still is, a phrase people use to remind themselves that we are mortal. Sooner or later, we will die.

In my Obsidian daily notes, I include a [[Memento Mori]] tracker. I found the tracker in a [starter vault template by Paul's Obsidian Systems](https://ko-fi.com/s/33678f10a7), but I tweaked the code to be accurate for my birthday and to have the progress bar move throughout the year instead of updating just once a year. This is what my tracker looks like as of today's daily note:

### Memento Mori

```dataviewjs
const today = dv.current().date;
const lifespan = { year: 80 }
const birthday = DateTime.fromObject({
year: 2008,
month: 3,
day: 14
});

const deathday = birthday.plus(lifespan)
function progress(type) {
let value;
switch(type) {
case "lifespan":
const totalDays = deathday.diff(birthday, "days").days; const daysLived = today.diff(birthday, "days").days; value = (daysLived / totalDays) * 100;
break;
}

return `<progress value="${value}" max="100"></progress> &nbsp;&nbsp; ${value.toFixed(2)} %`

}

dv.span(`${progress("lifespan")}
`)
```

Based on today's date (August 11th, 2026), my birthday, and a lifespan of 80 years, it reads that I have already lived 23.01% of my life. This is not accurate. I don't actually know if I'm going to die on my 80th birthday. But it's a good representation of the fact that my life will come to an end.

Every day I watch the percentage go up. It didn't take me long to realize that as I live more, I have less time than I once had. I always feel like the tracker is moving fast, faster than I've actually lived sometimes. But that's the thing: time will not pause for me, and it will not pause for anyone. If I move slowly, time will pass me by, and I'll be stuck wishing I had more of it. Just as living slowly limits us, rushing through life does no good either. So instead, I use it as a reminder not to hesitate. I don't need to experience it all at once; I need to embrace every moment I'm blessed with, and I need to act without hesitation, without the "what if" or the "is it even possible."

---

Whenever I'm scared to take a risk, I think of her — me, with the same body and brain I have now, only with the afterlife in plain view. Knowing I'm about to die, if she were watching this moment, what would she want me to do? What would she wish she had done?

Every choice I make, big and small, I make so she has a good story told of her; so she leaves the world remembered, respected, and cared for. When I die, I want to know I contributed to making the world a better place. `I want my impact to outlive me.` ^05a74b

---

A practice I want to begin is writing my own obituary — not for when I die, but for as I live. I want a reminder of the life I'm striving toward. I believe I can better understand my ambitions by viewing life as if it already happened. When my story is being told, what do I want to be remembered by?

---







