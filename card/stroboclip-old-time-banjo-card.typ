// StroboClip HDC tuning card for OTB (Old Time Banjo): two pages, US Letter or A4.
// Page 1: the 20 tunings in tuner order with codes, colors, target notes, semitones from G Standard
// and sweetener offsets. Page 2: what OTB is and how to use it.
// Version: see the date in the page-1 header and in the credit line on page 2.
// Build, with the bundled fonts only so it compiles the same anywhere (Typst 0.15):
//   typst compile --font-path fonts --ignore-system-fonts stroboclip-old-time-banjo-card.typ stroboclip-old-time-banjo-card_letter.pdf
//   A4: add --input paper=a4 (same content width as Letter; the extra height goes to taller rows)
// Fonts in fonts/: Atkinson Hyperlegible Next (SIL Open Font License 1.1) and DejaVu Sans (its own license,
// for the sharp and flat signs Atkinson lacks). DejaVu Sans Mono is built into Typst.
// Card and text (c) 2026 Michael Marmor, CC BY 4.0. Tunings, names and order from Tom Collins's Banjonomicon.

#let body-font = ("Atkinson Hyperlegible Next", "DejaVu Sans")
#let a4 = sys.inputs.at("paper", default: "us-letter") == "a4"
#let version = "7"

#set document(title: "StroboClip HDC Tuning Card", author: ("Michael Marmor",))
#set page(
  paper: if a4 { "a4" } else { "us-letter" },
  // A4 is 17pt narrower: its side margin keeps the 540pt content width of Letter.
  margin: (x: if a4 { 27.64pt } else { 0.5in }, top: 0.4in, bottom: 0.35in),
)
#set text(
  font: body-font,
  size: 9pt,
  lang: "en",
  fill: rgb("#1d2433"),
)
#set par(leading: 0.45em)

#let ink = rgb("#1d2433")
#let muted = rgb("#646b78")
#let rule = rgb("#d9dde3")
#let accent = rgb("#9a4a1c")
#let up-fill = rgb("#fbe6d6")
#let up-ink = rgb("#a1440f")
#let dn-fill = rgb("#dfe8f5")
#let dn-ink = rgb("#2b5c99")
#let sweet-ink = rgb("#1b7a5a")
#let code-font = body-font
#let mono = ("DejaVu Sans Mono",)

// Tuner display colors, as set on the Configure page.
#let tc = (
  white: rgb(255, 255, 255),
  yellow: rgb(255, 255, 0),
  ltblue: rgb(0, 127, 255),
  tan: rgb(255, 205, 138),
  cyan: rgb(0, 255, 255),
  ltgreen: rgb(147, 255, 163),
  // GMI is set as gray 153,153,153 in Connect; the tuner shows it as orchid pink (operator photo, 22-Oct-2026).
  orchid: rgb(240, 150, 235),
  green: rgb(0, 255, 0),
  red: rgb(255, 0, 0),
  lime: rgb(178, 255, 20),
  lilac: rgb(204, 136, 255),
  pink: rgb(255, 126, 193),
  purple: rgb(127, 0, 255),
)

