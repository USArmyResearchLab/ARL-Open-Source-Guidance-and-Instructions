ARL_rapid_form_maker
--------------------

ARL_rapid_form_maker is an internal tool to rapidly create forms via a web
interface.  Form designers can drag and drop various interface elements onto a
form that they build, then tag the input elements with the type of data that
will be filled into that element.  An example would be a text box with the tag
"Person name".  The tag is used as a key when looking up information in a
database; users can search for all people with the "Person name" of "Alice" in
the database.

The problem with this approach is that different form designers may use
different tags for the same information; for example "Child name", "Person
name", and "Individual" are all reasonable tags for information concerning a
person's name.  When this happens, it becomes difficult to cross-correlate
information across forms.  If everyone used uniform tags for the same pieces
of information across all forms, then it would be possible to flow information
from one form into the next form; it would even be possible for users to have
personal databases that would fill out the form contents automatically when
the form was first brought up.  Unfortunately, developing a uniform set of
tags for all possible situations is practically impossible; there are too many
possible situations that require new tags, and the list would be unmanageably
large.

ARL_rapid_form_maker has a pragmatic solution to the above problem, which is
why it is different from all the other tools on the market.
ARL_rapid_form_maker has an automatic background machine learning process that
scans the data entered into all forms in the system.  If it notices that the
same or similar data keeps being entered into fields with different tags, it
will notify form designers that created the tags of their similarity and ask
them if the tags should be fused.  The designers can then work together to
decide which, if any, of the set of tags should be fused together.  Tags can
also be marked as "unfuseable", so that  the system not only won't fuse them,
it won't ask about fusing them again in the future.  Sets of tags that are
fused are then replaced with one commonly agreed upon tag in a manner that is
transparent to the end user.  This would allow "Individual" and "Person name"
to be fused as "Person name", while marking "Child name" as unfuseable,
keeping the distinction between parents and children.

Reason for review
-----------------

Significant engineering work has been done since the last major review that
the authors want documented for their performance metrics.

Primary accomplishment of this release
--------------------------------------

This is the second release of ARL_rapid_form_maker.  It does not add any new
features.  Instead, it is a collection of bug fixes and engineering changes
that makes ARL_rapid_form_maker significantly more stable, and able to be
expanded to the entire ARL workforce.  Since the last release, 297 issues were
resolved, including 45 that would crash the system or cause a loss of data. As
ARL_rapid_form_maker has been transitioned to numerous users, becoming a tool
that is used in day-to-day work, this engineering work has been critical in
ensuring that users have no downtime.

Impact
------

* Significant improvement in ARL's internal paperwork processing.
  Administrative staff regularly cite it as being one of the most useful tools
  they've encountered.
* Cited by __Government IT Worker Magazine__ as one of the most innovative new
  developments in IT in the past 15 years.
* Transitioned to multiple partners including the U.S. Department of Veterans
  Affairs, the U.S. Department of the Army, Defense Advanced Research Projects
  Agency, the United States Social Security Administration, and the
  United States Department of Energy.

List of contributors:
---------------------

Alice B. Chandler, alice.b.chandler.civ@mail.mil, US Army Research Laboratory
    Lead developer.  Was a US Government employee during all development of
    ARL_rapid_form_maker.

Douglas E. Fraunhofer, douglas.e.fraunhofer@some.company.com, Some Company, Inc.
    Test and documentation.  Worked for Some Company, a contractor for US
    Army Research Laboratory.  Contract number 12345.  Some Company has
    executed the DFARS Special Works Clause and assigned all copyright to all
    of their work associated with ARL_rapid_form_maker to the
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

ARL_rapid_form_maker is distributed under the Apache 2.0 license,
which can be found at
https://github.com/USArmyResearchLab/ARL_rapid_form_maker/blob/master/LICENSE.txt.

List of inventions:
-------------------

There are no new inventions in this release; all inventions were disclosed in
prior releases.
