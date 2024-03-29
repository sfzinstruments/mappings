# Vintage Glockenspiel "Chromatic-Elite" - SFZ Version

This is an [SFZ] conversion of the [Vintage Glockenspiel] sample library,
available in Kontakt and DecentSampler format from *pianobook.co.uk*, created
by user [Carl Wheeler]. The SFZ version was created by me, Christopher Arndt,
originally on 2020-09-11 and improved on 2023-03-06 and was tested with the
[sfizz] player (LV2 plugin version), but it can probably be used in any
SFZ-compatible sample player.

See the file [Read Me.txt] for Carl's original notes on the sampled instrument.

<img title="Vintage Glockenspiel" src="./Vintage%20Glockenspiel.jpg" width="800" />


## Usage

Download the DecentSampler version of the library from the link above
(registration with email address required) and extract the archive. Copy the
`Samples` folder, which is inside the resulting `Vintage Glockenspiel (DS)`
folder, into the folder containing this file and the `Vintage-Glockenspiel.sfz`
file. The SFZ files should be next to the `Samples` folder and the actual
sample WAV files should be in the latter folder. Do *not* copy the *contents*
of the `Samples` folder into the folder with the SFZ files itself.

Then load the file `Vintage-Glockenspiel.sfz` into your SFZ player.


### FLAC Format

If you want to save disk space, you can use the provided Shell script
`convert-to-flac.sh` to convert the sample audio files from WAV to (lossless)
FLAC compressed format. The FLAC audio files use only 15 Mb (5.5 Mb at 16-bit)
instead of 29 Mb for the 24-bit WAV files.

To use the script, you need to have the `flac` command installed. If you want
to convert the samples to 16-bit sample bit depth before the FLAC conversion,
you also need the `sox` command.

To perform the conversion, make sure the WAV samples have been copied to the
`Samples` folder as described above, open a terminal with a shell in the
directory containing this file and run:

    ./convert-to-flac.sh

Optionally, you can add the option `-16` to the command line, to convert the
samples to 16-bit as well.

The resulting FLAC files will be written to the `flac` sub-folder. Afterwards
you may remove the `Samples` folder and hence-forward load the file
`Vintage-Glockenspiel-FLAC.sfz` into your SFZ player.


## Key and Sample Range

The instrument is playable from **G3** (Note 55) up to **G5** (Note 79). This
is two octaves lower than it actually sounds, to make it easier to play without
the need to transpose the keyboard.

The actual samples cover only a range from **A5** (Note 57) to **G7** (Note
84), with every note of the C major scale sampled in two velocity layers and
two round robins.

I extended the range of each "white key" note to cover the "black key" note a
semi-tone below, so that a full chromatic scale can be played.

I also extended the range of the low A5 samples was extended to also cover the
low G5, so that the instrument provides the full range of notes shown in the
photograph.

I omitted the following samples from the mapping, because they had some
background noise or an unclean attack, and I extended the range of a note
below or above accordingly:

* `GLOCK G5 loud V2`
* `GLOCK A5 soft V1`
* `GLOCK F6 soft V2`
* `GLOCK F6 soft V1`

<img title="Vintage Glockenspiel Chromatic-Elite" src="./Vintage%20Glockenspiel%202.jpg" width="800" />


## Controllers

| Controller          | Destination           | Value Range    | Default Value   |
| ------------------- | --------------------- | -------------- | --------------- |
| Modulation (CC #1)  | Tremolo Depth         | 0.0..9.0 dB    | 0 (0.0 dB)      |
| Data (CC #6)        | Amp Envelope Release  | 0.02..3.02 s   | 127 (3.02 s)    |
| CC #13              | Tremolo Frequency     | 1.0..10.0 Hz   | 64 (~5.5 Hz)    |
| CC #22              | Vibrato Depth         | 0.0..50.0 ct   | 0 (0.0 ct)      |
| CC #23              | Vibrato Frequency     | 3.0..9.0 Hz    | 64 (~6 Hz)      |

These controllers are designed to work with my Kurzweil keyboard, whose sliders
send the listed MIDI control changes. To adapt them to your needs, open the file
`data/control.sfz` with a text editor and change the controller numbers, which are
`#define`d by the variables with a `CC_` prefix.

The release control can be used to simulate dampening the bars right after they
were struck.


## Notes

I applied a gain of +6 dB to all samples via the `volume` opcode in the SFZ
file, because their recorded level is quite low. The volume of some samples is
attenuated or raised by 2-4 dB relative to that level to even out the most
obvious volume differences.


## Mapping License Terms

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img
alt="Creative Commons License" style="border-width:0"
src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br
/><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Vintage
Glockenspiel "Chromatic-Elite" SFZ</span> by
<a xmlns:cc="http://creativecommons.org/ns#"
href="https://github.com/sfzinstruments/mappings/tree/master/Pianobook%20SFZ/Vintage%20Glockenspiel"
property="cc:attributionName" rel="cc:attributionURL">SpotlightKid</a> is
licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution
4.0 International License</a>.<br />Based on a work at <a
xmlns:dct="http://purl.org/dc/terms/"
href="https://www.pianobook.co.uk/packs/vintage-glockenspiel/"
rel="dct:source">https://www.pianobook.co.uk/packs/vintage-glockenspiel/</a>.


[Carl Wheeler]: https://www.pianobook.co.uk/profile/carl-wheeler/
[Read Me.txt]: ./Read%20Me.txt
[Vintage Glockenspiel]: https://www.pianobook.co.uk/packs/vintage-glockenspiel/
[sfizz]: https://sfz.tools/sfizz/
[SFZ]: http://sfzformat.com/
