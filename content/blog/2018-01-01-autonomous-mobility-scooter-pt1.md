---
title: "Autonomous Mobility Scooter (Part 1)"
date: 2018-01-01
layout: post
published: true
tags: ['autonomous', 'arduino', 'scooter', 'fun']
author: "Will Furnell"
---

In part one of our Autonomous Mobility Scooter series, we get it working as normal. With a few problems...

{{% picture "2018-01-01-autonomous-mobility-scooter-part-1/scooter.jpg" %}}

<!--more-->

One of our major projects this year is an autonomous mobility scooter - with the mobility scooter acting as a chassis to build upon. 

There have been a few problems with motor controllers blowing up, but by the end of the first term, we have been able to get the base fully functional with; a throttle, motor controller, speed selector, power distribution board and room for expansion. All of this uses the existing wiring harness of the scooter. 

At the moment, everything is controlled with an Arduino, doing conversion between the analogue inputs to PWM output for the motor controller. This works perfectly fine for us and probably can be used for future stages in the project.

{{% picture "2018-01-01-autonomous-mobility-scooter-part-1/wiring.jpg" %}}

Now the task is to start working on autonomy, with the first major task being converting the steering from manual to controlled with a motor and chain system. Additionally, we would like to be able to use the scooter manually too - so the handlebars need to be easily removed and replaced!

Once the steering has been sorted, then we can work on adding a remote control system, and then much farther into the future cameras, ultrasonic sensors, GPS and LIDAR can be added for full autonomy. 

Here's a video of the scooter in action.

<iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FTinkerSoc%2Fvideos%2F10155847364567557%2F&width=500&show_text=false&height=893&appId" width="500" height="893" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>

*Facebook video, [direct link](https://www.facebook.com/TinkerSoc/videos/10155847364567557/)*


