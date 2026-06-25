---
title: "Schedule a Web Edit"
date: 2026-06-24T11:54:10-05:00
draft: false
categories: ["Tutorial"]
tags: ["linux"]
---

One of the tasks I perform at work is updating the website.  Sometimes the updates are time sensitive and need to go live at a particular time to coincide with other activities.  It always seems like those times end up being in the middle of the night or early in the morning.  Since I am not a big fan of waking up to just update the website I was looking for a way to schedule it.  Cron is better used for tasks that repeat, kind of like a Windows Scheduled Tasks and not intended for things that only happen once.  I was very happy when I came accross the at command.  Using the at command, you can schedule a single run command to be run.

Documentation can be found here [Using at for single-use cron jobs in Linux](https://www.redhat.com/en/blog/single-use-cron)

Format is the command at followed by -t for Time followed by -f for the file you want to run.  

YYYY - Year 
MM - Month  
DD - Day of the Month  
TTTT - time in 24hr format  

```
at -t YYYYMMDDTTTT -f filename
```

```
at -t 202605010445 -f gitpullcibmarine.sh
```

Will run the command gitpullcibmarine.sh at 4:45am on 5/01/2026

```
at -t 202604301100 -f gitpullcibmbank.sh
```
