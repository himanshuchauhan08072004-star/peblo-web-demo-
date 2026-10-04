## Peblo Story Buddy — Web Demo

A browser recreation of the core experience from [Peblo Story Buddy](https://github.com/himanshuchauhan08072004-star/peblo-story-buddy), a Flutter mobile app built for client Peblo.

**Live demo:** [add your Vercel URL here after deploying]
**Original Flutter app source:** https://github.com/himanshuchauhan08072004-star/peblo-story-buddy

## What this is (and isn't)

The original Peblo Story Buddy is a **Flutter mobile app** with a full story library, Provider-based state management, and custom native animations. It doesn't run in a browser.

This is a **separate, smaller web build** that recreates the core loop — narrated story → comprehension quiz → feedback — so it can be tried directly in a portfolio, the same way Shrinkit can. It's clearly labeled as a web demo on the page itself, not presented as the production app.

## How it works

- Narration uses the browser's built-in **Web Speech API** (`speechSynthesis`), with word-by-word highlighting synced to speech boundaries
- If speech synthesis isn't available in a given browser, it falls back to a timed text-highlight so the demo still works
- The quiz uses the same kind of feedback described in the original app: a shake on wrong answers, a celebratory confetti burst on success

## Browser support note

The Web Speech API works reliably in desktop Chrome and Edge. Support varies on some mobile browsers and OS configurations — the fallback handles this gracefully, but voice quality and availability aren't guaranteed everywhere.

## Stack

Plain HTML, CSS, and vanilla JavaScript. No frameworks, no build step. Deploys as a static site on Vercel's free Hobby plan.

## Author

## Himanshu Chauhan — himanshuchauhan08072004@gmail.com
