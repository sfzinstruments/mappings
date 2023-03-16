# Ritvars' Hohner Pianet T - SFZ Version

This is an [SFZ] conversion of [Ritvars' Hohner Pianet T] sample library of a
[Hohner Pianet T] electric piano, available in Kontakt and DecentSampler format
from *pianobook.co.uk*, created by user [Ritvars]. The SFZ version was created
by me, Christopher Arndt, on 2023-03-14 and was tested with the [sfizz] player
(LV2 plugin version), but it should be usable with any SFZ-compatible sample
player.

The *Pianet T* has a very mellow sound, with soft bell-like tones in the upper
registers, compared to the *Pianet N*, which has more bite and bark. The
instrument, which was sampled for this library, has a very clean sound, with
not much low end and soft bell tones with few inharmonic overtones.

You can listen to an audio demo of the sample instrument (created with the
Kontakt or Decent Sampler version) on SoundCloud:
[Hohner Pianet T by Da Fingaz]

![Hohner Pianet T](./Hohner%20Pianet%20T.jpg)


## Usage

Download the DecentSampler version of the library from the link above
(registration with email address required) and extract the archive. Copy the
`Samples` folder, which is inside the resulting `HOHNER PIANET  (DS)` folder,
to the folder containing this file and the `Hohner-Pianet-T.sfz` file. The SFZ
file should be next to the `Samples` folder and the actual sample WAV files
should be in the latter folder. Do *not* copy the *contents* of the `Samples`
folder into the folder with the SFZ file itself.

Then load the file `Hohner-Pianet-T.sfz` into your SFZ player.


### FLAC Format

If you want to save disk space, you can use the provided Shell script
`convert-to-flac.sh` to convert the sample audio files from WAV to (lossless)
FLAC compressed format. The FLAC audio files use only 39 Mb (19 Mb at 16-bit)
instead of 156 Mb for the 24-bit WAV files.

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
`Hohner-Pianet-T-FLAC.sfz` into your SFZ player.


## Key and Sample Range

Like the original instrument the SFZ version has a playable range of almost
five octaves, from **F1** (Note 29) up to **E6** (Note 88).

There is only a single velocity layer and one sample per note with full
release. I have set the volume velocity response to `80` for a medium-to-low
dynamic range.


## Controllers

| Controller          | Destination           | Value Range    | Default Value   |
| ------------------- | --------------------- | -------------- | --------------- |
| Modulation (CC #1)  | Tremolo Depth         | 0.0..9.0 dB    | 0 (0.0 dB)      |
| Data (CC #6)        | Amp Envelope Release  | 0.02..1.02 s   | 32 (~0.2 s)    |
| CC #13              | Tremolo Frequency     | 1.0..10.0 Hz   | 64 (~5.5 Hz)    |
| CC #22              | Vibrato Depth         | 0.0..50.0 ct   | 0 (0.0 ct)      |
| CC #23              | Vibrato Frequency     | 3.0..9.0 Hz    | 64 (~6 Hz)      |

These controllers are designed to work with my Kurzweil keyboard, whose sliders
send the listed MIDI control changes. To adapt them to your needs, open the file
`data/control.sfz` with a text editor and change the controller numbers, which are
`#define`d by the variables with a `CC_` prefix.


## Notes

* I fixed a click at the start of the **D#2** (note 51) sample by adding an
  appropriate `offset` in the sample regions.
* The **E5** (note 76) sample has slight "plop" about 0.5 seconds into the
  sample, which I did not try to mask.
* As with every e-piano, the instruments works well with chorus, phaser, delay
  and overdrive or mild distortion added in your DAW or sample player.


## Mapping License Terms

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img
alt="Creative Commons License" style="border-width:0"
src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span
xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Ritvars' Hohner
Pianet T</span> by <a xmlns:cc="http://creativecommons.org/ns#"
href="https://github.com/sfzinstruments//mappings/tree/master/Pianobook%20SFZ/Ritvars%27%20Hohner%20Pianet%20T"
property="cc:attributionName" rel="cc:attributionURL">SpotlightKid</a> is
licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution
4.0 International License</a>.<br />Based on a work at <a
xmlns:dct="http://purl.org/dc/terms/"
href="https://www.pianobook.co.uk/packs/hohner-pianet-t/"
rel="dct:source">https://www.pianobook.co.uk/packs/hohner-pianet-t/</a>.


[Ritvars]: https://www.pianobook.co.uk/profile/ritvars/
[Hohner Pianet T]: http://hohner-pianet.com/hohner_pianet/
[Ritvars' Hohner Pianet T]: https://www.pianobook.co.uk/packs/hohner-pianet-t/
[Hohner Pianet T by Da Fingaz]: https://soundcloud.com/da-fingaz/hohner-pianet-t
[SFZ]: http://sfzformat.com/
[sfizz]: https://sfz.tools/sfizz/
