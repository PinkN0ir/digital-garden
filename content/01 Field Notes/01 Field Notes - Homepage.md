---
cssclasses:
created:
updated:
aliases:
tags:
---

---

Personal [[Field Notes]] start off as rough drafts. They often look like ungrammatical word vomit thrown on a page. But the point is never perfection. It's to store important information in a place more reliable than our brains.

When I'm not pressed for time and my mind is clear, I return to the notes I've accumulated. That's when I'm able to turn my raw notes into a full-fledged abstract concept.

 ### [[All My Field Notes!]] ←

<p>Since August of 2026, I have written <strong><span id="field-note-count">...</span></strong> Field Notes!</p>

<script>
(async () => {
  try {
    const response = await fetch("/static/contentIndex.json");
    if (!response.ok) throw new Error("Index unavailable");

    const content = await response.json();

    
const notes = Object.entries(content).filter(([slug]) => {
  const path = slug.toLowerCase().replace(/^\/|\/$/g, "");

  return (
    path.startsWith("01-field-notes/") &&
    !path.endsWith("01-field-notes---homepage")
  );
});


    document.getElementById("field-note-count").textContent = notes.length;
  } catch (error) {
    document.getElementById("field-note-count").textContent = "?";
    console.error("Could not count Field Notes:", error);
  }
})();
</script>


Because these notes started off as fleeting ideas, the topics of these notes can range across any category that could have sparked my interest. When I have a [[gut feeling]] that I have to capture the thoughts in my mind, I do just that, no matter the topic. I take a gut feeling as a sign and I run with it. When a fact, quote, or idea sticks out to me, that's my intuition telling me it will later provide value.

---
### What is a Digital Garden?
*If you're new to the world of digital gardening; learn about the practice here!*
![[What is a Digital Garden.base]]

---
### Bible Study Notes
*These are the life lessons that God has taught me!*
![[Bible Study Notes.base]]

---

> [!example] ### [[my personal philosophy|My Personal Philosophy Notes]] ←

*These notes sum up the beliefs, values, and principles and I choose to live by. The more I live the more my personal philosophy evolves with me.*

---
