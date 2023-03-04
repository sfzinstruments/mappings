# Grumpy Phili Favourites - SFZ Version

This is an SFZ conversion of the [Grumpy Phili Favourites] sample library,
available in EXS and DecentSampler format from *pianobook.co.uk*, created by
user *Woodencup*.

Please see the included file [readme.txt] for information on the original
library.

![Philicorda](Philicorda.jpg)

The SFZ version was created by Christopher Arndt on 2023-03-04. It was
tested with the [sfizz] player (LV2 plugin version).


## Usage

Download the DecentSampler Version of the library from the link above
(registration with email address required) and extract the archive into a
folder (suggested name "Grumpy Phili"). Copy all files with an `.sfz` file
extension from where this readme is located into this folder. The `Samples`
folder should be next to the `.sfz` files. Do *not* copy them into the
`Samples` folder.

Then load the file "Grumpy-Phili-Favourites.sfz" into your SFZ player.

The other files with an `.sfz`file  extension are included by this file and
are not meant to be loaded directly.


## Key Range

The instrument is playable from **F0** (Note 29) up to **C6** (Note 96).

The actual samples cover only a range from **C1** (Note 36) to **C6** (Note 84),
with two samples per octave.


## Sound Selection

There are five (5) different sounds. These are selected via key switches
starting at **C0** (Note 24) up to **E0** (Note 28).


## Controllers

| Controller          | Destination           | Value Range    | Default Value   |
| ------------------- | --------------------- | -------------- | --------------- |
| Modulation (CC #1)  | Vibrato Depth         | 0.0..50.0 ct   | 0 (0.0 ct)      |
| Data (CC #6)        | Lowpass Filter Cutoff | 100..10,000 Hz | 127 (10,000 Hz) |
| CC #13              | Filter Resonance      | 0.0..12.0 dB   | 0 (0.0 dB)      |
| CC #22              | Amp Envelope Attack   | 0.0..3.0 s     | 0 (0.0 s)       |
| CC# 23              | Amp Envelope Release  | 0.02..3.0 s    | 0 (0.02 s)      |
| CC #24              | Vibrato Frequency     | 3.0..9.0 Hz    | 64 (~6 Hz)      |
| CC #25              | Tremolo Frequency     | 1.0..10.0 Hz   | 64 (~5.5 Hz)    |
| CC #26              | Tremolo Depth         | 0.0..6.0 dB    | 0 (0.0 dB)      |

These controllers are designed to work with my Kurzweil keyboard, whose sliders
send the listed MIDI control changes. To adapt them to your needs, open the file
"Grumpy-Phili-Favourites.sfz" with a text editor and change the `#define`s
in the `<control>` section.


## Limitations

* Vibrato is applied to every note independently. SFZ does not support
  global (monophonic) LFOs :-(

* Reverb (or any other effects) needs to be added externally. Support for
  specific effect types in SFZ is not very standardized. I suggest using
  an IR reverb and loading an impulse response for a spring reverb.


## Mapping License Terms

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Grumpy Phili SFZ</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/sfzinstruments/mappings/tree/master/Pianobook%20SFZ/Grumpy%20Phili" property="cc:attributionName" rel="cc:attributionURL">SpotlightKid</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://www.pianobook.co.uk/packs/grumpy-phili-favourites/" rel="dct:source">https://www.pianobook.co.uk/packs/grumpy-phili-favourites/</a>.


[Grumpy Phili Favourites]: https://www.pianobook.co.uk/packs/grumpy-phili-favourites/
[readme.txt]: ./readme.txt
[sfizz]: https://sfz.tools/sfizz/
