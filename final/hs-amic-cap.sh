amixer -c0 sset 'pcm1_out mix 0 codec_in0' on
amixer -c0 sset 'pcm1_out mix 0 codec_in1' on
amixer -c0 sset 'pcm1_out Gain 0' off
amixer -c0 sset 'pcm1_out Gain 0' 80%
amixer -c0 sset 'codec_in0 Gain 0' off
amixer -c0 sset 'codec_in0 Gain 0' 80%

amixer -c0 cset name="RECMIXL BST1 Switch" 1
amixer -c0 cset name="RECMIXR BST1 Switch" 1
amixer -c0 cset name="Stereo1 ADC Mux" "ADC1L ADC2R"
amixer -c0 cset name="Stereo1 ADC L1 Mux" "ADC"
amixer -c0 cset name="Stereo1 ADC R1 Mux" "ADC"
amixer -c0 cset name="Sto1 ADC MIXL ADC1 Switch" 1
amixer -c0 cset name="Sto1 ADC MIXR ADC1 Switch" 1
amixer -c0 cset name="IF1 ADC1 IN1 Mux" "IF_ADC1"
amixer -c0 cset name="IF1 ADC1 IN2 Mux" "IF1_ADC1_IN1"
amixer -c0 cset name="Headset Mic Switch" on
amixer -c0 cset name="Int Mic Switch"  off

arecord -Dhw:cherrytrailcrau,0 amic.wav -f S16_LE -r 48000 -c 2 -d 60

