---
title:  "Introduction to Robotics (WIP)"
category: "Matfyz"
language: "EN"
latex: true
wip: true
layout: post
---

- .
{:toc}
---


## Sylabus

1. Introduction, history of robotics, basic terminology
2. Kinematics a dynamics
	2.1 Degrees of freedom, kinematic chains
	2.2 Movement and transformation (translation, rotation, spherical movement)
3. Mechanics and mechatronics, sensors, actuators, low-level control
	3.1 Methods of movement, vehicle models
	3.2 Sensoric systems
	3.3 Propulsion systems, motion and speed control
   	3.4 Single chips, MCU, SoC
4. Software and algorithms for robot control
    4.1 Software architectures, implementation methods
   	4.2 Cognitive robotics, artificial intelligence
   	4.3 Localization and mapping (Kalman filter, Monte Carlo methods, probabilistic methods)
   	4.4 Planning, navigation
   	4.5 Advanced sensors, image processing
   	4.6 Multirobotic systems

## References
- Karel Čapek: R.U.R.
- Isaac Asimov: Runaround
- B. Siciliano, O. Khatib: Handbook of Robotics
- S.M. LaValle: Planning Algorithms
- R.J. Schilling: Fundamentals of robotics: Analysis & Control

## History
Robots are old and in movies. There is also robotic fish.

### Prehistory
There is book _Leonardos robots_. Japan had mechanic dolls.

### Robotic structures
- Manipulators
    - 40's of 20$$^{\text{th}}$$ century - remote manipulation with radioactive material
    - 1961 - H.A. Ernst (MIT) - founder of company making manipulator robots
- Mobile robots - remotely controlled
    - since ca. 70's of 20$$^{\text{th}}$$ century
- Mobile robots - autonomous
    - since ca. 90's of 20$$^{\text{th}}$$ century

### Three laws of robotics

> **1. Law**\\
> A robot may not injure a human being or, through inaction, allow a human being
> to come to harm

> **2. Law**\\
> A robot must obey orders given to it by human beings, except where such orders
> would conflict with the first law.

> **3. Law**\\
> A root must protect its own existence as long as such protection does not conflict
> with the first or second laws.

by Isaac Asimov, 1942, Runaround

## Kinematics
- Motion and transformation
- transaction, rotation, spherical movement
- Movement of individual robot parts without relation to forces which move it.
- Representation of the location and orientation in space
- Forward vs. Inverse kinematics

### Degrees of freedom (DOF)
- Basic directions of translation and rotation
- **2D** - 3 DOF [$$x,y,\alpha$$]
- **3D** - 6 DOF [$$x,y,z,\alpha,\beta,\gamma$$]
	- Alternatively "$$x,y,z$$ position + rotation i.r.t $$xy$$ and $$zy$$ planes and i.r.t. the tool rotation axis"

### Manipulators
- Manipulation of an object in space
	- at least 6 DOF for 3D
- Arms, elbows, joints, hinges
- Joint variable $$q_i$$
	- denotes joint setup, orientation
- Joints State $$q = [q_1, q_2,...,q_n]$$
	- DOF = $$n$$
- Working space
- Local vs. Global coordinate system (LCS, GCS)
	- coordinates transformation
    - lokální je užitečnější

### Lower pair joints
- Many variants possible, but usually:
	1. revolute (DOF = 1)
	2. prismatic (DOF = 1)
	3. helical (DOF = 1)
	4. cylindrical (DOF = 2)
	5. spherical (DOF = 3)
	6. planar (DOF = 3)

![kinematics join types](/assets/img/robotics/kinematic-joint-types.png)

- Primitive joint types:
	- prismatic
	- revolute

### Rotation

$$P' = R . P$$

Rotation $$x$$ axis, angle $$\omega$$

$$
R_{x, \omega} =
\begin{bmatrix}
    1 & 0 & 0 \\
    0 & \cos \omega & -\sin \omega \\
    0 & \sin \omega & \sin \omega
\end{bmatrix}$$

### Rotation + translation

$$P' = R.P + T$$

$$
\begin{bmatrix}
P' \\ 1 
\end{bmatrix}
= 
\begin{bmatrix}
R & T \\ 0...0 & 1 
\end{bmatrix}
$$

### Forward kinematics (3D)

$$P = f(q)$$
$$ q = [q_1,q_2,...,q_n]$$
/////////////////////////

- General
	- each link represented by its geometric transformation
	- transition between LCSs

## System composition
- Genral
	a. each link represented by its geometric transformation
	b. translation between LCSs
- May be hard to construct the full combined transformation matrix


////////////////////obrázek hodněosového manipulátoru


### Denavit-Hartengerg
Fictive movements which connect two systems: _rotate, move, move, rotate_.
That can be generalized to any sequence.

### Tyical system composition
Chains composed of rotational and translatioal joints only:
- joint $$k$$ connects links $$k_{i-1}$$ and $$k_i$$
- link $$k$$ connects joints $$k_i$$ and $$k_{i+1}$$

