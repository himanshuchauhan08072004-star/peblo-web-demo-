## Peblo Story Buddy

An interactive, kid-friendly storytelling and quiz application built for the Peblo technical challenge — redesigned into a story discovery platform with selectable AI narrators, animated scene reading, a retry-friendly quiz, and a local progress/badges system.

# LIVE :- https://peblo-web-demo.vercel.app/

# Technical Choices & Architecture
Framework Selection

Which framework did you choose and why? I chose Flutter. It allows for rapid UI development, creates smooth ~60fps animations easily, and provides a robust ecosystem for Text-to-Speech (TTS) and state management. Its cross-platform nature also means this single codebase can deploy seamlessly to Web, iOS, and Android.

# Project Structure
# AI Usage & Judgment

Where did you use AI assistance? I used an AI assistant as a pair-programmer for the full redesign pass: restructuring the single-file prototype into the layered architecture above, writing the voice-mapping logic, and troubleshooting the local Windows/PowerShell environment (Flutter not on PATH, missing platform folders, stale analyzer errors) to get a clean build.

What did you try that didn't work, and how did you resolve it? The first flutter analyze after integrating the new code threw an undefined_identifier on CharacterPose in the completion screen — a missing import from splitting the old single-file prototype into separate model/screen files. Fixed by importing models/story.dart there. The default test/widget_test.dart left over from the original scaffold also failed to compile, since it referenced a class name (MyApp) that no longer exists post-redesign; I removed it rather than rewrite a placeholder test around it.

Name one suggestion you rejected or changed, and why. The AI's first draft of narrator preview reused the TTS engine's onComplete callback directly without saving the previous one. I rejected that because it silently broke story narration the moment someone previewed a voice mid-story — any handler already attached (the scene auto-advance logic) would be wiped out. I had it save and restore the prior handler instead, so preview and narration can't clobber each other. 
## Himanshu Chauhan - himanshuchauhan08072004@gmail.com
