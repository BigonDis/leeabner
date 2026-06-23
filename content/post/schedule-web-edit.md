---
title: "Schedule a Web Edit"
date: 2026-06-23T11:54:10-05:00
draft: true
categories: ["Tutorial"]
tags: ["linux"]
---

Using the at command, you can schedule a single run command to be run.

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
