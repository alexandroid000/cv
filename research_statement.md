---
bibliography: /home/alli/common/refs.bib
geometry: margin=2cm
---

As a young robotics researcher, it still amazes me to realize the changes that
have swept the field in recent history - the increasing capabilities of hardware manufacturing,
computational systems, and new sensors are transforming robots from academic
curiousities and constrained factory tools to a real technology which will
have impacts on many facets of our human experience. I feel incredibly lucky to be
beginning my career now, and also feel compelled to structure my research around
the development of robotics as a field in itself, by tackling fundamental
questions about the nature and capability of robotic systems.

My primary research goal is to improve the state-of-the-art abstractions and
tools for modelling, programming and making guarantees about the behavior of
robotic systems. Specifically, I approach this broad goal through the lens of
*minimality* - by exploring what tasks can be completed by robots with very
limited sensing, actuation, and computational capabilities, we gain a better
understanding of the fundamental informational requirements of robot tasks. We
are also forced to more carefully define what robotic *tasks* are, and how they
can be defined in a platform-invariant way.

I am also very interested in the robot design process itself,
and my research aims to enable human designers to think about and express robot
designs at a higher level, enhancing human creative capacity and making these technologies
more accessible.

Towards these goals, I have several ongoing research projects.

**Bouncing Robots**

An 

**Aggregation**

**Improv**

On the modelling side, I am looking at geometric and discrete dynamical systems
models for high-level control of mobile robots. I have submitted a paper to
IROS, and will be presenting at the Midwest Robotics Workshop, on a project
where we are analyzing the dynamics of a robot which can move in straight lines
and rotate itself to align relative to the normal vector at an environment
boundary. By finding limit cycles and other stable dynamics, we can use very
simple control laws which cause the robot to "patrol" the space and aid in
localization (by restricting what parts of the space the robot can be present in
after a certain number of collisions with the boundary). By finding chaotic or
unstable regions of the robot's dynamics, we can make "exploratory" algorithms
and make guarantees about how well the robot will cover the space.

I am also developing a project, in collaboration with Amy LaViers of the
Mechanical Engineering department, which is a high-level programming language
for describing and controlling robot motion. This tool aims to be an easy-to-use
interface for ROS (Robot Operating System), the prevailing control architecture
in robotics. I am focusing on principled design of motion composition operators
and motion transformations, taking guidance from the movement analysis and
dance communities.

In the future, I am planning to incorporate formal methods techniques such as
bounded model checking and SMT solvers to more quickly explore the "space" of
mobile robot designs. I also would like to use formal methods in my programming
languages projects, to synthesize physically realizable robots and control
algorithms from high-level specifications given in the language I am developing.
To this end, I am helping organize an RSS workshop this summer titled
"Minimality and Trade-offs in Automated Robot Design" with Jason O'Kane, Hadas
Kress-Gazit, and Andrea Censi.

**Future Work**