//////////////////////Images from prezentation

Relation between $$LCS_{i-1}$$ and $$LCS_i$$ is a composed transformation:
1. rotate $$x_{i-1}$$ axis alog $$z_{i-1}$$ by angle $$\theta_i$$	($$A_{z_{i-1}} \theta_i$$)
2. Translate $$x_{i-1} axis towards $$z_{i-1}$$ by distance $$d_i$$ (A_{z_{i -1}}) ////
3. Translate $$LCS_{i-1}$$ along $$x_i$$ axis by distance $$a_i$$ /////
4. Rotate $$z_{i-1}$$ axis along $$x_i$$ by angle $$a_i$$ ////////

1. Rotate $$x_{i-1}$$ axis along $$z_{i-1}$$ by angle $$\theta_i$$
///////////////

3. Translate $$LCS_{i-1}$$ along $$x_i$$ axis by distance $$a_i$$

$$
A_{x_i, \alpha_i}
=
\begin{bmatrix}
1 & 0 & 0 & \alpha \\
0 & 1 & 0
\end{bmatrix}
$$
\\\\\\\\\\\\\\\\\\\\\

- DH parameters: $$\theta_i,d_i,a,\alpha_i$$
	- $$\theta_i$$ angle between $$x$$ axes about $$z_{i-1}$$ (joint angle)
	- $$d_1$$ distance between $$x$$ axes (link offset)
	- $$a_i$$ distance between $$z$$ axes (link)
	////////////////////////

## $$A^i_{i-1}$$ usage
- universal tranformation bwtween two adjastement LCS
- Same format independent to joint type:
	- Rotation - $$\theta$$
	/////////////////////////////////////






# Stepper motor
Can get realy hot and still work properly

## Wiring

- Unipolar

- Bipolar


## BLDC vc Stepper
- both are brushless
- typically (but not allways):
	- BLDC just few poles (max 8), stepper more
	- BLDC closed-loop, stepper open-loop
	- BLDC for higher revolutions
	/////////////////////////////////////


# RC servo

---

# Sensors

- Human sensing
	- 5+$$N$$ senses
		- traditional
			- sight
			- smell
			- taste
			- touch
			- hearing
		- other senses
			- balance
			- acceleration
			- pain
			- preasure/tention
			- time
			- temperature
			- kinesthetic sense
			- internal body senses

- Machine sensing
	- measurement
	- basic sensors
		- tactile (local)
		- touchless (distant)
		- virtual
	- advanced sensors
		- radar / lidar
		- camera, depth camera
		- IMU
	- local x remove
	- contact - contactless
	- detection x measurement
		- "Is there obsticle ?"
		- "How far is the obstacle ?"
	- active x passive
	- favorite sensors in (mobile) robotics
		- tactile
			- microswitches, end switches, bumpers
		- electrical
			- motor current consupption measurement, induced current sensing/measurement etc.
		- directional acoustic, optical
			- point measurement using detection of reflected beam
			- obstacle detection, enviroment mapping
		- line sensors
			- directional measurement multiplexed in times
		- cameras
			- image processing
		- MEMS
			- use of microscopic phenomena
		- Virtual
			- indirect measurement, using action consequences to detect the action - "virtual bumpers"

## Measurement using signal reflection

- Direct TOF
	- Measuring time needed for the signal to return
	- Precise measurement needed
- Pulsed TOF
	- transmitting pulses
	- Measuring ratio of signal received before/after event
- Phase shift
	///////////////////////////////////////////////////////
- Infrared, laser, radar, ultrasonic
	- intensity measurement possible in addition
- Signal must get reflected
- Measurement is active
	- environment vulnerability
	- interferences

## Measurement using signal interaption
- Gate
- detection of signal reflection (or lack of it)
- reflected signal intensity thresholding
	//////////////////////////// images

## Ultrasonic
- direct TOF measurement is possible
	///////////////////////////////////////////////////////

## Infrared
	- reflective
		- shortrage
		- CNY-70, QRD1113/4, GP2S60
	- PSD
		- up to dingle meters distance measurement
		- illumination probles
		- example: Sharp GP2D12, GP2Y0A21

## Laser and lidar
	- 1d, 2d, 3d
	- rangefinder, scanner
	- 20km possible


# Regulations and control

## Open loop system
	/////////////////////////////////image

## Real world
- The motor does not rotate with set speed
	- mechanical losses
	- slow ramp up/slowdown
	- non-linear behavior
	- direction-dependent
	- environment influences
	- and much more

## Close loop system

	////////////////////////////image

### Feedback usage example
- Control -> motor - encoders - control ...
	- counting encoder impulses, we get real speed
	- based on the speed
////////////////


### Trivial solution (no feedback)
- Set control to proportion of required speed vs. max speed

//////////////// code


