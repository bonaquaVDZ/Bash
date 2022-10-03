# Project Objectives
For your college Astronomy class, you and your team are planning to discuss the history of NASA’s space missions. To make your presentation stand out, you had the amazing idea to interview Neil, a family friend who works at NASA. Neil happily agrees and offers to send you an unreleased collection of photos, videos, and audio to use on your school project.

Neil has consolidated this media into a zip archive file and hosted it on an internal NASA server. He said there’s a 95.98% chance that you will be able to download it without any problems, and it can only be downloaded once. You are responsible for sharing them with your teammates. He warns you that these files are raw and unedited, so they should be compressed before sending them to your peers.

To complete this project, you will be:

- Using a network command to check the status of the server that hosts the zip file
- Downloading and extracting a zip file
- Organizing files based on their type
- Compressing files using **`gzip`**, **`bzip2`**, and **`xz`**
- Archiving files using **`tar`**

# Project Instruction

1. Open two terminal windows and stack them side by side. You can do this by opening one terminal window and either:
- right-click in the terminal and click “New Window” or
- run the command

in the terminal

1. In one of the terminal windows, run the **`sudo iftop`** command (you may be prompted for your account password to use **`sudo`**)Leave this terminal window open until you finish downloading the archive file in the other terminal window.
2. In the other terminal, change the terminal working directory to **`Desktop`**.
3. Check whether the server that hosts the **media.zip** file is reachable since Neil warned you that it might not be. Send 5 packets to **`static-assets.codecademy.com`** using the **`ping`** command with the -c (count) option.You will notice network traffic with bandwidth usage being printed out in the terminal window running the **`iftop`** command. Hint: If you need a reminder on how to use the **`ping -c`** option, use **`man`** to pull up the manual page for **`ping`**.
4. Use the **`wget`** or **`curl`** command to download **media.zip** from the url: **`https://static-assets.codecademy.com/Courses/learn-linux/nasa-media-off-platform-project/media.zip`**.While the file is downloading, **`iftop`** will show the source address of the file and the bandwidth usage. You may close the **`iftop`** terminal when the file is downloaded.
5. Extract the downloaded archive file to the current Desktop.
6. View the files in the extracted **media** directory using either the Ubuntu file explorer or in the terminal.Take note of the files and their extensions.

**Organizing and Compressing Files for Distribution**

In this section, we encourage you to use commands like **`ls`** to check the progress of the tasks in between instructions. You can also always refer to the **`man`** or **`info`** pages for any of the commands if you need a reminder on how to place options and arguments for the compression/archiving commands!

1. Change the terminal working directory to **`media`**.
2. Create a directory called **`compressed_photos`** and move all the photos (files with the **`.jpg`** extension) to this directory.
3. Compress all the files in the **`compressed_photos`** directory using the **`gzip`** compression command.
4. Create a compressed **`tar`** archive named **`videos.tar.bz2`** of all the videos (files with **`.mp4`** extension). Be patient. This might take a while.Note: When using the **`tar`** command, use the **`--remove-files`** option to remove the original files.
5. Compress the audio file with the **`.mp3`** extension using the **`xz`** compression utility.

# Project solution

1. gnome-terminal
2. sudo iftop
3. cd Desktop/
4. ping -c 5 static-assets.codecademy.com
5. wget https://static-assets.codecademy.com/Courses/learn-linux/weather-offplatform-project/media.zip
6. unzip media.zip
7. ls media/
8. cd media/
9. mkdir compressed_photos
    mv *.jpg compressed_photos/
10. gzip compressed_photos/*
    OR
    gzip -r compressed_photos/
11. tar -cf videos.tar *.mp4 --remove-files
    bzip2 videos.tar
    OR
    tar -cjf videos.tar.bz2 *.mp4 --remove-files
12. xz "Tsunami Waves Recorded by Voyager 1.mp3"
    OR
    xz *.mp3
