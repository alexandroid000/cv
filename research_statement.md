---
bibliography: /home/alli/common/refs.bib
csl: /home/alli/common/ieee.csl
geometry: margin=1in
fontsize: 11pt
header-includes:
    -   \setlength{\parindent}{16pt}
    -   \setlength{\parskip}{0pt}
    -   \usepackage{fancyhdr}
    -   \pagestyle{fancy}
    -   \lhead{Alexandra Nilles}
    -   \rhead{Career Goals and Interests}
    -   \renewcommand{\headrulewidth}{0.4pt}
---

\pagenumbering{gobble}

**Introduction and Context:** Mobile robots and flying drones are becoming
general-purpose tools for human endeavours such as monitoring forests, oceans,
or construction sites; delivering cargo in warehouses and in our cities; and
cleaning our buildings. Robots specialized to one task, such as vacuuming, are
often simple and robust. On the other hand, more general-purpose mobile robots
tend to use technologies such as GPS or SLAM. But when applied indiscriminately,
complex technologies can introduce unnecessary moving part in hardware and
software that have difficult-to-understand failure modes. To make mobile robot
technologies more reliable and efficient, we must develop models and systems
that are simple enough to analyze, yet sophisticated enough to avoid failure.

One under-studied area in mobile robotics is the deliberate use of interactions
with the environment (*compliant* interactions) to make systems more efficient
and robust. Promising work in this direction includes minimalism and compliance
for underactuated or nondeterministic robots, developed in the context of
grasping and manipulation [@LozMasTay84][@Erd86][@Gol93]. Recent exciting work
in swarms and multi-robot systems have also been leveraging compliance and
minimalism [@petersen2017complex][@kim2015new][@becker2013massive]. My advisor,
Steve LaValle, and his students and collaborators have investigated specifically
minimal designs and algorithms for mobile robots, for formally defined tasks
such as navigation and localization [@TovGuiLav04][@OkaLav06]. The LaValle
Motion Strategy Lab has also been investigating underactuated mobile robots
[@ErLav13] and wild bodies [@wildBodies12] for quite some time.

My research focuses on the dynamical systems resulting from simple
compliant mobile robot control laws, such as rules for how robots should react
when they encounter environment boundaries or other robots. By characterizing 
these systems, we can leverage useful dynamical features such as stabilizing
trajectories or phase changes. Specifically, I am interested in designing
control algorithms for tasks such as navigation and coverage, with an
emphasis on the robustness of of resulting strategies to sensor and actuator
uncertainty. I plan to extend formalisms such as information 
spaces, which are used for planning, filtering, and to formally compare the
power of different robot and sensor configurations [@OkaLav07b]. 

In my current and future work, I look to ground my research in
physical experiments and create interactive software tools that give users the
ability to explore the design space of compliant mobile robots.
I am inspired to apply my results to interactive robot design tools by Censi's
theory of co-design [@censi2015mathematical] and the work by O'Kane and Shell on
techniques and complexity of automatic reduction and analysis of plans and
filters [@SabGha+19] [@OKaShe17]. I am also building on work in live coding
tools for musical and visual design, and extending these technologies to robotic
movement design [@livecoding14]

My research contributions are focused on three main projects: two on the
dynamics of specific underactuated mobile robotics systems and one on a
programming language which allows humans to interface easily with such
systems. All of these projects have interesting extensions and related questions 
that I hope to continue to develop in my career as a research professor.

**Robust nondeterministic mobile robot strategies from boundary
interactions:** Many different mobile robot platforms have the capability to move
forward indefinitely until encountering an environment boundary. Using this
reactive model, our only control input is the type of *reorientation rule*
to execute when the robot encounters a boundary. Despite its ubiquity, this
motion model has not yet been widely studied by robotics researchers. Our
major contribution so far has been to characterize the properties of the
dynamical system created by iterating the same boundary interaction rule
in a known polygonal environment. 
We have also worked on nondeterministic models, since robots rarely rotate or translate 
perfectly, with the goal of computing strategies which reduce uncertainty in the robot's state. 
Strategies for these robots switch between iterated reorientation rules to
navigate and patrol in nonconvex polygonal
environments.

