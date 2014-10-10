echo lock > /sys/power/wake_lock
echo disable > /d/sst/runtime_pm


echo "Applying RT5672 IHF settings"


# Slot 0,1
amixer -ccherrytrailcrau cset name="DAC1 L Mux" "IF1 DAC"
amixer -ccherrytrailcrau cset name="DAC1 R Mux" "IF1 DAC"
amixer -ccherrytrailcrau cset name="DAC1 MIXL DAC1 Switch" 1
amixer -ccherrytrailcrau cset name="DAC1 MIXR DAC1 Switch" 1
amixer -ccherrytrailcrau cset name="Stereo DAC MIXL DAC L1 Switch" 1
amixer -ccherrytrailcrau cset name="Stereo DAC MIXR DAC R1 Switch" 1
amixer -ccherrytrailcrau cset name="PDM1 L Mux" "Stereo DAC"
amixer -ccherrytrailcrau cset name="PDM1 R Mux" "Stereo DAC"
amixer -ccherrytrailcrau cset name="Ext Spk Switch" on
amixer -ccherrytrailcrau cset name="Headphone Switch" off


echo "pb spk slot 0,1"
amixer -ccherrytrailcrau cset name='codec_out0 mix 0 pcm0_in' 1
amixer -ccherrytrailcrau cset name='media0_out mix 0 media1_in' 1


# Gains
amixer -ccherrytrailcrau cset name='media1_in gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='media1_in gain 0 rampduration' 50
amixer -ccherrytrailcrau cset name='media1_in gain 0 mute' 0

amixer -ccherrytrailcrau cset name='pcm0_in gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='pcm0_in gain 0 rampduration' 50
amixer -ccherrytrailcrau cset name='pcm0_in gain 0 mute' 0

amixer -ccherrytrailcrau cset name='codec_out0 gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='codec_out0 gain 0 rampduration' 50
amixer -ccherrytrailcrau cset name='codec_out0 gain 0 mute' 0



aplay -Dhw:cherrytrailcrau,0,0 -t wav ./doreimi-48k-s16le-stereo.wav
