ARL_libmobile_network_simulator
-------------------------------

ARL_libmobile_network_simulator is an event-based simulator for simulating the
communications between swarms of robots as they move through a dynamically
changing environment.  This review is for the third major release of the
library.  Since the last major review, the following features have been added:

* Dynamically distributed to heterogeneous computational assets. Version 2 of
  ARL_libmobile_network_simulator introduced distributed  simulation, but
  required all computational assets to be the same to gain the most benefit
  from distribution.  Version 3 has relaxed this requirement such that assets
  as diverse as supercomputers and smart phones can all be added to the pool
  of workers and still gain benefit from distributed simulation.
* Vastly improved serialization and deserialization of executing  simulations.
  Version 1 of ARL_libmobile_network_simulator provided the ability to capture
  simulation data at the end of a run, and Version 2 provided the ability to
  take snapshots at user-defined points in time (e.g. once per minute).
  However, both of these methods fell short; in version 1, if a crash
  occurred, then all simulation results were lost. In Version 2, the user had
  to guess how long to wait between taking snapshots; too short a time frame
  meant that an excessive amount of time was spent taking snapshots, while too
  long a time frame meant that users would have to roll back a significant
  time period to restart the simulation. In Version 3,
  ARL_libmobile_network_simulator we have rewritten how events are state data
  are stored so that it is possible to log state in a distributed manner.
  Should any (or even all) the nodes in a simulation fail, it is possible to
  recover the last known good state rapidly; in tests on up to 300 simulation
  nodes the maximum loss suffered was 10.3 seconds of simulation time.The
  techniques used could be patented, but we believe that it would be better to
  waive all rights to them and release them to the community.
* Significant software engineering improvements.  Critical components of the
  library were rewritten in Rust from C++, solving certain race conditions
  that were hard to find and eliminate in C++.  Documentation was improved,
  including the addition of 25 new example projects showing how to use the
  library.

List of contributors:
---------------------

Alice B. Chandler, alice.b.chandler.civ@mail.mil, US Army Research Laboratory
    Lead developer.  Was a US Government employee during all development of
    ARL_libmobile_network_simulator.

Douglas E. Fraunhofer, douglas.e.fraunhofer@some.company.com, Some Company, Inc.
    Test and documentation.  Worked for Some Company, a contractor for US
    Army Research Laboratory.  Contract number 12345.  Some Company has
    executed the DFARS Special Works Clause and assigned all copyright to all
    of their work associated with ARL_libmobile_network_simulator to the
    Government.  Patent and other rights are currently unknown.

Grant H. Incredible, grant.h.incredible@university.edu, postdoctoral researcher.
    Algorithm design.  Worked as a postdoctoral researcher under ORAU
    contract 54321.  Signed an addendum to his contract to assign all
    copyright in his contributions to ARL.

Jacob K. Lang, jacob.k.lang@gmail.com, employer unknown.  Bug fixes,
    documentation fixes, etc. Executed ARL Form 266 before his contributions
    were allowed into the project.

List of external code:
----------------------

The following code samples were copied from
[Stack Overflow](https://stackoverflow.com/).  Code may be copied from
Stack Overflow under their
[Terms of Service](https://stackexchange.com/legal/terms-of-service), which
states that all subscriber generated content can be reused under the terms of
the [Creative Commons Attribution Share Alike](https://creativecommons.org/licenses/by-sa/3.0/)
license.

* TCP server in rust -
  https://stackoverflow.com/questions/17445485/example-tcp-server-written-in-rust/17689618#17689618

The following libraries are included with the distribution

* OpenDDS version 3.11 - http://opendds.org/. The license can be found at
  https://github.com/objectcomputing/OpenDDS/blob/master/LICENSE.

* libyaml - https://github.com/yaml/libyaml.  MIT License.
  https://github.com/yaml/libyaml/blob/master/LICENSE

* ARL_libintrusive - https://github.com/USArmyResearchLab/ARL_libintrusive.
  Distributed under the Apache 2.0 license, which can be found at
  https://github.com/USArmyResearchLab/ARL_libintrusive/blob/master/LICENSE.txt


OSI-approved license:
---------------------

ARL_libmobile_network_simulator is distributed under the Apache 2.0 license,
which can be found at
https://github.com/USArmyResearchLab/ARL_libmobile_network_simulator/blob/master/LICENSE.txt.

List of inventions:
-------------------

We (Drs. Chandler, Frauhofer, and Incredible) have co-invented a new method of
resolving conflicts in distributed databases that leverages work on conflict
free replicated data types (CRDTs).  The new method is similar to rsync, but
requires fewer rounds of communication, and can be used efficiently in a
wireless environment.  Although the method is novel and therefore patentable,
patenting it will reduce research in the area, hobbling acceptance.  Since the
method requires further refinement, and since ARL is not currently interested
in pursuing this as a research area, it would be best to encourage others to
do the research for ARL.  By not patenting the invention, others will be able
to continue our research, potentially developing a method that would be useful
to the Army at a future date, at little or no cost to the Government.
