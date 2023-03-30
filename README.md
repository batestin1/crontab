
<h1 align="center">

<img src="https://img.shields.io/static/v1?label=CRONTAB%20POR&message=Bates&color=7159c1&style=flat-square&logo=ghost"/>

<h3> <p align="center">CRONTAB</p> </h3>

<h3> <p align="center"> ================= </p> </h3>

>> <h3> Resume </h3>

<p> <b>cron.sh</b> is a shell script that is used to configure cron jobs for the Linux operating system. These tasks run at predetermined times, and the script allows the user to define the times when the task will run.

<b>cron.sh</b> receives six parameters: the values for the minutes, hours, days of the month, months, days of the week the task will be executed and the path to the file that will be executed. The user can set these values to an integer or the "*" character to indicate that the task will run on any valid value.

If the user informs less than six parameters or informs the parameter <b> "--help" </b>, the script will present a message with information on how to use the script. Additionally, the script creates a temporary file to store the cron settings and then adds those settings to the user's cron job list. After adding the settings, the temporary file is removed.</p>

>> <h3> How install </h3>

1. Open a text editor on your computer.

2. Copy the entire contents of the displayed script.

3. Paste the script content into the text editor.

4. Save the file with a name of your choice, for example "cron.sh".

5. Open a terminal or command prompt.

6. Navigate to the directory where you saved the "cron.sh" file using the cd <directory_path> command.

7. Give the file execute permission using the command chmod +x cron.sh.

8. Now you can run the script with the ./cron.sh command followed by the six required parameters as explained in the script summary.

>> <h3> How Works </h3>

```
----------- HELP GUIDE ----------------------------------------------------------------------------

Usage: cron.sh <minute> <hour> <day_of_month> <month> <day_of_week> <script_path>

Parameters:
<minute>          : minute when the script will run (0-59 or '*')
<hour>            : hour when the script will run (0-23 or '*')
<day_of_month>    : day of month when the script will run (1-31 or '*')
<month>           : month when the script will run (1-12 or '*')
<day_of_week>     : day of week when the script will run (0-6 or '*' where 0 or 7 is Sunday)
<script_path>     : path to the script to be executed

Example: sh cron.sh 15 20 "*" "*" "*" /home/user/scripts/my_script.sh

--------------------------------------------------------------------------------------------------
```
    