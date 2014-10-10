echo lock > /sys/power/wake_lock
echo disable > /d/sst/runtime_pm

echo "Applying RT5672 IHF settings"

#slot 2,3
amixer -ccherrytrailcrau cset name="DAC L2 Mux" "IF1 DAC"
amixer -ccherrytrailcrau cset name="DAC R2 Mux" "IF1 DAC"
amixer -ccherrytrailcrau cset name="Stereo DAC MIXL DAC L2 Switch" 1
amixer -ccherrytrailcrau cset name="Stereo DAC MIXR DAC R2 Switch" 1
amixer -ccherrytrailcrau cset name="HPOVOL MIXL DAC1 Switch" 1
amixer -ccherrytrailcrau cset name="HPOVOL MIXR DAC1 Switch" 1
amixer -ccherrytrailcrau cset name="HPO MIX HPVOL Switch" 1
amixer -ccherrytrailcrau cset name="Ext Spk Switch" off
amixer -ccherrytrailcrau cset name="Headphone Switch" on

echo "pb hs slot 2,3"

amixer -ccherrytrailcrau cset name='codec_out1 mix 0 pcm0_in' 1
amixer -ccherrytrailcrau cset name='media0_out mix 0 media1_in' 1

# Gain Settings
amixer -ccherrytrailcrau cset name='media1_in gain 0 mute' 0
amixer -ccherrytrailcrau cset name='media1_in gain 0 volume' 80%,80%
amixer -ccherrytrailcrau cset name='media1_in gain 0 rampduration' 50

amixer -ccherrytrailcrau cset name='pcm0_in gain 0 mute' 0
amixer -ccherrytrailcrau cset name='pcm0_in gain 0 volume' 80%,80%
#amixer -ccherrytrailcrau cset name='pcm0_in gain 0 volume' 70%,70%
amixer -ccherrytrailcrau cset name='pcm0_in gain 0 rampduration' 50

amixer -ccherrytrailcrau cset name='codec_out1 gain 0 mute' 0
amixer -ccherrytrailcrau cset name='codec_out1 gain 0 volume' 80%,80%
#amixer -ccherrytrailcrau cset name='codec_out1 gain 0 volume' 70%,70%
amixer -ccherrytrailcrau cset name='codec_out1 gain 0 rampduration' 50

aplay -t wav -D hw:0,0 doreimi-48k-s16le-stereo.wav
#aplay -Dhw:cherrytrailcrau,0,0 -f dat /root/jinyao/working_scripts/1_WAV_PCM_48000Hz_stereo_16bit.wav -F 24000 -B 96000 &

