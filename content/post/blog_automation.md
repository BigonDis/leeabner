---
title: "Blog Automation"
date: 2026-06-24T16:53:55-05:00
draft: true
description: "How to automate the updating of the Blog files"
categories: ["Tutorial"]
tags: ["aws" "hugo" ]
---

While it was fairly easy to manually copy the files for the blog up to my S3 bucket and then create an invalidation in Cloudfront, I decided that I wanted to streamline that process and see if I could make it even easier.

To automate the AWS things, I needed the AWS cli tools installed on my computer.  That is easy enough using [Homebrew](https://brew.sh), which I highly recommend if using a Mac.

`brew install awscli` 

Once we have the AWS cli tools installed 
