# DTMF_Generation-Detection
## Dual-Tone Multi-Frequency (DTMF) Signaling

**DTMF** is the standard signaling system used by touch-tone telephones. Each key press on a telephone generates a unique signal composed of two sinusoidal tones - one from a group of low frequencies and one from a high frequency group. This system allows for the representation of the digits 0-9 and the symbols * and #.

### Frequencies Table:

- Low Frequencies: 697 Hz, 770 Hz, 852 Hz, 941 Hz
- High Frequencies: 1209 Hz, 1336 Hz, 1477 Hz

Each digit or symbol is associated with a combination of one low and one high frequency, ensuring easy detection and minimal interference.

### Example: Generating DTMF Signal

For a telephone key '7', the DTMF signal combines 852 Hz and 1209 Hz tones. The signal is generated as a sum of these two sinusoids.

Parameters:
- `A` = Amplitude (Assumed 1 for simplicity)
- `N` = Number of samples
- `fR` = Row frequency
- `fC` = Column frequency
- `fs` = Sampling frequency (8000 Hz for this example)

The formula used is:
\[x[n] = A \cos(2\pi f_R \frac{n}{f_s}) + A \cos(2\pi f_C \frac{n}{f_s})\]
