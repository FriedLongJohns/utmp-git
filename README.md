## utmp-git  
yt-dlp and ffmpeg-based terminal music player/downloader  

I stole yt-dlp and made a music player, because running yt-dlp and ffmpeg every time you want to listen to a song is not fun.  
There's no ads since you're literally stealing the video file.  
And since we download in .webm/.wav (audio) instead of .mp4, you download videos very quickly.  
Ten billion errors but it's probably fine.  
Utmp stands for Ultra Chad Music Player, and it tries it's best to be that.  
Utmp only can do a couple things, but as being completely written in a language meant for little-to-no complexity, it's fairly decent.  
It essentially has the same functionality as a Discord music bot, save for the fact it runs on your computer and (typically) permanently stores it's files.  
Space-sensitive!  

# What can do?  
`utmp <mode> <key> [-p,-t]`  
&nbsp;&nbsp;&nbsp;&nbsp;TEXT COLORS:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;green text is standard text, colored green to seperate from the terminal's white  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;orange text is a warning, either the program had to do extra work, or an error that will not stop utmp from running  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;red text is fatal error text, the program will stop after showing you red text  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;white text is utmp telling big brain people what it's doing, or are generated as an error by utmp's commands  

&nbsp;&nbsp;&nbsp;&nbsp;INPUTS:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` : can be set to each of the following values:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list : show all songs in library (inside ~/utmp/ folder)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;find : use key as search query on youtube to find videos  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down : use key as a link to directly download videos  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;play : play videos from library using their indexes.  If an index is not found (or maybe you put text instead of an index), it will use it as a search keyword much like list, and go on to play any and ALL matches.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;key 0 would play the first song in library  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;key 0,4,2 would play the first, fifth, and then third song in library  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;key all would play every single song in the library, in a random order  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OST would play every song with 'OST' in it's name  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;expo : put all (applicable) songs in a big command you can send to a friend, which if they run, lets them download all of the same songs  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	chooses songs by index, like play  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;remv : delete specified songs by index  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;clen : remove files with duplicate names (but not extensions) in /utmp, prioritizing .webm and .wav to keep.  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<key>` : what this needs to be changes based on `<mode>`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` is list : `<key>` can be nothing, but if something it will be used as a search keyword, only returning results with that text  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` is find : `<key>` can be anything (but not nothing), and make sure you put quotes around the text if it has spaces  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` is down : `<key>` should be a url  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` is play : `<key>` should be a bunch of numbers seperated by commas, denoting media indexes  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` is expo : same as play  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`<mode>` is remv : same as play, again  

&nbsp;&nbsp;&nbsp;&nbsp;OPTIONS:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-p : Prompt file for deletion after download, if any. Only works with `<mode>` as 'find' or 'down'  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-t : Play video, and then prompt for deletion  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	 Recommended to use -t when using 'find' mode as Youtube may not always return what you wanted"  

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