// s: target pitches for the 5th, 4th, 3rd, 2nd, 1st strings.
// d: semitones moved from G Standard (g4 D3 G3 B3 D4).
// c: sweetener offset in cents (the chord's major third -6.8, half tempered; G Minor's minor third +7.8).
#let z = (0, 0, 0, 0, 0)
#let tunings = (
  (code: "GST", color: "white", name: "G Standard", key: "G", listed: "gDGBD",
    s: ("G4", "D3", "G3", "B3", "D4"), d: (0, 0, 0, 0, 0), c: (0, 0, 0, -6.8, 0),
    note: "Reference. Shading marks strings moved from here."),
  (code: "OLG", color: "yellow", name: "Old G / Sandy River Belle", key: "G", listed: "gDGDE",
    s: ("G4", "D3", "G3", "D4", "E4"), d: (0, 0, 0, 3, 2), c: z, note: "Last Chance, a whole step up (capo\u{a0}2)."),
  (code: "DBC", color: "ltblue", name: "Double C", key: "C", listed: "gCGCD",
    s: ("G4", "C3", "G3", "C4", "D4"), d: (0, -2, 0, 1, 0), c: z, note: ""),
  (code: "SAW", color: "tan", name: "Sawmill", key: "G", listed: "gDGCD",
    s: ("G4", "D3", "G3", "C4", "D4"), d: (0, 0, 0, 1, 0), c: z, note: ""),
  (code: "AST", color: "white", name: "A Standard", key: "A", listed: "aEAC#E",
    s: ("A4", "E3", "A3", "C#4", "E4"), d: (2, 2, 2, 2, 2), c: (0, 0, 0, -6.8, 0),
    note: "G Standard, a whole step up (capo\u{a0}2)."),
  (code: "DBD", color: "ltblue", name: "Double D", key: "D", listed: "aDADE",
    s: ("A4", "D3", "A3", "D4", "E4"), d: (2, 0, 2, 3, 2), c: z, note: "Double C, a whole step up (capo\u{a0}2)."),
  (code: "AML", color: "tan", name: "A Modal", key: "A", listed: "aEADE",
    s: ("A4", "E3", "A3", "D4", "E4"), d: (2, 2, 2, 3, 2), c: z, note: "Sawmill, a whole step up (capo\u{a0}2)."),
  (code: "SSR", color: "cyan", name: "Sawmill: Sandy River", key: "G", listed: "gEADE",
    s: ("G4", "E3", "A3", "D4", "E4"), d: (0, 2, 2, 3, 2), c: z, note: ""),
  (code: "OLC", color: "yellow", name: "Old C", key: "C", listed: "gCGBD",
    s: ("G4", "C3", "G3", "B3", "D4"), d: (0, -2, 0, 0, 0), c: (0, 0, 0, -6.8, 0), note: ""),
  (code: "OR1", color: "ltgreen", name: "Old Reuben 1", key: "E", listed: "g#EG#BE",
    s: ("G#4", "E3", "G#3", "B3", "E4"), d: (1, 2, 1, 0, 2), c: (-6.8, 0, -6.8, 0, 0), note: ""),
  (code: "OR2", color: "ltgreen", name: "Old Reuben 2", key: "D", listed: "f#DF#AD",
    s: ("F#4", "D3", "F#3", "A3", "D4"), d: (-1, 0, -1, -2, 0), c: (-6.8, 0, -6.8, 0, 0),
    note: "Old Reuben 1, a whole step down (capo\u{a0}2 = OR1)."),
  (code: "GMI", color: "orchid", name: "G Minor", key: "G", listed: "gDGBbD",
    s: ("G4", "D3", "G3", "Bb3", "D4"), d: (0, 0, 0, -1, 0), c: (0, 0, 0, 7.8, 0), note: "Shows B♭ (set to flats)."),
  (code: "CG1", color: "green", name: "Cumberland Gap 1", key: "E", listed: "g#C#F#BE",
    s: ("G#4", "C#3", "F#3", "B3", "E4"), d: (1, -1, -1, 0, 2), c: (-6.8, 0, 0, 0, 0), note: ""),
  (code: "CG2", color: "green", name: "Cumberland Gap 2", key: "D", listed: "f#BEAD",
    s: ("F#4", "B2", "E3", "A3", "D4"), d: (-1, -3, -3, -2, 0), c: (-6.8, 0, 0, 0, 0),
    note: "Cumberland Gap 1, a whole step down (capo\u{a0}2 = CG1)."),
  (code: "LGN", color: "red", name: "Lost Gander", key: "D", listed: "f#DEAD",
    s: ("F#4", "D3", "E3", "A3", "D4"), d: (-1, 0, -3, -2, 0), c: (-6.8, 0, 0, 0, 0), note: ""),
  (code: "FKB", color: "red", name: "Frankie Baker", key: "E", listed: "g#EF#BE",
    s: ("G#4", "E3", "F#3", "B3", "E4"), d: (1, 2, -1, 0, 2), c: (-6.8, 0, 0, 0, 0),
    note: "Lost Gander, a whole step up (capo\u{a0}2)."),
  (code: "LCH", color: "lime", name: "Last Chance", key: "F", listed: "fCFCD",
    s: ("F4", "C3", "F3", "C4", "D4"), d: (-2, -2, -2, 1, 0), c: z, note: ""),
  (code: "CCC", color: "lilac", name: "Triple C", key: "C", listed: "gCGCC",
    s: ("G4", "C3", "G3", "C4", "C4"), d: (0, -2, 0, 1, -2), c: z, note: "2nd and 1st are both C4 (unison)."),
  (code: "BER", color: "pink", name: "Big Eyed Rabbit", key: "F", listed: "fFGCD",
    s: ("F4", "F3", "G3", "C4", "D4"), d: (-2, 3, 0, 1, 0), c: z, note: ""),
  (code: "PNW", color: "green", name: "Piney Woods", key: "G", listed: "gGDGB",
    s: ("G4", "G2", "D3", "G3", "B3"), d: (0, -7, -5, -4, -3), c: (0, 0, 0, 0, -6.8),
    note: "4th string drops to low G (G2)."),
)

