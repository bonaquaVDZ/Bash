# Codecademy: Off-Platform Projec
# What is the Hottest City?

Use the weather utility from Bash-Snippets to gather and sort temperature data from multiple cities.

Project Objectives
This project, which you’ll complete in a Linux environment, reviews the bash scripting skills you’ve learned thus far. You will be creating a bash script that:

Fetches forecast temperatures for multiple cities.
Saves those temperatures to a file.
Sorts the cities based on their temperatures.
You will install and use a modified version of the weather bash script from Bash-Snippets to gather the required forecast information. The weather script gets the location from the user and sends it to the wttr.in API. The API returns a detailed weather forecast of the specified location.

Project Setup
Even though the wttr.in API is highly customizable, the original weather script is not. This is why we made our own version of the weather command which can show a much simpler output such as: Paris +39°F.

Install Modified weather Script
Let’s begin by opening up a terminal inside VirtualBox Ubuntu Desktop and:

Download our modified weather script using the command
wget https://static-assets.codecademy.com/Courses/learn-linux/weather-offplatform-project/weather.sh
Give it executable permissions using the command
chmod +x weather.sh.
See the usage of our script with ./weather.sh -h.
We retained the original functionality of the weather utility while adding an option, -s, to show a simpler output. Try out the script with and without the -s option. You could try some of the examples below:

./weather.sh
./weather.sh Tokyo
./weather.sh -s Tokyo
Notice the original output is quite fancy, which makes it challenging to filter out the temperature.

Optional: Install Bash-Snippets weather Script
Installing the original weather script from Bash-Snippets is optional. However, it is recommended if you are familiar with git and if you wish to further improve on the script you will be writing in this project.

Click here for the instructions.
Create Script File
Let’s create the shell script file you will be working with, sortCityTemps.sh, and give it permission to execute:

$ touch sortCityTemps.sh
$ chmod +x sortCityTemps.sh
You can work on this file in either the Ubuntu Desktop Editor (which comes pre-installed), a code editor of your choosing, or inside the terminal itself with nano. You can open the file in Ubuntu Desktop Editor using the command gedit sortCityTemps.sh &. If you decide to use nano, remember that you can save changes to the file using CTRL / CMD + O and exit using CTRL / CMD + X.

Add the line #!/bin/bash to the top of the script and save!

## Collect and Sort Temperatures
Inside our script sortCityTemps.sh:

1. Create an array of cities you will be getting the temperatures of. You can create an array in Bash using the format

cities=("City1" "City2" "City3")
Replace the values in the quotes with at least 3 of your favorite cities. For simplicity, let’s pick cities that don’t contain spaces in their names.

2. In the script, create an empty file called temperatures.txt where you will be saving the temperatures. You can use output redirection > to accomplish this.

For example, the command > movies.log will create an empty file called movies.log. If this file already exists, the command will overwrite it. This makes sure there’s a fresh, blank version of this file each time the script is run.

3. Next, you need to set up a loop to iterate through the cities in the array you created. Using a for loop makes this an easy task:

for city in ${cities[@]}
do
# commands to repeat
done

The city variable takes the value of item inside the array on each iteration of the loop. On the first iteration, for example, it will be assigned to “City1”. “City2” on the second iteration. “City3” on the third iteration and so on.

4. Inside the loop, add the command sleep 1. This pauses the script for 1 second at every iteration to ensure you do not send too many requests to the API in a short amount of time.

5. Inside the loop, call our modified script weather.sh using the city variable as the parameter. Make sure to use the -s option to get the simplified weather output.

We encourage you to run the script in-between steps for the sake of testing. Before continuing to the next step, try printing out the output from the weather.sh script using echo. Remember the simplified output looks like Paris +39°F.

6. You need to remove the extra symbols like + and °F so the data is easily sortable. Pipe the output of the weather script into the sed command to replace these with an empty string. For example, sed 's/+//' removes the + symbol from the output.

You may need to pipe and use the sed command more than once.

7. Using output redirection >>, append the final weather output to a file called temperatures.txt (in the first iteration, since the file doesn’t exist yet, it will be automatically created. In the iterations after that, the temperatures will be appended).

After running the script at this point, temperatures.txt should contain something like this:

Paris 46
Tokyo 64
London 36

8. Finally, let’s sort the temperatures saved in the temperatures.txt file in descending order and save that sorted output to a final file.

In the script after the loop, use the sort command on the file containing our city temperatures. The sort command by default will sort according to the city name in ascending order. But you want it to sort according to the temperatures in descending order! Use sort on temperatures.tx with the options -k2 (to sort based on the second value in each line) and -r to sort in descending order.

9. Save the sorted output to a file called sorted_temperatures.txt using output redirection >.

10. Save and run./sortCityTemps.sh. Open the file sorted_temperatures.txt and see that the cities are now sorted according to their current temperatures.