amixer -c0 sset 'codec_out0 mix 0 pcm0_in' on
amixer -c0 sset 'media0_out mix 0 media1_in' on
amixer -c0 sset 'media1_in Gain 0' 80% 
amixer -c0 sset 'media1_in Gain 0 Ramp Delay' 50
amixer -c0 sset 'media1_in Gain 0' off
amixer -c0 sset 'pcm0_in Gain 0' 80% 
amixer -c0 sset 'pcm0_in Gain 0 Ramp Delay' 50
amixer -c0 sset 'pcm0_in Gain 0' off
amixer -c0 sset 'codec_out0 Gain 0' 80%
amixer -c0 sset 'codec_out0 Gain 0 Ramp Delay' 50
amixer -c0 sset 'codec_out0 Gain 0' off

amixer -c0 sset "DAC MIXL INF1" on
amixer -c0 sset "DAC MIXR INF1" on
amixer -c0 sset "Stereo DAC MIXL DAC L1" on
amixer -c0 sset "Stereo DAC MIXR DAC R1" on
amixer -c0 sset "OUT MIXL DAC L1" on
amixer -c0 sset "OUT MIXR DAC R1" on
amixer -c0 sset "HPO MIX HPVOL" on
amixer -c0 sset "HP L" on
amixer -c0 sset "HP R" on
amixer -c0 sset "HP Channel" on
amixer -c0 sset "HP Playback" 50%

amixer -c0 sset "Headphone" on
amixer -c0 sset "Ext Spk" off
aplay -t wav -Dhw:0,0 /home/amanda/Music/doreimi-48k-s16le-stereo.wav
#aplay -Dhw:0,0 -f dat /home/s_48K_16Bit_Sunshine.wav &
#aplay -Dhw:0,0 -f dat /home/tone_1KHz_1min.wav &