// Why each tuning has its color: the visual or associative link, or its whole-step partner.
#let hooks = (
  GST: "white for plain standard",
  OLG: "yellow for sand",
  DBC: "light blue for C, the sea",
  SAW: "tan for sawdust",
  AST: "white, like G Standard",
  DBD: "light blue, like Double C",
  AML: "tan, like Sawmill",
  SSR: "cyan for the river",
  OLC: "yellow, like Old G",
  OR1: "light green",
  OR2: "light green, like OR1",
  GMI: "orchid for minor",
  CG1: "green for the mountains",
  CG2: "green for the mountains",
  LGN: "red, like Frankie Baker",
  FKB: "red for the murder ballad",
  LCH: "lime for the last green light",
  CCC: "lilac, unlike Double C",
  BER: "pink for the rabbit",
  PNW: "green for the pines",
)

#let chip(code, col, size: 12pt) = box(
  fill: if col == "ink" { ink } else { tc.at(col) },
  radius: 2.5pt,
  inset: (x: 0.36em, y: 0.24em),
  stroke: 0.5pt + luma(50%),
  text(
    font: code-font,
    weight: "bold",
    size: size,
    fill: if col == "ink" { white } else { ink },
    tracking: 0.04em,
    code,
  ),
)

#let pitch(p) = {
  let l = p.slice(0, 1)
  let r = p.slice(1)
  let acc = ""
  if r.starts-with("#") {
    acc = "♯"
    r = r.slice(1)
  } else if r.starts-with("b") {
    acc = "♭"
    r = r.slice(1)
  }
  box[#text(weight: 700, size: 11.5pt, l + acc)#text(size: 8pt, fill: muted, weight: 500, r)]
}

#let delta(d) = {
  if d > 0 {
    text(size: 7.3pt, weight: 700, fill: up-ink, "+" + str(d))
  } else {
    text(size: 7.3pt, weight: 700, fill: dn-ink, "−" + str(-d))
  }
}

#let cents(c) = text(size: 6.8pt, weight: 700, fill: sweet-ink, (if c > 0 { "+" } else { "−" }) + str(calc.abs(c)) + "¢")

// One unbreakable line under the pitch: semitones moved, then cents.
#let under(d, c) = box({
  if d == 0 and c == 0 {
    hide(text(size: 7.3pt, "0"))
  } else if c == 0 {
    delta(d)
  } else if d == 0 {
    cents(c)
  } else {
    delta(d) + h(2pt) + cents(c)
  }
})

#let scell(p, d, c) = table.cell(
  fill: if d > 0 { up-fill } else if d < 0 { dn-fill } else { none },
  align: center + horizon,
  stack(dir: ttb, spacing: 2.5pt, pitch(p), under(d, c)),
)

