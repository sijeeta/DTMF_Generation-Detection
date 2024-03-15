## Dual-Tone Multi-Frequency (DTMF) Signaling

**DTMF** is the standard signaling system used by touch-tone telephones. Each key press on a telephone generates a unique signal composed of two sinusoidal tones - one from a group of low frequencies and one from a high frequency group. This system allows for the representation of the digits 0-9 and the symbols * and #.

### Frequencies Table:

|        | 1209 Hz | 1336 Hz | 1477 Hz |
|--------|---------|---------|---------|
| 697 Hz |    1    |    2    |    3    |
| 770 Hz |    4    |    5    |    6    |
| 852 Hz |    7    |    8    |    9    |
| 941 Hz |    *    |    0    |    #    |

Each digit or symbol is associated with a combination of one low and one high frequency, ensuring easy detection and minimal interference.

### Example: Generating DTMF Signal

For a telephone key '7', the DTMF signal combines 852 Hz and 1209 Hz tones. The signal is generated as a sum of these two sinusoids.

Parameters:
- `A` = Amplitude (Assumed 1 for simplicity)
- `N` = Number of samples
- `fr` = Row frequency
- `fc` = Column frequency
- `fs` = Sampling frequency (8000 Hz for this project)

The formula used is:
$$
x[n] = A \cdot \cos(2\pi f_R \cdot \frac{n}{f_s}) + A \cdot \cos(2\pi f_C \cdot \frac{n}{f_s})
$$

First we will learn generation of DTMF Signal using below two method:
- `Direct method`
- `Summing the output of Digital Resonator` :
  #### Digital Resonator for DTMF Signal Generation

The transfer function of a digital resonator is given by:

$$
H(z) = \frac{1 - \cos(\omega_0)z^{-1}}{1 - 2\cos(\omega_0)z^{-1} + z^{-2}}
$$

Where $\omega_0$ is the digital frequency of interest. The impulse response of this digital resonator is:

$$
h[n] = \cos(\omega_0)u[n]
$$

By feeding the digital resonator an impulse input signal ($x[n] = \delta[n]$), we can generate a sinusoidal function of a digital frequency $\omega_0$. This can be achieved using MATLAB's `filter` function by formulating the difference equation derived from the transfer function and applying an impulse signal as input.

The digital frequencies for the DTMF signals are defined as $\omega_{01} = 2\pi\frac{f_R}{f_s}$ and $\omega_{02} = 2\pi\frac{f_C}{f_s}$, where $f_R$ and $f_C$ are the row and column frequencies, respectively, and $f_s$ is the sampling frequency.


