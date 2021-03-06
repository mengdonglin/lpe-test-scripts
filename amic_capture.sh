
echo lock > /sys/power/wake_lock
echo disable > /d/sst/runtime_pm


amixer -ccherrytrailaud cset name="RECMIXL BST1 Switch" 1
amixer -ccherrytrailaud cset name="RECMIXR BST1 Switch" 1
amixer -ccherrytrailaud cset name="Stereo1 ADC Mux" "ADC1L ADC2R"
amixer -ccherrytrailaud cset name="Stereo1 ADC L1 Mux" "ADC"
amixer -ccherrytrailaud cset name="Stereo1 ADC R1 Mux" "ADC"
amixer -ccherrytrailaud cset name="Sto1 ADC MIXL ADC1 Switch" 1
amixer -ccherrytrailaud cset name="Sto1 ADC MIXR ADC1 Switch" 1
amixer -ccherrytrailaud cset name="IF1 ADC1 IN1 Mux" "IF_ADC1"
amixer -ccherrytrailaud cset name="IF1 ADC1 IN2 Mux" "IF1_ADC1_IN1"
amixer -ccherrytrailaud cset name="Headset Mic Switch" on
amixer  -ccherrytrailaud cset name="Int Mic Switch"  off

echo "cap dmic slot 0,1"
# Capture from Slot 0,1
amixer -ccherrytrailcrau cset name='pcm1_out mix 0 media_loop2_in' 1
amixer -ccherrytrailcrau cset name='media_loop2_out mix 0 codec_in0' 1

# dmic - recv data from slot 0,1 into codec_in0 L&R
amixer -ccherrytrailcrau cset name='codec_in deinterleaver codec_in0_0' 'slot 0'
amixer -ccherrytrailcrau cset name='codec_in deinterleaver codec_in0_1' 'slot 1'
amixer -ccherrytrailcrau cset name='codec_in deinterleaver codec_in1_0' 'none'
amixer -ccherrytrailcrau cset name='codec_in deinterleaver codec_in1_1' 'none'


# Gains
amixer -ccherrytrailcrau cset name='codec_in0 gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='codec_in0 gain 0 rampduration' 50
amixer -ccherrytrailcrau cset name='codec_in0 gain 0 mute' 0

amixer -ccherrytrailcrau cset name='media_loop2_out gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='media_loop2_out gain 0 rampduration' 50
amixer -ccherrytrailcrau cset name='media_loop2_out gain 0 mute' 0

amixer -ccherrytrailcrau cset name='pcm1_out gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='pcm1_out gain 0 rampduration' 50
amixer -ccherrytrailcrau cset name='pcm1_out gain 0 mute' 0

arecord -Dhw:cherrytrailcrau,0 amic.wav -f S16_LE -r 48000 -c 2

