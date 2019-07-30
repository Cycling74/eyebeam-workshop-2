## Class Title
From sound to image and image to sound in Max

## Authors
Cory Metcalf and Sam Tarakajian

Cycling '74 https://www.cycling74.com 

github.com/cycling74

## Essential Questions
- What information can be extracted from image and sound? How can I utilize it?
- What is an instrument? How can computers extend or redefine our concept of an instrument? What makes an instrument feel expressive or fun to play?
- How can you take an instrument and make it performable?
- How do I make digital tools talk to each other?
- What is mapping? What does it mean to map one quantity to another?
- What is a feature and how does feature detection work?

## Introduction
This workshop focuses on using video to create sound, and on using sound to manipulate video. To accomplish this, we will use a piece of software called Max, and a little bit of math. The goal for us is to explore expressiveness. A piece of music expresses something, but how can we communicate that same something using video? When something happens in a video, for example a person raising their eyebrows or opening their mouth, can we make the computer respond in a specific, expressive way?

## Target Audience / Prerequisite & Pre-Assessment
This workshop is designed for high school students, roughly in the 14-18 year old range. However, the concepts will also be useful to university students or to younger students if they are especially motivated. We expect workshop attendees to come equipped with a fundamental understanding of programming in Max. Ideally students will have taken an introductory workshop and should already have Max installed. 

## Outcomes & Goals
In this workshop we will work with Max and some third party software extensions to create and perform novel audio-visual instruments. 

Students will gain a deepened understanding of the Max programming environment and how to use Computer Vision and audio analysis tools to extract meaningful information from video and sound. They will also learn the importance of scaling and mapping the resulting data to various parameters within their instruments. In the end, they will have created short, real-time multimedia performances.

## Pacing / Duration
### Part one: Video to Audio (2 hours)
#### 5: Introduction
- Look at examples of artwork where video features are extracted.
#### 50: Techniques and Instrument Building
- What is optical flow?
- Get webcams working, use Max to extract optical flow. 
- Demonstrate mapping mean flow to some kind of audio parameter.
- How does face tracking work?
- Get face tracking working. Demonstrate how to read eyebrow height. Make a sound making machine that changes pitch when you raise and lower your eyebrows.
- How does pose estimation work? 
- Get the PoseNet example working. 
- Make a sound making machine that generates different kinds of noise when you move your arms.
#### 5: Break
#### 30: Small group work to map controls, create presets, and explore
- In groups of two, build a sound making machine that maps a few different sounds. 
- Use mapping techniques like inversion and scaling to make the mapping more expressive.
- Medium exercise: In groups, of two or possibly larger, make a musical instrument controlled by video. Think about how to make it be able to make both loud as well as quiet sounds, or bright sounds and dull sounds. 
#### 15: Go around the room, sharing each other's work.
#### 15: Wrap up
### Part two: Audio to Video (2 hours)
#### 5: Introduction. 
- What is audio reactivity? Look at a couple of examples.
#### 50: Techniques and Instrument Building
- Let's look at an audio signal. Use Jitter to write audio into a video buffer and look at it.
- Use an audio signal to distort live video. See how webcam input can be affected by audio.
- Let's talk about what an envelope is.
- How do we extract an envelope from sound? What is a low frequency versus a high frequency, and how can we split a sound into low and high frequency parts?
- Together, let's build a processor for live video. Use the envelope to control the live video.
#### 5: Break
#### 30: Small group work to map controls, create presets, and explore
- In pairs: Build another kind of video processor, with a different effect. Make envelope rotate the video left or right. How can you switch it on the fly?
- Medium exercise, in larger groups: Pick a sound you like, extract its envelope and use it to control live video in some way.
#### 15: Go around and share each other's work.
#### 15: Wrap up

## Materials Needed
Students will need a laptop or desktop computer running MacOS 10.11.6 or later or Windows 7 with SP1, a webcam, and a copy of Max 8 installed. 

## Exercises To Do Before Class
As mentioned, there is a workshop that we intend to come before this one. However, if anyone has had about four hours of experience with Max, it should be enough to be ready for this class.

## Vocabulary 
- CV (Computer Vision): The field of computer science concerned with having computers perform analysis on images and video to extract meaningful information, such as object boundaries, orientation, and movement.
- Audio Synthesis: The practice of generating electronic sounds to mimic traditional musical instruments or to create novel timbres.
- Envelope: Used to describe the “shape” of a sound. Usually broken into four parts, the attack, decay, sustain, and release, an envelope is a way of describing how the character of a given sound changes over time.
- Media Streams: A series of data usually representing readings from a source at regular points in time. We commonly talk about live audio and video as two different media streams. Other media streams might include accelerometer data from a phone, or temperature data from a digital thermometer.
- Patcher: A document in the Max programming language. The word comes from electronics, where two devices can be connected together by "patching" them together using a cable. Data flows between Max objects to produce behavior.
- Object: The building blocks of Max, small functional units that produce some output in response to input.
- Message: Units of information that pass between Max objects.
- Mapping: The process of taking data from some source and connecting it to something else. This usually involves some kind of transformation to make the connection more meaningful. For example, the left-right motion of a hand could be mapped to the loud-quiet value of a sound.

