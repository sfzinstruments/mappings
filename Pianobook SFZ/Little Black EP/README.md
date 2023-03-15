# Little Black EP - SFZ Version

This is an [SFZ] conversion of the [Little Black EP] sample library of a
[Hohner Pianet T] electric piano, available in DecentSampler format from
*pianobook.co.uk*, created by user [Dean Coyle]. The SFZ version was created by
me, Christopher Arndt, 2023-03-09 and was tested with the [sfizz] player (LV2
plugin version), but it should be usable with any SFZ-compatible sample player.

The *Pianet T* has a very mellow sound, with soft bell-like tones in the upper
registers, compared to the *Pianet N*, which has more bite and bark. The
instrument, which was sampled for this library, seems to have been voiced for
an especially mellow tone. Even the high velocity samples do not have much
high-end. And since the tone of the real instrument also does not change very
much in response to the force, with which the keys are hit, the differences in
timbre between the velocity layers of this sample set are rather subtle.

You can listen to an audio demo of the SFZ instrument on SoundCloud:
[Little Black EP SFZ Demo]

See the file [readme.txt] for Dean's original notes on the sampled instrument.

![Little Black EP](./Little%20Black%20EP.jpg)


## Usage

Download the DecentSampler version of the library from the link above
(registration with email address required) and extract the archive. Copy the
`samples` folder, which is inside the resulting `Little Black EP` folder, to
the folder containing this file and the `Little-Black-EP.sfz` file. The SFZ
file should be next to the `samples` folder and the actual sample WAV files
should be in the latter folder. Do *not* copy the *contents* of the `samples`
folder into the folder with the SFZ file itself.

Then load the file `Little-Black-EP.sfz` into your SFZ player.


### FLAC Format

If you want to save disk space, you can use the provided Shell script
`convert-to-flac.sh` to convert the sample audio files from WAV to (lossless)
FLAC compressed format. The FLAC audio files use only 35 Mb (12 Mb at 16-bit)
instead of 94 Mb for the 24-bit WAV files.

To use the script, you need to have the `flac` command installed. If you want
to convert the samples to 16-bit sample bit depth before the FLAC conversion,
you also need the `sox` command.

To perform the conversion, make sure the WAV samples have been copied to the
`samples` folder as described above, open a terminal with a shell in the
directory containing this file and run:

    ./convert-to-flac.sh

Optionally, you can add the option `-16` to the command line, to convert the
samples to 16-bit as well.

The resulting FLAC files will be written to the `flac` sub-folder. Afterwards
you may remove the `samples` folder and hence-forward load the file
`Little-Black-EP-FLAC.sfz` into your SFZ player.


## Key and Sample Range

Like the original instrument the SFZ version has a playable range of almost
five octaves, from **F1** (Note 29) up to **E6** (Note 88).

It was sampled at three different velocities. Most notes have their own samples,
sometimes a sample covers two neighboring notes.


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

* I fixed a click at the start of the L/M/H samples of **F5** (note 89) and the L
  sample of **D6** (note 98) by adding a sample `offset` and/or very short (1 ms)
  attack on the amp envelope of these sample regions.
* The instrument benefits from applying some EQ to boost the highs around 1.2 -
  1.6 kHz and maybe attenuate the mids around 350 - 400 Hz.
* You may also want to use some compression with an attack time of 20 - 50 ms to
  make the note attack pop a little more.
* And, as with every e-piano, it works well with chorus, phaser, delay and
  overdrive or mild distortion.


## Mapping License Terms

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img
alt="Creative Commons License" style="border-width:0"
src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br
/><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Little Black
EP SFZ</span> by <a xmlns:cc="http://creativecommons.org/ns#"
href="https://github.com/sfzinstruments/mappings/tree/master/Pianobook%20SFZ/Little%20Black%20EP"
property="cc:attributionName" rel="cc:attributionURL">SpotlightKid</a> is
licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution
4.0 International License</a>.<br />Based on a work at <a
xmlns:dct="http://purl.org/dc/terms/"
href="https://www.pianobook.co.uk/packs/little-black-electric-piano/"
rel="dct:source">https://www.pianobook.co.uk/packs/little-black-electric-piano/</a>.


[Dean Coyle]: https://www.pianobook.co.uk/profile/deancoyle/
[Hohner Pianet T]: http://hohner-pianet.com/hohner_pianet/
[Little Black EP SFZ Demo]: https://soundcloud.com/spotlightkid/little-black-ep-sfz-demo
[Little Black EP]: https://www.pianobook.co.uk/packs/little-black-electric-piano/
[SFZ]: http://sfzformat.com/
[readme.txt]: ./readme.txt
[sfizz]: https://sfz.tools/sfizz/