#let ncell(t) = table.cell(align: left + horizon)[
  #text(weight: 700, size: 10.8pt, t.name) \
  #text(font: mono, size: 7.6pt, fill: muted, t.listed)#h(6pt)#text(size: 7.6pt, fill: muted, "key of " + t.key)#h(6pt)#text(size: 7.4pt, fill: accent, style: "italic", hooks.at(t.code))
]

#let hd(s) = text(size: 6.8pt, weight: 700, fill: white, tracking: 0.08em, upper(s))

// ---------- Header ----------
#grid(
  columns: (1fr, auto),
  align: (left + bottom, right + bottom),
  stack(
    dir: ttb,
    spacing: 7pt,
    text(size: 8.6pt, weight: 700, fill: accent, tracking: 0.14em)[5-STRING BANJO · OLD-TIME TUNINGS],
    text(size: 22pt, weight: 700, tracking: -0.01em)[StroboClip HDC Tuning Card],
    text(size: 9.5pt, fill: muted)[Tunings, names, and tuner order match Tom Collins’s Banjonomicon.],
  ),
  stack(
    dir: ttb,
    spacing: 6pt,
    align(right)[
      #text(size: 6.8pt, weight: 700, fill: muted, tracking: 0.1em)[OLD TIME BANJO SET]
      #h(4pt)
      #chip("OTB", "ink", size: 12pt)
    ],
    align(right, text(size: 7.5pt, fill: muted)[A = 440 Hz · sweetened thirds · v#version · November 10, 2026]),
    align(right, text(size: 7.5pt, fill: muted)[Created by Michael Marmor · marmor\@duck.com]),
  ),
)
#v(7pt)
#line(length: 100%, stroke: 1.2pt + ink)
#v(5pt)

// ---------- Legend ----------
#let sw(f) = box(width: 9pt, height: 7pt, fill: f, radius: 1pt, baseline: 0.5pt)
#text(size: 7.6pt)[
  *Strings:* 5th (drone) → 1st.
  #h(7pt) *Shading:* semitones moved from G Standard, #sw(up-fill)#h(2pt)up or #sw(dn-fill)#h(2pt)down.
  #h(7pt) #text(fill: sweet-ink, weight: 700)[−6.8¢] sweetened (cents).
  #h(7pt) *Chip:* suggested tuner color #text(fill: accent, style: "italic")[(why)].
]
#v(5pt)

// ---------- Main table ----------
#let rows = (
  tunings
    .enumerate()
    .map(((i, t)) => (
      text(size: 9pt, weight: 600, fill: muted, str(i + 1)),
      chip(t.code, t.color),
      ncell(t),
      ..range(5).map(k => scell(t.s.at(k), t.d.at(k), t.c.at(k))),
      text(size: 8pt, fill: ink.lighten(10%), t.note),
    ))
    .flatten()
)

#table(
  columns: (17pt, 44pt, 1fr, 39pt, 39pt, 39pt, 39pt, 39pt, 114pt),
  rows: (auto, if a4 { 27.5pt } else { 25.5pt }),
  inset: (x: 4pt, y: 2pt),
  align: (x, y) => if x >= 3 and x <= 7 { center + horizon } else { left + horizon },
  stroke: (x, y) => if y > 0 { (bottom: 0.5pt + rule) },
  fill: (x, y) => if y == 0 { ink },
  table.header(
    table.cell(inset: (x: 4pt, y: 5pt), hd("#")),
    hd("Code"),
    hd("Tuning"),
    hd("5th"),
    hd("4th"),
    hd("3rd"),
    hd("2nd"),
    hd("1st"),
    hd("Notes"),
  ),
  ..rows,
)

#v(9pt)

// ---------- Tuner steps ----------
#let label(s) = text(size: 6.8pt, weight: 700, fill: accent, tracking: 0.12em, upper(s))
#let panel(title, body) = block(
  width: 100%,
  inset: (x: 9pt, y: 6.5pt),
  radius: 4pt,
  stroke: 0.6pt + rule,
)[
  #if title != none {
    label(title)
    v(4pt, weak: true)
  }
  #body
]

