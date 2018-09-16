# Exlean - An Extremely Lean Github Blog Software for Linux

This project is for users who need extremely lean blogging software for github.io hosted sites. It was Developed on OpenSUSE Leap 15.0 in September, 2018 and it's the defacto publishing software for the bbevan.github.io blog. The best part? It's a Bash script written in less than 10 lines of code.
Prerequisites

## What is this?
This project is for users who need extremely lean blogging software for github.io hosted sites. 

## Prerequisites and Installation

- install pandoc via `sudo zypper in pandoc` (on OpenSUSE)
- Go to github.com
- Create a new repository
- Name the new repository **username.github.io**
- `mkdir blog && cd blog`
- `init` the new repository, add remote, and pull with

```
git init 
git remote add origin https://github.com/bbevan/exlean 
git pull origin master
```
then

```
git remote add myblog https://github.com/username/username.github.io.git
```

## How This Works
`blog.sh` is a five-line shell script that

0. Moves `blog.md` to `blog.bak`
1. Concatenates all markdown files within a directory
2. Writes the concatenation to `blog.md`
3. Converts `blog.md` to `blog.html` with css styling via `pandoc`
4. Invokes an add, a commit, and a push via `git`

## Instructions
Write new blogposts in Markdown format. Save as `filename.md` in your `blog/` folder, then Run `sh blog.sh` ; The script will publish all posts in alphabetical order according to the name of the file.

Example
```bash
 sh blog.sh
```
:bulb: Magic occurs in the background.

```
You will be prompted for your github
username and password. The prompt is
given by git, not us. If in doubt,do
not trust it. Software comes with no
warranty whatsoever. Ya heard? ~-'.'
```

:exclamation: You may want to baleet `README.md` because if it renders inside the blog. 

The development team sends thanks to everyone at **OpenSUSE** who let them gain experience writing for open source by giving them an opportunity to volunteer for their documentation project.

-Brandon Bevan

*Brandon is a recent graduate from Georgia Southern University with a BS in Mathematics. He's currently writing about open source software, editing documents for the OpenSUSE project, and eating a lot of vegetarian junk food. In his downtime, he likes to hone his data skills and volunteer for the American Red Cross.*
