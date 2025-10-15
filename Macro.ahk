Menu, Tray, Icon, ./res/mic.ico

SetBatchLines -1

; Find first mixer with MASTER:VOLUME = TargetVolume
GetMixerIDWithVolume(TargetVolume) {
    Loop {
        CurrMixer := A_Index
        SoundGet, Setting, MASTER:1, VOLUME, %CurrMixer%
        if (ErrorLevel = "Can't Open Specified Mixer")
            break  ; No more mixer
        Volume := Round(Setting)
        if (Volume = TargetVolume) {
            return CurrMixer
        }
    }
    return -1  ; No mixer with that volume level
}


F13::
+F13::
{
    mixerID := GetMixerIDWithVolume(93)
    if (mixerID = -1) {
        MsgBox, No soundcard with volume selected founded!
        return
    }
    SoundSet, +1, MASTER, mute, %mixerID%
    SoundGet, master_mute, , mute, %mixerID%
    return
}