#panel(none)[
  #set text(size: 7.3pt)
  #set par(leading: 0.42em)
  #grid(
    columns: (auto, 1fr, 1fr, 1fr, 1fr),
    column-gutter: 11pt,
    label("On the" + "\n" + "tuner"),
    [*Change tuning:* click *Menu* until the code flashes, step with *+* / *−*, then *Menu* again (or wait).],
    [*Back to EQU* (plain chromatic), if it is in your list: while the code flashes, press *+* and *−* together.],
    [*Order:* a new tuning goes to the bottom of your list (Auto-Order off). Factory presets: Settings › Configuration › dEF.],
    [*Menu ×2* color · *×3* drop/capo · *×4* Concert A, each saved with the active tuning.],
  )
]

#v(7pt)
#align(center, text(size: 7.6pt)[
  *Each tuning listens only for its own notes.* A string that is far off reads as the nearest note in the tuning, so check the note name as well as the strobe. \
  #text(fill: sweet-ink, weight: 700)[Sweetened notes:] those marked −6.8¢ sit 6.8 cents flat (Peterson’s half-tempered value for a major third), to smooth selected open-string intervals; \
G Minor’s B♭ is 7.8 cents sharp. Just tune until the strobe stops.
])

// ---------- Page 2: what OTB is and how to use it ----------
#pagebreak()

#grid(
  columns: (1fr, auto),
  align: (left + bottom, right + bottom),
  stack(
    dir: ttb,
    spacing: 7pt,
    text(size: 8.6pt, weight: 700, fill: accent, tracking: 0.14em)[STROBOCLIP HDC TUNING CARD · PAGE 2],
    text(size: 22pt, weight: 700, tracking: -0.01em)[What OTB Is and How to Use It],
  ),
  chip("OTB", "ink", size: 12pt),
)
#v(7pt)
#line(length: 100%, stroke: 1.2pt + ink)
#v(8pt)

#let sec(n, title, size: 12.5pt) = block(above: 8pt, below: 5pt, sticky: true, text(size: size, weight: 700)[#text(fill: accent)[#n] #h(2pt) #title])
#let site = "https://mmarmor.github.io/stroboclip-old-time-banjo/"
#let post = "https://www.petersontuners.com/sweeteners/shared/"
#let banjonomicon = "https://banjonomicon.com/about"
#let ccby = "https://creativecommons.org/licenses/by/4.0/"
#let home = "https://www.petersontuners.com/"
#set text(size: 10.5pt)
#set par(leading: 0.42em, spacing: 0.7em)
// Page 2 flows through two columns of fixed height; the QR block follows. Typst does not balance
// columns, so the height is fixed to leave room for the block on Letter; on A4 the spare height goes below
// the columns (v4, 30-Oct-2026). Column 1 ends with section 5 on both papers.
#let col-h = 574pt

