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
    -   \rhead{Research Statement}
    -   \renewcommand{\headrulewidth}{0.4pt}
---

\pagenumbering{gobble}

Mobile robots and flying drones are becoming general-purpose tools for
human endeavours such as monitoring forests, oceans, or construction
sites; delivering cargo in warehouses and in our cities; and cleaning
our buildings. "Simple" mobile robots use reactive or random strategies
that can provide asymptotic guarantees, but these robots are often
specialized to one task and do not recover well from failure modes such
as getting stuck. On the other hand, high-complexity mobile robots can
use power- and data-intensive techniques such as GPS navigation,
computer vision, and/or SLAM. When applied indiscriminately, these
technologies introduce unnecessary complexities in hardware and software
that are inefficient and have difficult-to-understand failure modes. If
we want to move mobile robot technologies toward being more reliable and
efficient, more work must be done in the analysis and development of
mobile robot systems that are simple enough to analyze and sophisticated
enough to avoid failure.

Specifically, I am researching formal guarantees on the robustness of
underactuated mobile robot as they move through space, for tasks such as
navigation and coverage. I am investigating the role of compliant
interactions in reducing sensing, estimation, and control requirements.
In what cases can we ensure and characterize task satisfiability and
robustness? What is the exact dependence on model structure, sensing
requirements, and strategy complexity? And in the end, can we use what
we have learned to create usable abstractions that give humans the
ability to easily understand and program useful system behaviors?

**Related Work:**

This work follows the principles of compliance and funnelling for underactuated
or nondeterministic robots; using dynamics and constraints of the physical task
as part of the solution. These ideas have been developed by Lozano-Pérez, Mason,
and Taylor [@LozMasTay84], Erdmann [@Erd86], and Goldberg [@Gol93], among many
others. The work of LaValle has used minimalism in areas such as navigation with
simple mobile robots [@TovGuiLav04] and localization [@OkaLav06], leading to
formalisms for comparing the power of different robot and sensor configurations
[@OkaLav07b]. They have also begun investigating underactuated mobile robots
[@ErLav13] and wild bodies [@wildBodies12]. The goal of automatic design tools
is heavily inspired by Censi's theory of co-design [@censi2015mathematical] and
the work by O'Kane and Shell on techniques and complexity results for automatic
reduction of plans and filters, and for analyzing their robustness to sensor and
actuator failure [@SabGha+19] [@OKaShe17]. Egerstedt and collaborators have
investigated related questions in compositional motion description languages
[@mdle] [@egerstedt2002specification]. Their work also extends to
collision-based localization for multi-robot systems [@mayya2018localization].
My work is also related to robot swarm and self-assembly researchers such as
Nagpal, Petersen [@petersen2017complex], Klavins, Ghrist, and Lipsky
[@klavins2006], and Kim and Shell [@kim2015new]. Murphey has also recently begun
work on creating minimal-complexity controllers for micro-scale particle systems
[@syncells], and has related work in underactuated robots. My research ties in
with these areas through three main projects: two on the dynamics of
underactuated mobile robotics systems, inspired by commercially available vacuum
cleaning robots and micro-scale particles; and one on programming language
constructs which allow humans to interface easily with such systems.

\textbf{Robust nondeterministic mobile robot strategies from boundary
interactions:} Many different mobile robot platforms have the capability to move
forward indefinitely until encountering an environment boundary. Using this
reactive model, our only control input is the type of reorientation "rule" the
robot should follow when it encounters a boundary. Despite its ubiquity, this
motion model has not yet been seriously considered by robotics researchers. Our
major contribution so far has been to characterize the properties of the
dynamical system created by iterating the same boundary interaction rule
indefinitely. Since robots rarely rotate or translate perfectly, we can then
include nondeterminism in our motion model and find strategies which use limit
cycles to reduce uncertainty in the robot's state. Using this dynamical
information, as well as geometrical structure of environments, we can create
strategies for these robots which switch between boundary interaction rules to
accomplish tasks such as navigating and patrolling in nonconvex polygonal
environments. In the nondeterministic case, our synthesis algorithms provide
feedback on necessary conditions on actuation uncertainty for successful plan 
execution under nondeterminism.

We are extending these results toward algorithms that synthesize strategies for
more complex tasks such as localization and coverage with different sensor
models. The long term goal with this project is to allow the user to input an
environment, task specification, and robot design constraints and explore
controllers and robot designs that are verified to complete tasks under
uncertainty.

\textbf{Robust nondeterministic self-assembly from robot-robot
interactions:} 
Inspired by micro-scale self-propelled particles [@bechinger2016active], we are
designing underactuated robots for tasks such as self-assembly and collective
manipulation. These agents have "mode switching" controls, but their movement is
dominated by stochastic, uncontrollable, yet structured dynamics. Can we
determine the minimal information processing needed to accomplish tasks with
only local interactions and coarse, global control?

Towards this, a team of undergraduates and myself are developing a low-cost
testbed platform and a software toolbox for analysis and design of these
systems. With off-the-shelf motorized spherical toys which we call "wild
bodies," we can power 3D-printed hubs that can house simple sensors and attach
and detach from each other. The resulting robots act very similarly to the
micro-scale particles but are much easier to manufacture and observe. Our
software library analyzes videos of the robots and fits the resulting trajectory
data to different motion models. We also have developed a physics-based
simulator and a lower fidelity particle simulator that allow us to experiment
with design choices before committing to hardware.

These tools help us develop control techniques for self-assembly
and collective manipulation. The main challenge is creating control synthesis
algorithms that act over an entire "ensemble" of robots, instead of controlling
individual agents. We are using data-driven models to predict spatial density of
agents in different modes, as well as reaction kinetics and dynamics to model
the assembly and disassembly of agents [@zhang2015toward]. So far, we have
demonstrated the ability of these agents to cluster objects in their environment
through mechanical interactions, at different rates depending on ensemble
velocity and density. The long-term goals of this research are to 1) refine our
theoretical guarantees about system behavior, using information and
game-theoretic approaches; 2) find natural discrete modes of the system which
lend themselves well to user interface design; and 3) apply our analysis and
control techniques to micro-scale particles to assist with biological research
and micro-scale manufacturing.

\textbf{A compositional movement design tool:} The third component of
my research focuses directly on interfaces for control of underactuated robots.
This tool interfaces with ROS (Robot Operating System), the prevailing control
architecture in robotics. While ROS is a powerful open-source toolset, the user 
interface can be quite
inefficient (and intimidating for newcomers to programming and robotics).
Additionally, most ROS libraries are structured around low-level controllers for
robot systems, such as joint-angle controllers or velocity setpoints. When
controlling underactuated systems, different programming paradigms are needed.

I have led development of a programming language that translates instructions to 
ROS messages. The language allows users to build up movement sequences out of
motion primitives and *choreographic*
spatial and temporal operators, such as *reverse* or
*reflect*.
Users can prototype these movement sequences in a live development loop that
supports multiple backends such as Gazebo simulations or a physical robot in the
lab.
User studies are underway to test our hypothesis that compositional movement
generation and live coding lead to easier control of underactuated systems than
low-level APIs.

\textbf{Future work:} My future goals are to continue developing our
mathematical formalisms for minimalist and underactuated robotic systems and
extend high-level abstractions and programming languages to make control of
such systems easier. I am specifically interested in applications in
environmental monitoring and conservation efforts. Much of my
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

**References:**
