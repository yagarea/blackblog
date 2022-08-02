---
title: "Projects"
permalink: "/projects/"
layout: page
---

This is list of my personal projects. 

<div class="project-wrapper" markdown="1">

{% include project-card.html
	name="GGU Homepage"
	image="/assets/img/projects/ggu-website.png"
	description="Homepage for student group I belong to. Visit [ggu.cz](ggu.cz) for more information about group."
	used_tech="Jekyll, Ruby, Shell, CSS, HTML"
	repo="https://github.com/yagarea/ggu.cz/"
%}

{% include project-card.html
	name="Slimulator"
	image="/assets/img/projects/slimulator.gif"
	description="Slimulator is a program you can use to simulate slime mold pathfinding and enviroment exploration. The input is an image of the environment and the output is a video of the simulated slime mold behavior."
	used_tech="C#, FFMPEG"
	repo="https://github.com/yagarea/Slimulator/"
%}

{% include project-card.html
	name="Confgit"
	image="/assets/img/projects/confgit.jpg"
	description="Confgit is a Git overhead for version control of your config files. The main difference between confgit and any other config file version system is it's simplicity. It makes version control and migration of config files safe and easy."
	used_tech="Python, Git"
	repo="https://github.com/yagarea/confgit"
%}

{% include project-card.html
	name="Javachat" 
	image=""
description="RSA encrypted chatting service writen in java. Project provides sever with administration and client softare.

Security features:	

- Communication between server and client is encrypted by RSA.
- Passwords are saved as SHA hashes.
- Passwords are hashed with randomized salt"
	used_tech="Java"
	repo="https://github.com/yagarea/java-chat"
%}

{% include project-card.html
	name="Meziklasí"
	image="/assets/img/projects/meziklasi.jpg"
	description="This is mainly a literary project. It is a chronicle of the village of Meziklasí.<br/> You can visit it on <a href='www.meziklasi.cz'>www.meziklasi.cz</a>"
	used_tech="Jekyll, Ruby, Python, CSS, HTML"
	repo="https://github.com/xiaoxiae/meziklasi"
%}

{% include project-card.html
	name="Lyricall"
	image="/assets/img/projects/lyricall.jpg"
	description="Lyricall is minimalistic, multilingual and open source platform for free minded poetry publishing."
	used_tech="Jekyll, Ruby, Python, CSS, HTML"
	repo="https://github.com/yagarea/lyricall"
%}

{% include project-card.html
	name="Laser harp" 
	image="/assets/img/projects/Harp.jpg"
	description="This was one of my first big projects. It is musical instrument controlled by interacting with it's laser beams. It can be connected to any PC as MIDI device."
	used_tech="C++, Python"
%}

{% include project-card.html
	name="Wakhan thanka"
	image="/assets/img/projects/wakhan-thanka1.jpg"
	description="Project made in cooperation with <a href='https://nianticlabs.com/'>Niantic labs</a>. It was robotic Ingress portal. It reacted real time to the players in game and real life. At the top of portal is holographic display projecting eye. Eye was programed to look at players standing near by and changing color based on bage state of portal it self."
	used_tech="Java, Python"
%}

</div>
