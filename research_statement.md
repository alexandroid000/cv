---
bibliography: /home/alli/common/refs.bib
geometry: margin=2cm
fontsize: 11pt
header-includes:
    -   \setlength{\parindent}{16pt}
    -   \setlength{\parskip}{0pt}
    -   \usepackage{fancyhdr}
    -   \pagestyle{fancy}
    -   \lhead{Alexandra Nilles}
    -   \rhead{Research Statement}
    -   \renewcommand{\headrulewidth}{0.4pt}
---

\pagenumbering{gobble}

My primary research goal is to improve the state-of-the-art abstractions and
tools for modelling, programming and guaranteeing the behavior of
robotic systems. To approach this broad goal, I focus on 
*minimality:* what tasks can be completed by robots with 
limited sensing, actuation, and computational capabilities? By exploring the 
"lower bounds" of robot power, we can gain a better
understanding of the fundamental informational requirements of robot tasks. We
are also forced to more carefully define what robotic *tasks* are, and how they
can be defined in a platform-invariant way. I am also interested how these
questions relate to the robot design process itself: better abstractions
can enhance human creative capacity and make the design process easier. 
I have several ongoing research projects toward these goals.

**Robust nondeterministic mobile robots through simple boundary
interactions:** With my advisor Dr. Steve LaValle, I am 
examining "bouncing robots": robots which move forward in straight lines until
colliding with an environment boundary, at which point they can rotate in place
and move forward again. We also consider nondeterministic error in the rotation,
since robots rarely turn perfectly or move perfectly straight. We have developed
an algorithm for synthesizing simple controllers which (using only local
measurements and state) cause the path of the robot to converge to a stable
limit cycle on a specified sequence of edges in polygonal environments (or determine
that no such controller exists). Our results provide guarantees on how precise the
robot control and actuation needs to be in order to cause the robot to "patrol"
a space on a repeatable path. I have presented results from this work at the 2017 Midwest
Robotics Workshop, IROS 2017, and the 2018 Dynamics Days conference. We are now
using these results as building blocks for more complex tasks,
such as navigation, localization and coverage, and formalizing task
specifications. We are working toward being 
able to determine if a given mobile robot (with a specific sensor and actuator
configuration) is capable of completing a given task in a given environment.
Such results can help inform automated robot design and verification tools.

**Robust nondeterministic self-assembly through simple robot-robot
interactions:** From my physics background, I have a strong interest in materials 
which achieve useful global structure or dynamics with minimal
information processing per "agent," through local structures and coarse global
controls. Along this line, I am mentoring a team of
undergraduates researching minimal sensing and actuation strategies
for collective directed rotation, translation, and eventually collective
manipulation. We use weaselballs (off-the-shelf motorized balls) as
"particles," and modify them with add-on assemblies that can alter their dynamics
(through weight and friction), house simple sensors, and allow the robots to attach and
detach from each other. Results on assembly dynamics have been presented by
the team of undergraduates at the 2018 UIUC Undergraduate Engineering Research
Fair, and we are working toward synthesis of local rules for collective manipulation 
of robot assemblies and objects.

**A high-level compositional movement design tool:** I am also developing a
project called \emph{Improv}, in collaboration with Dr. Amy LaViers (UIUC
MechSE), Dr. Mattox Beckman (UIUC CS), and undergraduate Chase Gladish, which is a high-level
programming language for describing and controlling robot motion. This tool aims
to be an easy-to-use interface for ROS (Robot Operating System), the prevailing
control architecture in robotics. While ROS is a powerful open-source toolset 
and is immeasurably valuable to the community, the user interface can be quite inefficient
(and intimidating for newcomers to programming and robotics). *Improv* helps fill this gap by taking guidance 
from the movement analysis and dance communities on how to create more
principled languages of movement based on composition and transformation, enabling 
rapid prototyping of robot motion patterns. 
I will be presenting this work at the 2018 ACM International Conference on
Movement Computing. My next step for this project is to run a user study to test
\emph{Improv}'s usability compared to other ROS client libraries.

**Future work:** While different on the surface, all my projects share common
principles and applications: obtaining robust behavior and guarantees on robot
task satisfiability from minimal, local sensing and actuation, and translating
these results to robotic software tools. My work emphasizes
physically-motivated theoretical models, integrated as much as possible with
hardware and simulated experiments. All of my projects have been
collaborative, with a strong emphasis on enabling undergraduate research. I find 
mentoring students rewarding, and one of the aspects of an academic 
career that I look forward to the most - as well as contributing to the
development and formalization of the multi-faceted field of robotics.

<!--
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
-->