#block(height: col-h, columns(2, gutter: 24pt)[
    #sec("1", "What this is")
    OTB, for Old Time Banjo, is a set of 20 old-time banjo tunings for the Peterson StroboClip HDC, each shared as a tuner preset. The tunings are the common ones nearly every old-time player uses; their names and order follow Tom Collins’s Banjonomicon (#link(banjonomicon)[banjonomicon.com/about]), so his students see one list. Select a tuning and the tuner shows its three-letter code. Pluck a string and the tuner shows the note in that tuning nearest to what it hears; turn the peg until the strobe stands still.

    #sec("2", "Which tuners")
    Made on the StroboClip HDC; the HDC-B and HDC-V are the same tuner with different clips. Other Peterson Connect tuners, such as the StroboPLUS HDC and StroboClip HD, can add the same tunings; the OTB page (below) lists what carries over.

    #sec("3", "Get the tunings onto your tuner")
    Plug the tuner into a computer running Chrome or Edge, sign in to a free #link(home)[petersontuners.com] account, and open the #link(post)[User Trading Post] (address below). Under Misc. Instruments, find a code from page 1 marked “by Michael Marmor”, click the + beside it, choose your tuner, and click Update. Repeat for each tuning you play, in row order; a new one goes last in your list.

    On a tuner with only the factory presets, your first tuning starts your own list in their place. They are never lost: Settings, then Configuration, then dEF brings them back. Tunings arrive without colors; set them on the Configure page, then click Update Connected Device.

    #sec("4", "Pick a tuning and tune")
    Click Menu until the three-letter code flashes, step with + or − to the code you want, and let it settle. Pluck one string at a time. The tuner shows the note it hears; turn the peg until the letter matches the table and the strobe stands still. Come up to pitch from below.

    #sec("5", "Reading the tuning table")
    Each row is one tuning: the code the tuner shows, on a chip in a suggested color, the name, the tuning as players write it with the 5th string first, and the key. The five columns are the strings, from the 5th, the short drone, to the 1st, and each cell is the note that string should read, with its octave as a small digit after the letter; G2 is the lowest note on the card. Shading and the signed whole numbers below a note show how many semitones that string moved from G Standard, so G Standard has no shading. Green −6.8¢ marks a sweetened note.

    #sec("6", "Sweetened, or plain EQU")
    A cent is one hundredth of a semitone. The notes marked −6.8¢ sit 6.8 cents flat, a shade rather than a step: Peterson’s half-tempered value for a major third, which lets the open strings ring smoother together. G Minor’s B♭ is 7.8 cents sharp for the same reason. Fretted notes on a sweetened string move with it. Select one of the eleven tunings with an offset and the tuner shows SWEETENER in small letters above the code; the nine with none show nothing there.

    If you would rather not sweeten, or you are playing with a piano or accordion, use EQU, the plain chromatic preset: equal temperament, all twelve notes, no sweetening, any instrument. If EQU is in your list, press + and − together while a code flashes to reach it.

    #sec("7", "Four things that catch people out")
    #set list(indent: 0pt, body-indent: 0.55em, spacing: 0.7em, marker: text(fill: accent, weight: 700)[•])
    - A string that is far off can read as another note in the tuning with a still strobe. Select Piney Woods with the banjo still in G Standard and the 4th string reads a steady D; its target is low G. Check the letter against the table before you trust the strobe.

    - On big moves, get close by ear first, then let the tuner finish. Piney Woods drops the 4th string seven semitones.

    - Seven tunings are a whole step above another one; the table’s notes say which. Reaching the higher one is the same job either way: tune all five strings up two semitones, or stay in the lower tuning and capo at the 2nd fret, which raises the four long strings by the same two semitones. The 5th string sits above the capo, so raise it two semitones by hand or hook it under a spike at the 7th fret. Then select the higher tuning on the tuner; it checks what it hears, capo~or~not.

    - Weak or jumpy readings, most often on the short 5th string, which ends far from the headstock: try clipping the tuner to the rim of the pot instead. The headstock works; the rim is a little steadier.

    #pad(left: 1.05em)[_Do not let the tuner stop you from listening. Tuning by ear is still tuning; the strobe is there to confirm it._]
  ])

#v(5pt)
#v(1fr)
#block(width: 100%, inset: (x: 12pt, y: 6pt), radius: 4pt, stroke: 0.6pt + rule)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 16pt,
    align: horizon,
    image("qr-site.svg", width: 1.0in),
    [
      #sec("8", "Latest version of this card, and more about the tunings and the tuner", size: 11.5pt)
      #set text(size: 9.5pt)
      #link(site)[#text(weight: 700)[mmarmor.github.io/stroboclip-old-time-banjo]]: this card, kept current, in US Letter and A4; the step-by-step loading guide; notes on the tunings and the tuner.
      #linebreak()
      Tuner presets: #link(post)[#text(weight: 700)[petersontuners.com/sweeteners/shared]] (User Trading Post, Misc. Instruments, by Michael Marmor).
      #v(3pt)
      #text(size: 8pt, fill: muted)[Card and text © 2026 Michael Marmor, #link(ccby)[CC BY 4.0]. Tunings, names and order from Tom Collins’s #link(banjonomicon)[Banjonomicon].#linebreak()Version #version, November 10, 2026.]
    ],
  )
]
