amixer -c0 sset 'pcm1_out mix 0 codec_in0' on
amixer -c0 sset 'pcm1_out mix 0 codec_in1' on
amixer -c0 sset 'pcm1_out Gain 0' off
amixer -c0 sset 'pcm1_out Gain 0' 80%
amixer -c0 sset 'codec_in0 Gain 0' off
amixer -c0 sset 'codec_in0 Gain 0' 80%

amixer -c0 cset name="Stereo1 DMIC Mux" "DMIC1"
amixer -c0 cset name="Stereo1 ADC L2 Mux" "DMIC"
amixer -c0 cset name="Stereo1 ADC R2 Mux" "DMIC"
amixer -c0 cset name="Sto1 ADC MIXL ADC2 Switch" 1
amixer -c0 cset name="Sto1 ADC MIXR ADC2 Switch" 1
amixer -c0 cset name="IF1 ADC1 IN1 Mux" "IF_ADC1"
amixer -c0 cset name="IF1 ADC1 IN2 Mux" "IF1_ADC1_IN1"

amixer  -c0 cset name="Int Mic Switch"  on
amixer  -c0 cset name="Headset Mic Switch" off

arecord -Dhw:cherrytrailcrau,0 dmic.wav -f S16_LE -r 48000 -c 2 -d 60