## Exercise Descriptions
### What is optical flow? (20 minutes)
- Make sure students can get webcam input
- Make sure students can use optical flow object
- Look at optical flow for a bit, talk about what it's doing
	- Potentially talk about gradients using some kind of drawing and simple picture
	- Talk about using color to represent direction
- Extract an overall representation of optical flow
- Create a simple audio processing patch, using optical flow to control one parameter.
### Face tracking (15 minutes)
- Talk a little bit about how face tracking works. Maybe mention that it start with hand-tagged data like this https://towardsdatascience.com/facial-keypoint-detection-detect-relevant-features-of-face-in-a-go-using-cnn-your-own-dataset-e09cf359c2bc.
	- A model then learns what each feature looks like.
- Make sure the students can get the face tracker working.
- Demonstrate how to extract particular points from the image. Demonstrate how to measure distance between points.
- Ask: can we detect if eyebrows are up or down?
- Show how to make eyebrow height agnostic to how far away the face is.
- Use eyebrow height to control some simple musical process, maybe changing pitch.
### PoseNet (15 minutes)
- Discuss: Pose estimation is similar to face feature detection, you start with hand-annotate data and use it to train a model.
- Make sure that the students can get the pose tracker working.
- Demonstrate how to extract particular points from the pose tracker.
- Ask: how can we figure out how high a person is reaching?
- Demonstrate how to use that data to map how high you're reaching to a filter cutoff.
### Small Exercise (15 mintues)
- In groups of two, take one of the tracking techniques that we talked about (face tracking, pose tracking) and track a different feature than the one we talked about. You might measure foot height, or mouth openness, for example. Combine this with you original mapping to create a new sound.
- Show an example so they have something to shoot for.
- Go around and make sure students aren't getting stuck.
### Medium Exercise (30 minutes)
- In groups, make a musical instrument controlled by video. Use one of the techniques we talked about already, along with some more sophisticated sound processing.
- Make sure to think about how to make it be able to make both loud as well as quiet sounds, or bright sounds and dull sounds.
- Take turns being the person playing the instrument and the one programming it.
### Viewing an audio signal (15 minutes)
- Look at an audio waveform. Talk about the peaks and the troughs, and what they represent.
- Make sure the students can get audio input
- Use audio to write samples to a buffer, and then view it using Jitter.
- Use that audio to distort live video by adding it to webcam feed.
### Envelope extraction (15 minutes)
- What is envelope? Look at a few examples of sounds with their envelope extracted.
- Talk about low frequency and high frequency. Talk about basic filtering, and how you can use this to get the envelope of different parts of the sound.
- Demonstrate how to use the envelope extraction to to get out envelope, and to use it to control something simple in Max, like the color of a panel for example.
### Spectral Centroid (5 minutes)
- Talk about what the spectral centroid is, and what kinds of sounds create different spectral centroids.
- Demonstrate how to use the spectral centroid tool, and map it to the same thing.
### Fancy live video processing (20 mintues)
- Demonstrate a particular video effect. Use VIZZIE modules to do something simple, like change the color of an image in response to live video.
### Short exercite (15 minutes)
- In pairs, map envelope to video rotation. But, also add a toggle so that you can change the direction of video rotation.
### Medium exercise (30 minutes)
- In larger groups: Pick a song you like and download it from YouTube. 
- Extract the envelope and spectral centroid from the song.
- Take a look at all of the different effects that exist in VIZZIE. Choose 5 of them, and challenge yourself to use them all in some way to make the video react to the song.
- You might consider adding some controls that you can adjust yourselves while the song plays, for things like fade in/out.
- Try to make a kind of music video using your webcam, to go along with the song as it plays.

## Student Reflections, Takeaways & Next Steps
First Steps - If you're eager to go further, you might want to learn a little bit more about how Max works. There are a ton of great resources out there. 
If you want to go further with video, these are great places to start: https://docs.cycling74.com/max8?contentp=Video%20and%20Graphics&contentg=tutorials
https://cycling74.com/tutorials/jitter-recipes-book-1.

Medium Steps - Audio reactive video is great for augmenting a live performance. Try getting a projector and making some visuals to go along with some live music. If you can find a MIDI controller, you can use that to control your processes in Max.

Big Steps - One thing that we didn't cover in this workshop is actually recording audio and video in Max. Recording them gives you a lot of option and can be a bit overwhelming. However, if you've got the time, I recommend trying them all and seeing what works for you. There's a great article outlining all of the possibilities availiable here: https://cycling74.com/tutorials/best-practices-in-jitter-part-2-recording-1

## Post Session

### Implementation Guidance & Teaching Reflection  
This kind of workshop can be enhanced a lot by making sure that the students can spend as much time as possible doing just the fun stuff. That means two things:
- When controlling audio with video, we give the students samples of audio to stretch and manipulate. Take some time to make sure that these are fun to work with. Edit audio so that there's no strange silence at the beginning or end. Use samples that sound good. Throw in some pop culture references.
- To facilitate experimentation, we provide high level abstractions so that students can get running quickly. These can always be improved! Don't feel like you have to be limited by what we've supplied here.