We have published work on this project at IROS
2017 [@NilBecLav17] and WAFR 2019 [@NilRenBecLav18].
We are extending these results toward algorithms that synthesize strategies for
more complex tasks such as localization and coverage with different sensor
models. The long term goal with this project is to allow the user to input an
environment, task specification, and robot design constraints and explore
controllers and robot designs that are verified to complete tasks under
uncertainty. This may be useful for people designing systems to monitor large
warehouse systems, for example.

\textbf{Robust self-assembly and manipulation from boundary and inter-robot
interactions:} 
Inspired by micro-scale self-propelled particles [@bechinger2016active], we are
designing underactuated robots for tasks such as self-assembly and collective
manipulation. The main challenge is creating minimal control
algorithms that are both physically realistic for micro-scale systems, and are
able to control the state of an entire ensemble of robots, since we cannot control
individual agents. Towards this, a team of undergraduates and myself are developing a low-cost
testbed platform and a software toolbox for analysis and design of these
systems. With off-the-shelf motorized spherical toys which we call "wild
bodies," we can power 3D-printed hubs that house simple sensors and attach
and detach from each other. The resulting robots have many characteristics in
common with
micro-scale particles but are much easier to manufacture and observe. Our
software library analyzes videos of the robots and fits the resulting trajectory
data to different motion models. We also have developed a physics-based
simulator and a lower fidelity particle simulator that allow us to experiment
with design choices and test control algorithms.

So far, we have demonstrated the ability of these agents to cluster objects in their environment
through mechanical interactions as a function of ensemble
velocity and density, and we are preparing these findings for publication.
The long-term goals of this research are to
1) find dynamical behaviors which lend themselves well to discrete control of
the system; and 2) design control algorithms and user interfaces for the analysis and 
control of micro-scale particles, to assist with biological research and micro-scale manufacturing. 

\textbf{A compositional movement design tool:}
One of my most important career goals is to contribute to 
infrastructural open-source software tools for roboticists. Most
academic roboticists use ROS (Robot Operating System), the prevailing control
architecture in robotics. While ROS is a powerful open-source toolset, the user
interface can be quite inefficient and intimidating for newcomers. Additionally, most ROS libraries are structured
around low-level controllers for robot systems, such as joint-angle controllers
or velocity setpoints, which are not immediately useful for people trying to
control underactuated systems.
To address this gap, I have led
development of a programming language, *Improv*, in collaboration with Dr. Amy LaViers 
and the RAD Lab in MechSE, as well as Dr. Mattox Beckman (who often teaches CS 421, Programming Languages).

The language allows users to build up movement sequences out of motion primitives and *choreographic* spatial and temporal operators, such as
*reverse* or *reflect*. Users can prototype these movement sequences in a live
development loop that compiles instructions to ROS messages and thus supports 
multiple backends such as Gazebo simulations or a physical robot in the lab. 
We have published this work at MOCO 2018 [@nilles2018improv]. Now, user studies are
underway to test our hypothesis that compositional movement generation and live
coding lead to more usable control of underactuated systems than low-level APIs. The
next step of this project is to add more motion primitives to include compliant interactions with
the environment and other robots.

\textbf{Future work:}
My research goals are to continue developing our
understanding and control of minimalist robotic systems. One key part of this 
work is to develop high-level abstractions and programming languages to make 
control of such systems easier and more robust. Another key part is applying our
techniques to domain-specific tasks, such as determining the minimal 
control required to ensure that robots drifting on ocean or air currents can
effectively monitor coral reefs or forests, or navigating in 
communication-constrained environments such as Mars or the deep
ocean.


**References:**

\footnotesize
