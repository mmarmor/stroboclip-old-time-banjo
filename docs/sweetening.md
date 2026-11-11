# Sweetened thirds, in plain words

This page explains the green numbers on the card: what OTB changes, why, what you give up for it, and when to switch to plain EQU instead. Three kinds of evidence are kept apart: what Peterson says, what the physics says, and what players report.

## What OTB does

A cent is one hundredth of a semitone. In eleven of the 20 tunings, one note of the open chord is a third above the root. In ten it is a major third: the B in G Standard, the C♯ in A Standard, the G♯ in Old Reuben, and so on; OTB tunes every open string that sounds that third 6.8 cents flat. In G Minor it is a minor third, the B♭, and OTB tunes it 7.8 cents sharp. Everything else sits at 0: the other strings of those eleven tunings, and all five strings of the nine tunings that have no third among their open strings (Old G, Double C, Sawmill, Double D, A Modal, Sawmill: Sandy River, Last Chance, Triple C and Big Eyed Rabbit).

On the tuner, selecting one of the eleven shows the word SWEETENER above the code. The card's table marks each sweetened note in green.

## What Peterson says

- Peterson calls its instrument-specific presets Sweeteners "because they make an instrument sound 'sweeter' by slightly adjusting each note to compensate for common tuning problems specific to an instrument type" (StroboClip HDC Quick Start Manual v1.3).
- Peterson's factory banjo preset, BJO, is described as countering the typical sharp B string (StroboClip HD manual). In G Standard the B string is the chord's major third.
- Peterson's StroboFlip manual (2009) prints two options for the thirds of a Dobro's open chord: pure, 13.7 cents flat, and half-tempered, 6.8 cents flat, with every other note at 0. OTB uses the half-tempered figure.
- EQU, the default preset, "does not apply any adjustments" and turns the tuner into a plain chromatic tuner (StroboClip HDC Quick Start Manual v1.3).

Peterson does not publish BJO's exact offsets. OTB's 6.8 comes from the StroboFlip manual, not from BJO.

## What the physics says

**Two meanings of "in tune".** Two notes sound smoothest together when their frequencies form a simple ratio: 2:1 for an octave, 3:2 for a fifth, 5:4 for a major third. Those are pure intervals. Frets cannot give pure intervals in every key, so fretted instruments use equal temperament: twelve identical semitones per octave, and the frets are placed for that. Here is how far that leaves each interval from pure, in cents:

| Interval | Pure ratio | Equal temperament vs. pure |
|---|---|---|
| Octave | 2:1 | 0 |
| Fifth | 3:2 | −2 |
| Fourth | 4:3 | +2 |
| Major third | 5:4 | +14 |
| Minor third | 6:5 | −16 |
| Major sixth | 5:3 | +16 |

Fourths and fifths come out almost exactly right. Thirds and sixths are off by 14 to 16 cents, about a sixth of a fret. A tuner at 0 cents gives exact equal temperament, so in G Standard the open B sits 14 cents sharp of a pure third above the G. That is the "sharp B string" Peterson's description refers to.

**Beats.** A plucked string sounds its main note plus overtones at two, three, four and five times that frequency. When two strings ring together, some of their overtones land almost on top of each other, and the sound pulses at the difference between them. In G Standard at 0 cents, the G and B strings together pulse about 8 times a second and the B and D strings about 13 times a second; the G and D strings, a fifth, pulse less than once a second. With the B 6.8 cents flat the two fast pulses drop to about 4 and 7 a second; at 13.7 cents flat, the G-B pulse stops. A banjo makes this easy to hear because its strings drive the head with spectra "all quite rich in high harmonics" (David Politzer, *Banjo Drum Physics: theoretical preliminaries*, Caltech, 2017).

**The trade-off.** A sweetener moves the whole string, not just the open note. Every fretted note on a string tuned 6.8 cents flat is also 6.8 cents flat. Fret the sweetened string to match an open string and the unison, normally dead still, wobbles by the amount of the offset. Half-tempered rather than pure is a compromise: open chords ring smoother, and fretted notes on that string stay close enough to equal temperament to live with. Fretting also stretches a string slightly sharp, which no sweetener can fix; that is what compensated bridges are for (Varieschi and Gower, "Intonation and Compensation of Fretted String Instruments", *American Journal of Physics*, 2010).

**Capo.** Seven OTB tunings are exactly another tuning a whole step up. Because the offset is on the string, a capo at the 2nd fret in the lower tuning gives the higher tuning with the same offsets. Raise the 5th string two semitones by hand or with a spike, and the tuner's higher preset checks the result.

The arithmetic behind these numbers is ordinary: cents of each pure interval against 100 per semitone, and overtone frequencies at A = 440 Hz. Nothing here depends on a measurement I made.

## What players report

In Banjo Hangout threads from 2008 and 2014, players describe flattening the B string by ear for open G chords, some by much more than 6.8 cents, and others warn that a flattened open B sounds wrong once it is fretted in positions; one StroboClip owner wrote that the banjo sweetener "tames" the B string. Fretted melody notes against ringing open drones, the normal clawhammer situation, are where an equal-tempered third or sixth sounds most out of tune, and where a compensated bridge matters more than a sweetener. Threads: [banjohangout.org/archive/105651](https://www.banjohangout.org/archive/105651), [banjohangout.org/archive/293064](https://www.banjohangout.org/archive/293064), [banjohangout.org/archive/280224](https://www.banjohangout.org/archive/280224). These are read as other players' experience, not as measurements.

## When to use EQU instead

- Playing with a piano, accordion, or anything else fixed in equal temperament.
- A tune that lives on fretted notes high up the sweetened string.
- Any time you are not sure. EQU is Peterson's default and the safe choice.

On the tuner, with EQU in your list: click Menu until the code flashes, then press + and − together. Click Menu until the code flashes again and step with + or − to return to a tuning. If EQU is not in your list, the [guide](guide.md) shows where to add it.

## Hear it yourself, in two minutes

1. Select EQU and tune all five strings until the strobe stands still.
2. Pluck the 3rd and 2nd strings together and listen through the first second of the ring for a fast flutter.
3. Lower the 2nd string a hair at a time by ear until the flutter slows or stops.
4. Select G Standard (GST) and pluck the 2nd string. A still strobe means your ear landed on 6.8 cents; a strobe drifting flat means you went past it toward pure; drifting sharp means you stopped short.

## Not in this version

Two tunings have a sixth among their open strings (Old G and Last Chance) and nothing is sweetened there yet. Pure sixths would help those two and harm others, so they wait for a later version.
