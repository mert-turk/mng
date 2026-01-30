## Running the Test

To run the test, follow these steps:

1. Build the project:
   ```bash
   make all
   ./test


Make sure to run the GUI in Eclipse and set the IP address to 127.0.0.1. After running the ./test file, you can start sampling.

## Changing Parameters

If you want to change the sampling or test signal parameters, edit `test.c` and update the following configurations:

static mng_signal_cfg_t adc0Sig = { .freq_hz = 5.0,  .amplitude = 1500.0 };
static mng_signal_cfg_t adc1Sig = { .freq_hz = 0.5,  .amplitude = 800.0 };
static mng_signal_cfg_t tempSig = { .freq_hz = 2.0,  .amplitude = 2000.0 };

You can adjust the frequency and amplitude values as needed. These parameters are straightforward.
