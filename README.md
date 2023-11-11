## utmp-git  
yt-dlp and ffmpeg-based terminal music player/downloader  

I stole yt-dlp and made a music player, because running yt-dlp and ffmpeg every time you want to listen to a song is not fun.  
There's no ads since you're directly downloading the video file.  
And since we download in .webm/.wav (audio) instead of .mp4, you download videos very quickly.  
Ten billion errors, but it's probably fine.  

# What can do?  
`utmp <mode> <key> [-ptcC]`  
`go read the utmp-desc file, nerd.`

# Examples  

<span style="color: rgb(220,0,245);">`utmp list OST`</span>  
&nbsp;&nbsp;&nbsp;&nbsp;Akin to `utmp list | grep OST` but prettier, this would print my utmp library, only showing files with OST in their name.  
&nbsp;&nbsp;&nbsp;&nbsp;Good for finding video game OST files.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
```bash
    Current Stored Library:  
    Keyword: OST  
    ----------------------  
    201 : [cKJA-D3ltPM] - Tunç Çakır - Blue Room (feat. LudoWic) (Katana ZERO OST).webm  
    220 : [m04EkZrqP4A] - My Friend Pedro OST.webm  
    229 : [oM6eZJRurFk] - Ed Harrison - Annul [Neotokyo OST].mp3  
    244 : [z3WmEYtpFQY] - Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set).webm  
    ----------------------  
```

<span style="color: rgb(220,0,245);">`utmp play OST`</span>  
&nbsp;&nbsp;&nbsp;&nbsp;We can list our OST files, but even better would be to PLAY them too. This does that, since OST is recognized as not being a song index.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
```bash
    Playing songs: OST  
    Cannot play [OST]: Index not found!  
    Using OST as a search keyword...  
    Playing [OST]: /Users/bob/utmp/Arknights OST - Title.mp3  
    ffplay -i "/Users/bob/utmp/Arknights OST - Title.mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal  

    Playing [OST]: /Users/bob/utmp/Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set) [z3WmEYtpFQY].mp3  
    ffplay -i "/Users/bob/utmp/Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set) [z3WmEYtpFQY].mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal  

    Playing [OST]: /Users/bob/utmp/Brigador OST - 1-12 - Continue [ YhT4Xj-qQs].mp3  
    ffplay -i "/Users/bob/utmp/Brigador OST - 1-12 - Continue [ YhT4Xj-qQs].mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal  

    Playing [OST]: /Users/bob/utmp/Hacknet OST - Sabotage.mp3  
    ffplay -i "/Users/bob/utmp/Hacknet OST - Sabotage.mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal  
```
<span style="color: rgb(220,0,245);">`utmp find "Never Gonna Give You Up" -p`</span>  
&nbsp;&nbsp;&nbsp;&nbsp;This is using 'find' mode, so utmp is now searching youtube for the well-known rickroll song.  
&nbsp;&nbsp;&nbsp;&nbsp;`-p` has been added, so it will `p`rompt me to save or delete after it's done - I wouldn't want to download the wrong song.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
```bash
    Searching for 'Never Gonna Give You Up'...  
    yt-dlp Never Gonna Give You Up -f ba --default-search auto --max-downloads 1 --abort-on-error --quiet -o "/Users/bob/utmp/temp/[%(id)s]  -  %(title)s.%(ext)s"  
    Downloaded result as: [dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm  
    mv "/Users/bob/utmp/temp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm" "/Users/bob/utmp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm"  
    Delete file? [n/Y]: Y  
    Deleting [dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm!  
    rm "/Users/bob/utmp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm"  
    Done  
    Finished!  
```

<span style="color: rgb(220,0,245);">`utmp expo 100,110,120,130`</span>  
&nbsp;&nbsp;&nbsp;&nbsp;Export mode - I want to give a friend the songs I have at indexes 100, 110, 120, and 130.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
```bash
    Exporting songs: 100 110 120 130  
    /Users/bob/utmp/Robotic Wisp - SharaX - Tokyovania Control (Remix).mp3 has no formatted url, skipping!  
    /Users/bob/utmp/THINK AGAIN.mp3 has no formatted url, skipping!  
    Export: /Users/bob/utmp/V0iD - Compressed Leptonic Beams Of Sub - Atomic Breaks Which Destroy Neural And Synaptic Tissue [1332455656].mp3 -> 1332455656  
    Export: /Users/bob/utmp/[-PGI4eCZePY] - In, Vulnerable.mp3 -> -PGI4eCZePY  
    echo "::UTMP LIBRARY IMPORT::" && utmp down "1332455656" && utmp down "-PGI4eCZePY"  
```

&nbsp;&nbsp;&nbsp;&nbsp;Unfortunately, most of my songs come from older versions of utmp where the URL wasn't embedded in the filename, so only 120 (SoundCloud url) and 130 (Youtube url) are able to be exported.  

<span style="color: rgb(220,0,245);">`utmp -c; utmp list -c; utmp play all -c`</span>  
&nbsp;&nbsp;&nbsp;&nbsp;All of these have the `-c` option, which just means to check dependencies.  
&nbsp;&nbsp;&nbsp;&nbsp;Functionality remains... usually, and this is for when you clone utmp onto a work computer.

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
```bash
    git found.
    yt-dlp found.
    ffmpeg and ffplay found.
    UTMP dependency installs confirmed.
```

&nbsp;&nbsp;&nbsp;&nbsp;Another output:  
```bash
    apt detected, confirming updated status...  
    [...]  
    Git not found. Installing git...  
    Using: apt  
    git installed.  
    git version 2.37.1 (Apple Git-137.1)  
    Installing yt-dlp...  
    Using: apt  
    [...]  
    yt-dlp installed.  
    SDL library not found. Installing SDL...  
    Using: apt  
    [...]  
    SDL library installed.  
    Installing ffmpeg and ffplay...  
    Using: git (manual)  
    Compiling and installing ffmpeg...  
    [...]  
    git cloning ffmpeg  
    compiling ffmpeg  
    extracting executables  
    ffmpeg and ffplay installed.  
    [ffmpeg -version & ffplay -version]  
```
