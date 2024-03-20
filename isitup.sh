#!/bin/bash

SERVER=1.1.1.1

# Sound file path
SOUND_FILE="/home/alax/Documents/alarm.mp3"

# noise function
play_alarm() {
  while true; do
    mpg123 -q "$SOUND_FILE" &
    ALARM_PID=$!
    wait $ALARM_PID
  done
}

# alarm looper
while true; do
  if ping -c 1 -W 5 $SERVER > /dev/null 2>&1; then
    # on successful ping, do an extended ping test
    echo "Reply received. Checking for packet loss"
    ping -c 25 1.1.1.1
    
    # Start playing the alarm in the background
    play_alarm &
    ALARM_LOOP_PID=$!

    # Wait for user input to stop the alarm
    read -p "Press any key to silence the alarm" -n1 -s
    kill $ALARM_LOOP_PID

    break
  else
    # If no reply, wait 20s before retrying
    echo "No internet connection, retrying..."
    sleep 20
  fi
done
