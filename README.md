## A very simple bash script. 

Are you tired of watching intently for your internet to come back online during an outage? Have a slow NAS or other device that just takes forever to come back online? This basic script will sound an alarm when your service comes back up.

Is It Up Yet is a script designed to send a ping to a destination every 20 seconds, if it doesn't get a reply within 5 seconds it tries to resend the ping. When its target location comes back online, it  runs 25 pings to the same destination, prints the ping statistics, then sounds an alarm to let you know its up. 

I might update this to send messages to other devices on a local network, rather than the mp3 alarm. The primary reason I wrote this is to have an active alert when my internet service comes back online so I can get back to work without needing to check it every 10 minutes, or avoid sleeping through it coming back online.
You could very easily use this to ping a local or remote server (ensure the device you're trying to ping has a static IP and is not blocking pings) for an active alert when it comes back online.


It can ping whatever URL or IP you need it to, if you can ping it it'll work.

Requires bash, mpg123, iputils ping, and you probably want some speakers

Oh and you'll need to provide your own alarm file.


**How to use it:**

Clone the repo: `git clone https://github.com/Alaxandars/Is-It-Up-Yet-.git`

After cloning, you'll find a new directory named Is-It-Up-Yet-. Navigate into it using: `cd Is-It-Up-Yet-`

You need to provide your own mp3 file and update the script to tell it where to play from.

Update **isitup.sh** and change `1.1.1.1` to your desired ping destination, and change `"/home/alarm.mp3"` to the sound you want to play.

Make the file executable, make sure you're in the folder with the script and run: `chmod +x isitup.sh`

From the terminal, run the following: `./isitup.sh`


By default the script is pinging 1.1.1.1, if you have an active internet connection and you can reach Cloudflare its going to run an extended ping test, and then sound the alarm.

You can test the script by disabling/disconnecting your network adapter, running the script, then reconnecting your network adapter.




i'm sure there's better scripts/programs that already do this, but I'm just learning bash and I wrote this when my internet was down and it turned out to be really handy when i reboot my pi server
