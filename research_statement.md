---
bibliography: /home/alli/common/refs.bib
geometry: margin=2cm
fontsize: 11pt
header-includes:
    -   \setlength{\parindent}{16pt}
    -   \setlength{\parskip}{0pt}
---

My primary research goal is to improve the state-of-the-art abstractions and
tools for modelling, programming and making guarantees about the behavior of
robotic systems. Specifically, I approach this broad goal through the lens of
*minimality* - by exploring what tasks can be completed by robots with very
limited sensing, actuation, and computational capabilities, we gain a better
understanding of the fundamental informational requirements of robot tasks. We
are also forced to more carefully define what robotic *tasks* are, and how they
can be defined in a platform-invariant way. I am also very interested how these
questions relate to the robot design process itself - with better abstractions,
we can enable human designers to think about and express robot designs at a
higher level, enhancing human creative capacity and making these technologies
more accessible. I have several ongoing research projects toward these goals.

\noindent
\textbf{Bouncing robots: understanding mobile robots with simple boundary
interactions}

One project, with my advisor Dr. Steve LaValle, continues a line of work on the
information requirements of mobile robot tasks, such as navigation,
localization, and coverage. In particular, my line of work examines "bouncing robots":
robots which move forward in straight lines until colliding with an environment
boundary, at which point they can rotate in place and move forward again. We
also consider nondeterministic error in the rotation, since robots rarely turn
perfectly or move perfectly straight. We have determined that under constant control (the same "bounce
angle" at every collision), stable limit cycles exist in all convex polygons.
Additionally, given a convex polygon or sequence of visible edges in a
nonconvex polygon, we are able to synthesize the range of control angles which result in such stable behavior, or determine that such a
cycle is not possible.

The upside is that we can get guarantees on how precise the robot control and
actuation needs to be in order to get certain classes of dynamical behavior
(such as patrolling a polygonal environment on a repeatable path).

I have presented results from this work at the 2017 Midwest Robotics Workshop,
IROS 2017, and the 2018 Dynamics Days conference. We are now using these results as building blocks to perform more complex tasks
such as navigation and coverage in more general environments (nonconvex
polygonal environments, and environments with obstacles). We are developing
visibility-based information space representations of the environment which can be used to
determine if a certain type of mobile robot (with a specific sensor and actuator
configuration) is capable of completing a given task in a given environment.

\noindent
\textbf{Nondeterministic self-assembly and active materials}

From my physics background, I have a strong interest in "active materials," or "programmable
matter," as well as in directed self-assembly: materials which, through local
structure and interactions as well as coarse global control (such as applied
external fields), naturally achieve some desired global structure and/or
dynamics. Minimal robotics is an
interesting lens with which to approach this application: we share many of the
same modelling challenges, such as nondeterministic dynamics and sensing, and an
emphasis on local and limited agent-to-agent interactions.

Most of this work is on the nano and micro scale, but I am interested
in finding macro-scale testbeds which simulate relevant dynamics at the small
scale, which would allow researchers to focus on the high-level control and
computational facets of this line of work, which is often hindered by difficulty
of fabrication and observation of such systems. 

To this end, I am mentoring a team of undergraduates on a project to
use weaselballs (off-the-shelf motorized balls) as our base 
"particle." We modify the balls by placing them in assemblies that can modify 
their dynamics (through weight and friction) as well as allow for the robots to
attach and detach from each other and house simple sensors. We are collecting
data on the dynamics of the free balls (and collaborating with Dr. Yuliy
Baryshnikov to analyze higher-order braid invariants of their trajectories), as
well as the dynamics of different assembly geometries. We are incorporating an
information space representation and distributed computation analysis to
determine minimal sensing and actuation strategies for different global
behaviors, such as collective directed rotation and translation. Results have
been presented by the team of undergraduates at the 2018 UIUC Undergraduate
Engineering Research Fair. In general, I find mentoring and management of
students very rewarding, both personally and because of their contributions to
research. Building relationships with students is one of the aspects of an academic career
that I look forward to the most.

\noindent
\textbf{Improv, a high-level compositional movement design tool}

I am also developing a project called \emph{Improv}, in collaboration with Drs. Amy LaViers
(UIUC Mechanical Science and Engineering Department) and
Mattox Beckman (UIUC Computer Science Department, programming languages focus), 
which is a high-level programming language for describing and
controlling robot motion. This tool aims to be an easy-to-use interface for ROS
(Robot Operating System), the prevailing control architecture in robotics. I am
focusing on principled design of motion composition operators and motion
transformations, taking guidance from the movement analysis and dance
communities. I will be presenting this work at the 2018 ACM International
Conference on Movement Computing. The next steps for this project are to run a
user study which I have designed to test \emph{Improv}'s
usability compared to traditional ROS client libraries, and I hope to
disseminate the results at a major robotics conference. While ROS is a very
powerful system, and having a free and open source set of libraries immeasurably
valuable to the community, the user interface leaves something to be desired,
especially for newcomers to programming and robotics. \emph{Improv} aims to fill
this gap.

Chase - senior design

**Future Work**

Robot design space

Mentoring undergraduates

While different on the surface, all my projects share common motivating
principles and applications: obtaining robust behavior and guarantees on task
satisfiability from simple, local sensing and actuation. My work emphasizes
physically-motivated theoretical models, integrated as much as possible with
hardware and simulated experiments. Along with strong theory and experiments, I
strongly believe we need to be principled with our development of our software
tools - both to enable better, more accurate experimentation, but also to make
the field accessible to as many different people as possible.

Extra
-----


Robotics is a
unique field in that it asks fundamental questions about the universe and
affects mundane details of people's everyday lives.

Having fewer "moving parts" on a robot (whether actual moving parts, or sensors,
or amount of computational state) can lead to more robust designs.

This work contributes to our fundamental
understanding of the capabilities of robots, and the resulting high-level
abstractions can also be applied to algorithms for automated robot design and
verification. This line of work is also useful for determining the
\emph{minimal} amount of information needed to complete a task, leading to more
efficient robots.

As a fledgling robotics researcher, it amazes me to realize the changes that
have swept the field in recent history - the increasing capabilities of hardware manufacturing,
computational systems, and new sensors are transforming robots from academic
curiousities and constrained factory tools to a real technology which will
have impacts on many facets of our human experience. I feel incredibly lucky to be
beginning my career now, and also feel compelled to structure my research around
the development of robotics as a field in itself, by tackling fundamental
questions about the nature and capability of robotic systems.

We also are working to understand the relative power
of different mobile robot models - for instance, can a mobile robot with an
angular odometer and a contact sensor perform all the same tasks as a robot with
a compass and contact sensor? 
