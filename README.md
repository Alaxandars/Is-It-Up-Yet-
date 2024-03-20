## A very simple bash script. 


Tired of watching intently for your internet to come back online? This simple script will sound an alarm when your service comes back up.

It can ping whatever URL or IP you need it to, if you can ping it it'll work.

Requires bash, mpg123, and iputils ping 

Oh and you'll need to provide your own alarm file.


**How to use it**

Clone the repo: `git clone https://github.com/Alaxandars/Is-It-Up-Yet-.git`

After cloning, you'll find a new directory named Is-It-Up-Yet-. Navigate into it using `cd Is-It-Up-Yet-`

Make the file executable, make sure you're in the folder with the script and run: `chmod +x isitup.sh`

From the terminal, run `./isitup.sh`

You need to provide your own mp3 file and update the script to tell it where to play from.

By default the script is pinging 1.1.1.1, if you have an active internet connection and you can reach Cloudflare its going to run an extended ping test, and then sound the alarm. 




i'm sure there's better scripts/programs that already do this, but I'm just learning bash and I wrote this when my internet was down and it turned out to be really handy
