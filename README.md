# utmp-git
yt-dlp and ffmpeg-based terminal music player/downloader

I stole yt-dlp and made a music player, because running yt-dlp and ffmpeg every time you want to listen to a song is not fun.
There's no ads since you're literally stealing the video file.
And since we download in .webm/.wav (audio) instead of .mp4, you download videos very quickly.
Ten billion errors but it's probably fine.
Utmp stands for Ultra Chad Music Player, and it tries it's best to be that.
Utmp only can do a couple things, but as being completely written in a language meant for little-to-no complexity, it's fairly decent.
It essentially has the same functionality as a Discord music bot, save for the fact it runs on your computer and (typically) permanently stores it's files.

# What can do?
`utmp <mode> <key> [-p,-t]`
	TEXT COLORS:
		green text is standard text, colored green to seperate from the terminal's white
		orange text is a warning, either the program had to do extra work, or an error that will not stop utmp from running
		red text is fatal error text, the program will stop after showing you red text
		white text is utmp telling big brain people what it's doing, or are generated as an error by utmp's commands

	INPUTS:
		`<mode>` : can be set to each of the following values:
			list : show all songs in library (inside ~/utmp/ folder)
			find : use key as search query on youtube to find videos
			down : use key as a link to directly download videos
			play : play videos from library using their indexes
				key 0 would play the first song in library
				key 0,4,2 would play the first, fifth, and then third song in library
				key all would play every single song in the library, in a random order
			expo : put all (applicable) songs in a big command you can send to a friend, which if they run, lets them download all of the same songs
				chooses songs by index, like play
			remv : delete specified songs by index
      clen : remove files with duplicate names (but not extensions) in /utmp, prioritizing .webm and .wav to keep.

		`<key>` : what this needs to be changes based on `<mode>`
			`<mode>` is list : `<key>` can be nothing, but if something it will be used as a search keyword, only returning results with that text
			`<mode>` is find : `<key>` can be anything (but not nothing), and make sure you put quotes around the text if it has spaces
			`<mode>` is down : `<key>` should be a url
			`<mode>` is play : `<key>` should be a bunch of numbers seperated by commas, denoting media indexes
			`<mode>` is expo : same as play
			`<mode>` is remv : same as play, again

	OPTIONS:
		-p : Prompt file for deletion after download, if any. Only works with `<mode>` as 'find' or 'down'

		-t : Play video, and then prompt for deletion
				 Recommended to use -t when using 'find' mode as Youtube may not always return what you wanted"
# Examples

`utmp list OST`
  Akin to `utmp list | grep OST` but prettier, this would print my utmp library, only showing files with OST in their name.
  Good for finding video game OST files.

  Possible output:
    `Current Stored Library:`
    `Keyword: OST`
    `----------------------`
    `201 : [cKJA-D3ltPM] - Tunç Çakır - Blue Room (feat. LudoWic) (Katana ZERO OST).webm`
    `220 : [m04EkZrqP4A] - My Friend Pedro OST.webm`
    `229 : [oM6eZJRurFk] - Ed Harrison - Annul [Neotokyo OST].mp3`
    `244 : [z3WmEYtpFQY] - Brigador Killers OST - Smile For The Camera (Makeup and Vanity Set).webm`
    `----------------------`

`utmp find "Never Gonna Give You Up" -p`
  This is using 'find' mode, so utmp is now searching youtube for the well-known rickroll song.
  `-p` has been added, so it will `p`rompt me to save or delete after it's done - I wouldn't want to download the wrong song.

  Possible output:
    `Searching for 'Never Gonna Give You Up'...`
    `yt-dlp Never Gonna Give You Up -f ba --default-search auto --max-downloads 1 --abort-on-error --quiet -o "/Users/bob/utmp/temp/[%(id)s]  -  %(title)s.%(ext)s"`
    `Downloaded result as: [dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm`
    `mv "/Users/bob/utmp/temp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm" "/Users/bob/utmp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm"`
    `Delete file? [n/Y]: Y`
    `Deleting [dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm!`
    `rm "/Users/bob/utmp/[dQw4w9WgXcQ]  -  Rick Astley - Never Gonna Give You Up (Official Music Video).webm"`
    `Done`
    `Finished!`

`utmp expo 100,110,120,130`
  Export mode - I want to give a friend the songs I have at indexes 100, 110, 120, and 130.

  Possible output:
    `Exporting songs: 100 110 120 130`
    `/Users/bob/utmp/Robotic Wisp - SharaX - Tokyovania Control (Remix).mp3 has no formatted url, skipping!`
    `/Users/bob/utmp/THINK AGAIN.mp3 has no formatted url, skipping!`
    `Export: /Users/bob/utmp/V0iD - Compressed Leptonic Beams Of Sub - Atomic Breaks Which Destroy Neural And Synaptic Tissue [1332455656].mp3 -> 1332455656`
    `Export: /Users/bob/utmp/[-PGI4eCZePY] - In, Vulnerable.mp3 -> -PGI4eCZePY`
    `echo "::UTMP LIBRARY IMPORT::" && utmp down "1332455656" && utmp down "-PGI4eCZePY"`

  Unfortunately, most of my songs come from older versions of utmp where the URL wasn't embedded in the filename, so only 120 (SoundCloud url) and 130 (Youtube url) are able to be exported.
