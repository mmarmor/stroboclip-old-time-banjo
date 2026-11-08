# Which Peterson tuners can use OTB

Preview, October 30, 2026. Three kinds of statement are kept apart below: what Peterson's own pages, manuals and support staff say; what I infer from them; and what is still unknown. Where a row says "asked", the question is with Peterson support.

## The whole configuration: all 20 tunings, in order, with their colors

| Model | OTB as one configuration | Basis |
|---|---|---|
| StroboClip HDC | Yes. OTB was built and tested on one (firmware 1.0.15). | Tested |
| StroboClip HDC-B | Yes. Peterson support: the HDC-B is the same tuner as the HDC with a different clip. | Peterson support, 29-Oct-2026 |
| StroboClip HDC-V | Very likely. Peterson's product page describes the same color display, 0.1-cent accuracy and per-tuning colors, with a wider clamp; Peterson support says the Standard, V-style and B-style clips fit any StroboClip HD, HDC, HDC-V or HDC-B. I infer the configuration loads unchanged. Not yet confirmed by Peterson for configurations. | Peterson HDC-V page, fetched 29-Oct-2026; Peterson support, 27-Oct-2026; inference |
| Other Peterson Connect tuners | Unknown. The User Trading Post lists shared configurations per product ("for StroboClip HDC", "for StroboPLUS HD", and so on), and nothing on the page says whether a configuration shared for one product can be added to another. | Peterson Trading Post page, fetched 29-Oct-2026; asked |

## Single tunings, one at a time, on other Peterson Connect tuners

Peterson Connect, the browser tool that moves presets onto a tuner, works with these products (Peterson's Connect page, fetched 29-Oct-2026): StroboClip HDC, StroboStomp Mini, StroboPLUS HDC, StroboClip HD, StroboStomp HD, StroboStomp LE, StroboPLUS HD, and the Stomp Classic pedal. All of them accept custom sweetened tunings. Each of the 20 OTB tunings is also shared on its own as an individual sweetener (User Trading Post, Misc. Instruments, by Michael Marmor, since October 31, 2026), so owners of these tuners can add the ones they want to their own configuration.

What carries over to a single shared tuning:

| Feature | Which models | Basis |
|---|---|---|
| The five target notes and the sweetener offsets | All eight Connect models | Peterson's Connect page: "Create your own sweetened tunings with custom offsets and note names" |
| Listening only for the tuning's five notes (a far-off string reads as the nearest of the five) | StroboClip HDC family (tested); StroboClip HD, StroboPLUS HD, Stomp Classic and StroboStomp HD (Peterson's Guided Tuning Manual, 2019); StroboStomp Mini, StroboStomp LE and StroboPLUS HDC: unknown | Guided Tuning Manual; tested on the HDC; the rest asked |
| A display color per tuning | The models with a color display: StroboClip HDC, HDC-B, HDC-V and StroboPLUS HDC. Colors belong to a configuration, not to a single sweetener, so a tuning added on its own takes the tuner's current color. | Peterson product pages; inference for the single-tuning case |
| The three-letter code | All models show a three-character preset name | Peterson manuals |
| The order on the tuner | Set in your own configuration, not by the shared tuning | Peterson Connect's Configure page |

## The computer side

Peterson Connect runs in browsers that support WebHID: Google Chrome, Chromium, Microsoft Edge, Opera, Vivaldi and Comodo Dragon (Peterson's Connect page, fetched 29-Oct-2026). It does not work in Safari. Firefox is not on Peterson's list. You can design and configure in any browser; only the transfer to the tuner needs one of the listed browsers.

## Corrections

If you install OTB on a model not covered above, or find a row here to be wrong, email marmor@duck.com or open an issue; the row will be updated with your model and firmware version.
