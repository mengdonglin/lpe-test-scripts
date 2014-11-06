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
amixer -c0 sset "SPK MIXL DAC L1" on
amixer -c0 sset "SPK MIXR DAC R1" on
amixer -c0 sset "SPOL MIX SPKVOL L" on
amixer -c0 sset "SPOR MIX SPKVOL R" on
amixer -c0 sset "SPOL MIX DAC L1" on
amixer -c0 sset "SPOR MIX DAC R1" on
#amixer -c0 sset "DAC L2 Mux" "Base L/R"
amixer -c0 sset "Speaker L" on
amixer -c0 sset "Speaker R" on
amixer -c0 sset "Headphone" off
amixer -c0 sset "Ext Spk" on

#if test
#amixer -c0 cset name="DAC MIXL INF1 Switch" on
#amixer -c0 cset name="DAC MIXR INF1 Switch" on
#amixer -c0 cset name="Stereo DAC MIXL DAC L1 Switch" on
#amixer -c0 cset name="Stereo DAC MIXR DAC R1 Switch" on
#amixer -c0 cset name="SPOL MIX DAC L1 Switch" on
#amixer -c0 cset name="SPOR MIX DAC R1 Switch" on
#amixer -c0 cset name="Speaker L Playback Switch" on
#amixer -c0 cset name="Speaker R Playback Switch" on
#endif

aplay -t wav -Dhw:0,0 /home/amanda/Music/doreimi-48k-s16le-stereo.wav
