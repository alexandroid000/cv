---
geometry: margin=2.0cm
fontsize: 10pt
template: res_template.latex
header-includes:
    -   \hypersetup{ colorlinks=true, linkcolor=cyan }
    -   \setlength{\parindent}{16pt}
    -   \setlength{\emergencystretch}{3em}
    -   \usepackage{titlesec}
    -   \titlespacing{\section}{0pt}{0pt}{-3pt}
    -   \titleformat*{\section}{\large\bfseries}
    -   \titlespacing{\subsection}{8pt}{-5pt}{-5pt}
    -   \titleformat*{\subsection}{\bfseries}
    -   \titlespacing{\subsubsection}{8pt}{-5pt}{-3pt}
    -   \titleformat*{\subsubsection}{\bfseries}

    -   \usepackage{enumitem}
    -   \setlist[description]{font=\normalfont,style=multiline,leftmargin=3cm,
                    labelindent=\parindent}
...

\pagenumbering{gobble}

ALEXANDRA (ALLI) NILLES
=======================

Contact:
:   nilles2@illinois.edu
:   [My website](http://alexandroid000.github.io/)

Status:
:   PhD Student at UIUC CS Department
:   Advisor: [Steve LaValle](http://msl.cs.uiuc.edu/~lavalle/)

Interests:
:   Developing useful and mathematically sound abstractions for robot design and
control. Applying new developments in programming languages and formal methods
to robotics software tools.

EDUCATION
=========

University of Illinois (UIUC) (Urbana-Champaign, IL)
----------------------------------------------------

Degree:
:   PhD in Computer Science

Dates:
:   Aug 2015 - present

Colorado School of Mines (CSM) (Golden, CO)
-------------------------------------------

Degree:
:   B.S. in Engineering Physics
:   Minor in Computational and Applied Mathematics
:   Minor in Public Affairs, from McBride Honors Program

Dates:
:   August 2011 to May 2015

GPA:
:   3.93

SKILLS
======

Programming:
:   Skilled in Haskell, Python, C++, embedded programming (mBed, Arduino),
    MatLab, Mathematica, parallel computing (OpenMPI, OpenMP), shell scripting.
    Comfortable learning new languages.

Experimental:
:   Comfortable with electronics prototype design and construction. Familiar
with electronics lab equipment (oscilloscopes, multimeters, soldering, etc),
safety, and troubleshooting techniques.

Computing:
:   Experience in Linux (several distributions, comfortable with the command
line), \LaTeX, Git, Pandoc, and high performance computing clusters (with Slurm
and PBS scheduling software)

Teaching:
:   Paid tutor at Colorado School of Mines math learning
    center. Volunteer tutor at Python, Linux, and high-performance computing
    help sessions in the physics department.

RESEARCH
========

### Motion strategies for "bouncing" robots

Description:
:   Imagine a robot that can travel in straight lines until it collides with a
wall, then turns to a heading relative to the wall normal before setting off
again. By controlling the "bounce angle," we can design motion strategies that
maximize "spreading" or "ergodicity" of the robot dynamics. Conversely, we can
also design strategies that limit the uncertainty in the robot's dynamics as it
converges to an attractor, for certain classes of environments. Work is ongoing.

Dates:
:   January 2016 - present

### Petronics internship: Development of small, agile mobile robot

Description:
:   Over the summer, I worked with Petronics to develop hardware and
software for their mobile platform. I helped add a wifi module to the robot
which streamed data to a ROS server, which I also helped set up and configure. I
wrote software for collecting and analyzing the resulting data. The goal was to
compare streaming pose estimates from the robot with a ground truth from a
motion capture system (also ROS-integrated), to analyze how the robot slipped on
different surfaces and learn better controllers.

Dates:
:   May 2016 - August 2016

### Rolling robot motion tracking

Description:
:   Combined an Arduino Pro Micro, LiPo battery, SD card reader/writer, and 9
    DoF IMU into a stand-alone unit that is very small (approximately 4x2cm) and
    logs data at about 500 Hz. Wrote [introductory
    guide](https://github.com/alexandroid000/imu) to the design and construction of
    the unit.
:   Took gyro data from sensor fixed to the inside surface of a rolling robot
    and integrated, combined with physical constraints to reconstruct the path
    of the robot through the room.

Dates:
:   August 2015 - Jan 2016

### UC Davis REU: Implementing Predicted Information Gain Algorithms

Description:
:   While working in Dr. Jim Crutchfield's group, I successfully implemented an
    information-theoretic learning algorithm for exploratory robots with limited
    sensing capabilities. I also researched ways to include more memory in the
    learning algorithm.

Dates:
:   June - Aug 2014

### Senior Design: Computational Modelling of Coherent Transport

Description:
:   Researched and modeled the influence of molecular structure on exciton
    dynamics. Identified structural properties which extend coherent lifetimes
    in multi-site transport; documented research and passed on to a new senior
    design student. Worked with Dr. Mark Lusk in the Physics department at CSM.

Dates:
:   April 2013 - May 2014

EMPLOYMENT
==========

### Colorado School of Mines Math Learning Center

Description:
:   Tutor five hours a week for all classes in Math department.  Primarily
    calculus, differential equations, and linear algebra.

Dates:
:   Jan 2015 - May 2015

### North American Network of Science Labs Online (NANSLO)

Description:
:   Developed, monitored, and troubleshot remote-controlled robotic physics,
    chemistry, and biology experiments for college students in online classes.
    Served as a TA and equipment technician while classes were running.

Dates:
:   Feb 2012 - May 2014

### Institute of Electrical and Electronics Engineers (IEEE)

Description:
:   Researched smart grid data management and policy alternatives; published an
    overview and policy recommendation in the *WISE Journal of Engineering and
    Public Policy*. Was part of the Washington Internships for Students of
    Engineering (WISE) program.

Dates:
:   June - Aug 2013

PUBLICATIONS/TALKS/WORKSHOPS
==================

-   "Periodic Trajectories of Mobile Robots," 2017 IEEE/RSJ
    International Conference on Intelligent Robots and Systems (IROS).
-   "Minimality and Trade-offs in Automated Robot Design." Organizer for 2017
    Robotic Science and Systems (RSS) Full-Day workshop. July 16 2017.
    [Website](http://minimality.mit.edu/)
-   "Interesting Trajectories of Mobile Robots in Polygons," talk given at the
    2017 Midwest Robotics Workshop (MWRW). May 18 2017.
    [Slides](http://alexandroid000.github.io/media/mwrw_talk.pdf)
-   "New Developments in Combinatorial Data Structures and Algorithms for
    Robotic Planning, Filtering and Design." UIUC Theory Seminar,
    October 3 2016.
    [Slides](http://alexandroid000.github.io/media/theory_sem.pdf)
-   "Case Studies in Robotics Toolchains." Robotics@UIUC internal seminar,
    September 9 2016.
    [Slides](http://alexandroid000.github.io/media/toolchains.pdf)
-   "Teaching the Smart Grid: Why Data Management is Essential to the
    Future of Electricity," [WISE Journal of Engineering and
    Public Policy.](http://www.wise-intern.org/journal/2013/documents/NillesFinalpaper.pdf)
-   “Partially Coherent Transport: Computational Analysis and Overcoming
    Anderson Localization," 2014 CSM Physics poster session.
    [Poster](http://alexandroid000.github.io/media/NillesPoster.pdf)

HONORS
======

-   Saburo Muroga Endowed Fellowship, UIUC CS Department. \hfill 2015-2016
-   Physics Faculty Distinguished Graduate Award, CSM. \hfill May 2015
-   Leo Borasio Outstanding Junior Award, McBride Honors Program, CSM. \hfill May 2014
-   President’s Undergraduate Scholarship, CSM. \hfill 2011-2015
-   ECC Women’s Leadership Group Scholarship. \hfill 2011

SERVICE
=======

-   Head of student committee organizing an internal Robotics@UIUC seminar (Fall
    2016).
-   Founding member of Equality Through Awareness (ETA), a group promoting
    diversity in STEM through discussion, mentoring, and invited speakers.
-   Society of Physics Students - participated in outreach events such as
    travelling to local elementary/middle schools to do science demos and
    promote interest in physics
