---
bibliography: /home/alli/common/refs.bib
geometry: margin=1in
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

Robots such as wheeled ground mobile robots and flying drones are becoming
general-purpose tools for human endeavours such as monitoring forests, oceans,
or construction sites; delivering cargo in warehouses and in our cities; and
cleaning our houses. We can imagine an informal spectrum of "complexity" of such
robots, including design factors such as sensor and actuator power, 
communication requirements, and algorithmic space and time requirements. 
On the low-complexity end of the spectrum, mobile robots often
use reactive or random strategies (such as the original vacuuming
robots). These techniques can provide asymptotic guarantees on tasks such
as space coverage, but these robots are often specialized to one task and do not
recover well from failure modes (as shown by the many online videos of vacuuming
robots stuck on cords or in corners). On the high-complexity end of the
spectrum, robots use power- and data-intensive techniques such as GPS
navigation, computer vision, and/or SLAM. When applied indiscriminately, these
technologies can be unnecessary for the task and introduce complex "moving
parts" in hardware and software that have their own
difficult-to-understand failure modes. If we want to move mobile robot
technologies toward being more reliable and efficient, more work must be done in
the analysis and development of mobile robot systems that use
the minimal amount of model complexity, sensing, computing, communication, 
and actuation to achieve tasks with well-characterized responses to component 
failure or environment changes.

**Research Question:**

What guarantees can we prove about the robustness of path-dependent tasks performed by
underactuated mobile robots? Singleton robots and multi-robot systems.

What is the dependence of task satisfiability and robustness on complexity of model structure, 
sensing requirements, strategy complexity?

What types of abstractions most effectively balance robust guarantees with
system usability? Need to choose both "nouns" and "verbs" to enhance human
understanding of systems and human creative capacity.

**Related Work:**

- LaValle (comparing power of robots, sensor lattice, bouncing robots)
- Censi (codesign)
- egerstedt (MDLe, strategy complexity, collisions as info sources)
- Shell and O'Kane (automatic filter reduction / language-theoretic approach)
- Shell (clustering)
- Nagpal, Petersen, Klavins (robust group behavior from simple rules)
- Murphey (ergodicity, emergence, compliance)
- other compliance / funnelling


\textbf{Robust nondeterministic mobile robot strategies from boundary
interactions:} Many different mobile robot platforms have the capability to move
forward indefinitely until encountering an environment boundary. We treat these
types of systems as underactuated robots, where our only control input is the
type of reorientation "rule" the robot should follow when it encounters a boundary.
Despite its ubiquity, this motion model has not yet been seriously considered by robotics
researchers. Our major contribution so far has been to characterize the
properties of the dynamical system created by iterating the same 
boundary interaction rule indefinitely; we have focused on characterizing
stabilizing limit cycles and their basins of attraction. Since robots rarely
rotate or translate perfectly, we can then include nondeterminism in our motion
model and find strategies which use limit cycles to reduce uncertainty in the
robot's state. Using this dynamical information, as well as geometrical
structure of environments, we can create strategies for these robots which
switch between boundary interaction rules to accomplish tasks such as navigating
and patrolling in nonconvex polygonal environments. In the nondeterministic case, our synthesis algorithms provide feedback on how
accurate the robot's actuation needs to be in order to successfully accomplish
the task.

We are now incorporating these results on path dynamics, along with different
sensor models, into algorithms that
synthesize strategies for more complex tasks such as localization and coverage. 
The long term goal with this project is to combine our results with formal methods
tools to create automated mobile robot system design and verification tools, where the
user can input an environment and a task specification and explore different 
mobile robot system design options.

\textbf{Robust nondeterministic self-assembly from robot-robot
interactions:} In environments such as outer space or at micro- and nano-scales,
we are investigating how extremely underactuated robots may complete tasks such
as self-assembly and collective manipulation. By "extremely underactuated," we
mean robots such as micro-scale self-propelled particles [@bechinger2016active]
that may be
influenced by external fields or other "mode switching" controls, but their
movement is dominated by stochastic effects.

We would like to achieve useful global structure or dynamics with minimal
information processing, through local structures and coarse global controls.
Along this line, I am mentoring a team of undergraduates who are developing a
low-cost platform for studying related algorithms, along with a software toolbox
for analysis and design of these systems. We use off-the-shelf motorized
spherical toys which we call "wild bodies," due to their highly nonlinear
dynamics, dynamics which are analogous to how micro-scale self-propelled
particles move. We are also developing 3D-printed hubs, powered by the wild
bodies, that can alter the ball's dynamics (through weight and friction), house
simple sensors, and attach and detach from each other. This hardware platform,
along with a simulation and analysis toolbox, are allowing us to investigate
design and control techniques for self-assembly and collective manipulation.

The main challenge is creating control synthesis algorithms that act over an
entire "ensemble" of robots, instead of controlling individual agents. We are
using a mixture of data-driven models such as Markovian models and "active
Brownian motion" models to predict spatial density of agents, as well as
reaction kinetics and dynamics to model the assembly and disassembly of agents
[@zhang2015toward].
So far, we have demonstrated the ability of these agents to cluster objects in
their environment through mechanical interactions, at different rates
depending on ensemble velocity and density. We are also characterizing
how the rate at which agents attach and detach from each other affects local
density of the agents and ensemble characteristics. The
long-term goals of this research are 1) to refine our theoretical guarantees about
system behavior, including using information and game-theoretic approaches; 2) 
find natural discrete modes of the system which lend themselves well to user
interface design; and 3) apply our analysis and control techniques to "synthetic cells":
micro-scale particles with very limited onboard sensing and computation, which
are being developed to assist with biological research and micro-scale
manufacturing.

\textbf{A high-level compositional movement design tool:} The third component of
my research focuses directly on interfaces for control of underactuated robots.
This tool interfaces with ROS (Robot Operating System), the prevailing control
architecture in robotics. While ROS is a powerful open-source toolset and is
immeasurably valuable to the community, the user interface can be quite
inefficient (and intimidating for newcomers to programming and robotics).
Additionally, most ROS libraries are structured around low-level controllers for
robot systems, such as joint-angle controllers or velocity setpoints. When
controlling underactuated systems, different programming paradigms are needed.

My tool is a high-level programming language; instructions in this language are
translated to ROS messages when executed. The language uses *choreographic*
spatial and temporal combinators and transformers, such as *reverse* or
*reflect*, to allow users to build up movement sequences out of
motion primitives that can be executed by an underactuated robotic system.
Users can prototype these movement sequences in a "live" development loop
which uses Gazebo or other ROS-integrated simulators to visualize the effects of 
commands in real time. Compositional movement generation and
live coding are two features that are specifically geared toward control of
underactuated systems, where 

\textbf{Future work:} My future goals are to continue exploring formal
guarantees on robot behavior, apply these results to robotic software tools
(especially interactive design tools) and use hardware experiments to verify the
theory. I also plan to extend my work on robot-environment interaction and
robot-robot interaction in 2D environments to aerial robots in 3D. Much of my
research is in collaboration with undergraduates, and continuing to mentor
students is one of the aspects of an academic career that I look forward to the
most.

<!--
Robotics is a
unique field in that it asks fundamental questions about the universe and
affects mundane details of people's everyday lives.

Having fewer "moving parts" on a robot (whether actual moving parts, or sensors,
or amount of computational state) can lead to more robust designs.
-->
