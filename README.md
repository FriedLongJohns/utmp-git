## utmp-git  
yt-dlp and ffmpeg-based terminal music player/downloader  

I stole yt-dlp and made a music player, because running yt-dlp and ffmpeg every time you want to listen to a song is not fun.  
There's no ads since you're directly downloading the video file.  
And since we download in .webm/.wav (audio) instead of .mp4, you download videos very quickly.  
Ten billion errors, but it's probably fine.  

# What can do?  
`utmp <mode> <key> [-p,-t]`  
`go read the utmp-desc file, nerd.`

# Examples  

`utmp list OST`  
&nbsp;&nbsp;&nbsp;&nbsp;Akin to `utmp list | grep OST` but prettier, this would print my utmp library, only showing files with OST in their name.  
&nbsp;&nbsp;&nbsp;&nbsp;Good for finding video game OST files.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Current Stored Library:`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Keyword: OST`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`----------------------`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`201 : [cKJA-D3ltPM] - Tunç Çakır - Blue Room (feat. LudoWic) (Katana ZERO OST).webm`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`220 : [m04EkZrqP4A] - My Friend Pedro OST.webm`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`229 : [oM6eZJRurFk] - Ed Harrison - Annul [Neotokyo OST].mp3`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`244 : [z3WmEYtpFQY] - Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set).webm`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`----------------------`  

`utmp play OST`  
&nbsp;&nbsp;&nbsp;&nbsp;We can list our OST files, but even better would be to PLAY them too. This does that, since OST is recognized as not being a song index.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Playing songs: OST`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Cannot play [OST]: Index not found!`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Using OST as a search keyword...`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Playing [OST]: /Users/bob/utmp/Arknights OST - Title.mp3`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ffplay -i "/Users/bob/utmp/Arknights OST - Title.mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal`  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Playing [OST]: /Users/bob/utmp/Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set) [z3WmEYtpFQY].mp3`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ffplay -i "/Users/bob/utmp/Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set) [z3WmEYtpFQY].mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal`  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Playing [OST]: /Users/bob/utmp/Brigador OST - 1-12 - Continue [ YhT4Xj-qQs].mp3`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ffplay -i "/Users/bob/utmp/Brigador OST - 1-12 - Continue [ YhT4Xj-qQs].mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal`  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Playing [OST]: /Users/bob/utmp/Hacknet OST - Sabotage.mp3`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ffplay -i "/Users/bob/utmp/Hacknet OST - Sabotage.mp3" -showmode 1 -autoexit -volume 10 -loglevel fatal`  

`utmp find "Never Gonna Give You Up" -p`  
&nbsp;&nbsp;&nbsp;&nbsp;This is using 'find' mode, so utmp is now searching youtube for the well-known rickroll song.  
&nbsp;&nbsp;&nbsp;&nbsp;`-p` has been added, so it will `p`rompt me to save or delete after it's done - I wouldn't want to download the wrong song.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Searching for 'Never Gonna Give You Up'...`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`yt-dlp Never Gonna Give You Up -f ba --default-search auto --max-downloads 1 --abort-on-error --quiet -o "/Users/bob/utmp/temp/[%(id)s]  -  %(title)s.%(ext)s"`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Downloaded result as: [dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`mv "/Users/bob/utmp/temp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm" "/Users/bob/utmp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm"`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Delete file? [n/Y]: Y`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Deleting [dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm!`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`rm "/Users/bob/utmp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm"`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Done`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Finished!`  

`utmp expo 100,110,120,130`  
&nbsp;&nbsp;&nbsp;&nbsp;Export mode - I want to give a friend the songs I have at indexes 100, 110, 120, and 130.  

&nbsp;&nbsp;&nbsp;&nbsp;Possible output:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Exporting songs: 100 110 120 130`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`/Users/bob/utmp/Robotic Wisp - SharaX - Tokyovania Control (Remix).mp3 has no formatted url, skipping!`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`/Users/bob/utmp/THINK AGAIN.mp3 has no formatted url, skipping!`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Export: /Users/bob/utmp/V0iD - Compressed Leptonic Beams Of Sub - Atomic Breaks Which Destroy Neural And Synaptic Tissue [1332455656].mp3 -> 1332455656`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Export: /Users/bob/utmp/[-PGI4eCZePY] - In, Vulnerable.mp3 -> -PGI4eCZePY`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`echo "::UTMP LIBRARY IMPORT::" && utmp down "1332455656" && utmp down "-PGI4eCZePY"`  

&nbsp;&nbsp;&nbsp;&nbsp;Unfortunately, most of my songs come from older versions of utmp where the URL wasn't embedded in the filename, so only 120 (SoundCloud url) and 130 (Youtube url) are able to be exported.  

`utmp -c; utmp list -c; utmp play all -c`  
&nbsp;&nbsp;&nbsp;&nbsp;All of these have the `-c` option, which just means to check dependencies.  
&nbsp;&nbsp;&nbsp;&nbsp;Functionality remains... usually, and this is for when you clone utmp onto a work computer.

&nbsp;&nbsp;&nbsp;&nbsp;Good output:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`git found.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`yt-dlp found.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ffmpeg and ffplay found.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`UTMP dependency installs confirmed.`

&nbsp;&nbsp;&nbsp;&nbsp;Another output:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`apt detected, confirming updated status...`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`[...]`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Git not found. Installing git...`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Using: apt`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`git installed.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`git version 2.37.1 (Apple Git-137.1)`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Installing yt-dlp...`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Using: apt`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`[...]`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`yt-dlp installed.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`SDL library not found. Installing SDL...`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Using: apt`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`[...]`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`SDL library installed.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Installing ffmpeg and ffplay...`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Using: git (manual)`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Compiling and installing ffmpeg...`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`[...]`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`git cloning ffmpeg`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`compiling ffmpeg`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`extracting executables`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ffmpeg and ffplay installed.`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`[ffmpeg -version & ffplay -version]`
