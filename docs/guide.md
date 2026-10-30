# Get OTB onto your tuner, and use it

Preview, October 30, 2026. The install steps follow Peterson's own pages. The Trading Post entry is not posted yet; once it is, I will install OTB from it onto my own tuner, correct anything that differs, and add screenshots.

## What you need

- A Peterson StroboClip HDC, HDC-B or HDC-V. [Other models](compatibility.md).
- The tuner's USB-C cable. The HDC charges and connects by USB-C.
- A computer running Google Chrome or Microsoft Edge (or Chromium, Opera, Vivaldi, Comodo Dragon). Peterson Connect does not work in Safari.
- A free account at [petersontuners.com](https://www.petersontuners.com/).

## Install from the User Trading Post

1. Plug the tuner into the computer and sign in at petersontuners.com.
2. Open the [User Trading Post](https://www.petersontuners.com/sweeteners/shared/) and choose the **Shared User Configurations** tab.
3. Find **OTB** (listed for the StroboClip HDC) and click **Add to My Tuner**. The browser asks you to pick the connected tuner the first time; allow it.
4. Wait for the update to finish before unplugging. The tuner then starts with EQU, followed by the 20 tunings in the card's order.

Installing may replace a custom configuration already on the tuner. Peterson's factory presets are never lost: on the tuner, open Settings, then Configuration, and choose `dEF` to get the factory list back; choose `OTB` to return. Both stay on the tuner.

## On the tuner

The tuner has three buttons: − , Menu (also power), and +.

| To | Do |
|---|---|
| Change tuning | Click Menu until the three-letter code flashes. Step with + or −. Click Menu again, or wait, and the code stops flashing. |
| Back to EQU, the plain chromatic preset | While the code flashes, press + and − together. |
| Tune a string | Pluck one string at a time, with a finger rather than a pick. The strobe bands scroll left when the string is flat, right when sharp, and stand still when it is in tune. Come up to pitch from below. |
| See which tuning is active | The code shows at the lower right in that tuning's color. The tunings with a sweetened note also show the word SWEETENER above the code. |
| Keep the card's order | Settings, then Auto-Order (the large A): Off. With it On, the tuner moves the presets you use most to the top of the list. |
| Return to the factory list | Settings, then Configuration (the large C): `dEF`. Back to OTB: `OTB`. |

Settings is reached by clicking Menu five times, until the gear icon shows, then +. Concert A (Menu four times) and Drop/Capo transposition (Menu three times) are saved per preset; leave them at 440 and 0 unless you know why you are changing them.

## What you will see, and what catches people out

**The tuner listens only for the five notes of the selected tuning.** A string that is far off reads as another note in the tuning, with a still strobe. Select Piney Woods with the banjo still in G Standard and the 4th string reads a steady D; its target is low G. Check the letter against the card before you trust the strobe.

**On big moves, get close by ear first,** then let the tuner finish. Piney Woods drops the 4th string seven semitones.

**Seven tunings are a whole step above another one;** the card's notes say which. Tune all five strings up two semitones, or stay in the lower tuning and capo at the 2nd fret, raising the 5th string two semitones by hand or with a spike at the 7th fret. Then select the higher tuning on the tuner.

**Weak or jumpy readings,** most often on the short 5th string: try clipping the tuner to the rim of the pot instead of the headstock. The headstock works; the rim is a little steadier. This is my experience with two banjos, not Peterson's instruction.

**Keep listening.** Tuning by ear is still tuning; the strobe is there to confirm it.

## If the tuner's list does not match

Peterson Connect compares the tuner with your saved configuration when you reconnect, and offers to update the tuner if they differ. If the tuner shows presets that should not be there, or is missing some, unplug it, plug it back in, open [Peterson Connect](https://www.petersontuners.com/connect/) and accept the update it offers.

## How OTB was built, for anyone who wants to adapt it

Everything was done in Peterson's browser tools, signed in at petersontuners.com.

1. **Design Custom Sweeteners** (Tools menu). Each tuning is one sweetener: a name of exactly three characters, a description, five notes entered with their octave (the designer sorts them low to high, so the short 5th string lands at the right end), a cent offset per note, and the box "Sweetener should ignore all other chromatic notes and only respond to the notes listed above" ticked. Note names were kept, not string numbers. G Minor's accidentals were set to flats so the tuner shows B♭. Peterson's "5 String Banjo" template gives G Standard as a starting point, and any sweetener of your own can be the template for the next one.
2. **Configure Your Tuner** (Peterson Connect). The preset list holds EQU first, then the 20 tunings in order. Each preset gets a display color here, not in the designer; the palette holds at most 15 colors, and a color must be in the palette before a preset can use it. The toggle under the list is set to "Do NOT include any additional factory presets", and Auto Re-Order is off. The configuration is named OTB with a short description.
3. **Update Connected Device** sends the list to the tuner. Judge colors on the tuner, not on the screen: Peterson's swatches are not a reliable preview of the LCD.

Capacity was not a problem: twenty-five five-note presets used a few percent of the tuner's memory once the factory presets were excluded.

## Questions and corrections

Email marmor@duck.com, or [open an issue](https://github.com/mmarmor/stroboclip-old-time-banjo/issues) if you have a GitHub account.
