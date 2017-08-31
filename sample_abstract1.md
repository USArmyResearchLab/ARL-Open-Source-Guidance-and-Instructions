ARL_libintrusive
----------------

This project contains a small set of intrusive data structures in the C
programming language.  Intrusive data structures are data structures that
insert some amount of information into each element that they store.  They
have a number of advantages:
* Fewer heap allocations, potentially increasing speed.
* Improved data locality, again potentially increasing speed.
* Trivial cross indexing; it is possible to traverse 'down' one data structure
  to an element, and then travel 'up' a different data structure with only
  constant time lookups to transition from one data structure to the other.
  This requires significant effort when using extrusive data structures.

This is the first time this library has been proposed for release.

List of contributors:
---------------------

Alice B. Chandler, alice.b.chandler.civ@mail.mil, US Army Research Laboratory
    Lead developer.  Was a US Government employee during all development of
    ARL_libintrusive.

Douglas E. Fraunhofer, douglas.e.fraunhofer@some.company.com, Some Company, Inc.
    Test and documentation.  Worked for Some Company, a contractor for US
    Army Research Laboratory.  Contract number 12345.  Verbally agreed that
    his work on ARL_libintrusive was intended to create a unified joint work.

Grant H. Incredible, grant.h.incredible@university.edu, postdoctoral researcher.
    Algorithm design.  Worked as a postdoctoral researcher under ORISE
    contract 54321.  Signed an addendum to his contract to assign all
    copyright in his contributions to ARL.

List of external code:
----------------------

All code was written by the above contributors; no external projects are being
distributed with ARL_libintrusive, and no external code (code not written by
the above three contributors) has be incorporated into the library.


OSI-approved license:
---------------------

The authors all agree that all works related to ARL_libintrusive that have
copyright attached should be licensed under the Apache 2.0 license, and that
all  contributions that have copyright attached should be licensed to ARL
under the Apache 2.0 license.

List of inventions:
-------------------

There are no patentable inventions in the library.  All algorithms that were
used have already been published.  The primary work done was developing a
standard API, good documentation, tests, and example code.  Dr. Incredible
made some obvious algorithmic improvements that cannot be patented.
