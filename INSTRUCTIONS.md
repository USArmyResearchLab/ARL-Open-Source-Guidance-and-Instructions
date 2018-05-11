# Instructions

# Table of Contents

* [Instructions for Government Employees](#32B21988C17C11E687F7003EE1B763F8)
    * [Major Reviews](#3449D4BEC17C11E68DD1003EE1B763F8)
        * [Informal Approval](#37D9C8B4C17C11E6AE38003EE1B763F8)
        * [Complete ARL Form TBD](#FBD310E6377C11E891F1003EE1B763F8)
            * [Code Cleanup and Release Preparation](#3981656EC17C11E6B2AE003EE1B763F8)
            * [Write An Abstract To Be Filed with ARL Form TBD](#4066B47EC17C11E6BFC7003EE1B763F8)
            * [Level 1 OPSEC Review](#FD7CE8AE545511E8A015A8968AF26C7C)
            * [Supervisor Review](#EDD1767A545711E8B3C0A8968AF26C7C)
            * [Intellectual Property Review](#45A6CE62C17C11E6A6C0003EE1B763F8)
            * [Invention Evaluation Committee (IEC) Approval](#433214A2C17C11E6952E003EE1B763F8)
            * [Repository Creation on GitHub](#3F226F34548511E8AE39A8968AF26C7C)
    * [Minor Reviews](#4ADBEADCC17C11E6B9BC003EE1B763F8)
    * [Incorporating External Contributions](#4D5F4B34C17C11E6ADBB003EE1B763F8)
    * [A Note on Impact and Metrics](#E35C9838545611E88F19A8968AF26C7C)
        * [Evidence of Impact](#5092761CC17C11E6B23A003EE1B763F8)
        * [Software Maturity and Software Engineering](#53A23266C17C11E6BEEE003EE1B763F8)
* [Instructions for Contractors](#F0D2571854AC11E89E58A8968AF26C7C)
* [Instructions for External Contributors](#722E5CD854B111E8B298A8968AF26C7C)
* [ARL Contributor License Agreement (CLA)](#D3DC705AC3C411E6BBB4003EE1B763F8)
* [Footnotes](#93338EDCC17C11E6B720003EE1B763F8)
* [Glossary](#81FF232254B411E8B256A8968AF26C7C)

# <a name="32B21988C17C11E687F7003EE1B763F8"></a>Instructions for Government Employees

These instructions MUST be followed when ARL personnel release software to, or
accept contributions from, the general public.  If a project does not yet have
any software associated with it (such as when a project is being initially
formulated) and the project is intended to be released to the general public,
then this process MUST still be followed.

## <a name="3449D4BEC17C11E68DD1003EE1B763F8"></a>Major Reviews

The major review process MUST be followed if any of the following are true:

* This is the first release of the project.
* It has been more than 1 year since the last time a major review has been
  done and the project is still active (material is being published to the
  public by ARL employees).
* The principal developer(s) feel they have accomplished something of note and
  wish to get credit for it in their performance metrics.
* The project's scope has changed sufficiently that any of the principal
  developers, their OPSEC officers, or anyone in their chains of command
  believe a new one ought to be filed.
* There are legal issues that need to be reviewed.
* New inventions (inventions that have not already been disclosed in a prior
  major review) are being described.
* The project is being archived.  In this case, this is likely to be the final
  review of the project.
* A project that was archived is being restarted.

### <a name="37D9C8B4C17C11E6AE38003EE1B763F8"></a>Informal Approval

Before developer(s) release software, they MUST obtain informal approval from
their supervisor(s).  If their supervisor(s) do not approve release of the
software, then the software MUST NOT be released.  Do not continue with this
process.  When deciding if a project can be released, review the section
[Issues Related to Releasing Source Code](#25060DEEC17C11E6B53F003EE1B763F8)
to decide if it will be possible to release the code.  If you have questions,
consult ARL's Chief Counsel's Office for help.  Projects that cannot be given
a release statement of "Approved for public release; distribution unlimited"
MUST NOT go through this process.

### <a name="FBD310E6377C11E891F1003EE1B763F8"></a>Complete ARL Form TBD

[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) is used to perform a
Major Review.  **The guidance in this section supplements the instructions in
that form.**  The guidance here is intended to explain and expand
understanding, it is not intended to replace the instructions in
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf).

#### <a name="3981656EC17C11E6B2AE003EE1B763F8"></a>Code Cleanup and Release Preparation

On [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf), Part C, Box
1a and 1b applies to everything that is being released, including any older
commits in any repositories.  By design, repositories preserve history, which
can include material that should not be published.  It is the responsibility
of the project's developers to ensure that both the current code and any
history in any repositories that are proposed for release have been properly
scrubbed before the material is reviewed for release.  Remember that a formal
review can only be done on what is actually being released, so cleaning up the
code after the formal review is not an option.  If a project is being
formulated, but does not yet have any code associated with it, then these
questions SHOULD be used as a guide for how to write the material that is
planned for release.

All material that cannot receive a distribution statement of "Approved for
public release; distribution is unlimited" MUST be removed before continuing
with the rest of the process.  Material that SHOULD be removed includes
useless, nonfunctional, or otherwise undesirable code and other material that
shouldn't be released to the public.  Before moving forward with the rest of
the process, the project MUST be cleaned up to ensure it meets certain minimum
standards.  Software that is released to the public is similar to a
publication and SHOULD be treated like one.  The developer(s) MUST ensure that
there is no embarrassing, disparaging, or otherwise unprofessional language in
what is released. Language that would not be used in a professional journal
MUST NOT be used in software.  Direct any questions about this to the ARL
Public Affairs Office (PAO).

Where possible, it is wise to follow best practices in software engineering.
Because of the wide variety of programming languages in use, project goals,
etc., ARL wants to avoid forcing a single process on any developers or group.
For this reason, ARL has chosen a minimal set of requirements and provides
some best practice suggestions.  Individual implementation of the voluntary
portions is RECOMMENDED as they may have an effect on impact and performance
metrics.  See [A Note on Impact and Metrics](#E35C9838545611E88F19A8968AF26C7C)
for details on performance metrics.

All projects will have their material licensed under both the CC0 license, and
a license that is both approved by the
[Open Source Initiative (OSI)](https://opensource.org/) and the ARL Chief

Counsel's Office. The developer(s) MUST consult with the ARL Chief Counsel's
Office when selecting an
[OSI-approved license](https://opensource.org/licenses). All contributions
that have copyright attached MUST be licensed to ARL under the
[OSI-approved license](https://opensource.org/licenses) chosen by the
project's developer(s), and they MUST be redistributed under the same license
when the software is redistributed. Works that do not have copyright attached
MUST be accepted and redistributed under the CC0 + patent waiver license. All
contributions MUST be irrevocable under the given license. Questions about
this can be directed to ARL Legal for clarification.

Once the license is chosen, the developer(s) MUST provide copies of the
license text in a file named `LICENSE.txt` at the root of the project's
repository. This MUST contain both the text of the  [OSI-approved
license](https://opensource.org/licenses) and the CC0 license.  The
`LICENSE.txt` file MUST also contain a notice that those portions of the
material that do not have copyright attached within the jurisdiction of the
United States of America are distributed under the terms of the CC0 license,
and that all other portions of the work are distributed under the terms of the
[OSI-approved license](https://opensource.org/licenses) in the `LICENSE.txt`
file.  An example of how this can be done for the CC0 license and the [Apache
2.0](http://apache.org/licenses/LICENSE-2.0) license is given in the
[LICENSE.txt](LICENSE.txt) file of this guidance.  Preapproved licenses can be
found in the [preapproved_licenses](preapproved_licenses) directory.  Follow
the directions in the [README](preapproved_licenses/README.md) in that
directory for how to use the licenses.

The `LICENSE.txt` file MUST be a plain-text file in either ASCII or UTF-8
encoding.  The README file (described below) MUST state the name of the file
that contains the complete license<sup>[1](#Footnote_1)</sup>.  If the project
has a webpage, the licenses being used MUST be stated somewhere on the
webpage, with a link pointing to the project's `LICENSE.txt` file.

A "README" file MUST be created in the top level directory of the project. The
README file MUST be a plain-text file in either ASCII or UTF-8 encoding. The
file may be named `README`, `README.txt`, or `README.md`.  As a note, if the
developers choose to use [GitHub](https://github.com) as the distribution
method, it is RECOMMENDED that the file be named `README.md`, and that the
file be written in [GitHub-flavored
Markdown](https://guides.github.com/features/mastering-markdown/).  Throughout
this document the file will be called "README" regardless of what suffix is
used on the actual file.  The "README" file must contain at least the
following in it:

* The name of the project
* A description of the project's purpose.
* A note pointing to the license or contract covering the software.
* At least some basic documentation on how to build and use the software.
* A verbatim copy of the text given in the instructions for
  [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf), Part C, Box 1e.
  See [Incorporating External Contributions](#4D5F4B34C17C11E6ADBB003EE1B763F8)
  for more information.

In addition, the "README" SHOULD describe what valuable contributions the
principal developers would welcome from the community.  This will help the
public focus on efforts that are most likely to be accepted into the project.

While only the "README" file is mandatory, other documentation is highly
desirable.  This can include comments in the source code, high-level design
documentation, etc.  There are many methods and tools to support this type of
documentation.  Where reasonable, please document both high- and low-level
design details, as well as how the software should be used.

Example code is also a form of documentation.  If the project is a library, it
can be useful to provide small, complete, and well-documented programs that
illustrate how to use the software.  If possible, refer to publications and
projects that used or referred to this code; they can become additional
examples of how to use the code, as well as testimonials for why the code
should be used.

Unit tests are strongly RECOMMENDED.  They can not only increase confidence
that the code was written correctly, but they can also convince a user that
the code is behaving as expected on the system on which it is installed.  This
will increase the likelihood that others will be willing to use the code,
which can increase the overall impact of the project. In addition, unit tests
can serve as examples of how to use the code; this can be invaluable when a
user is trying to understand the documentation.

For legal reasons, all language talking about the project MUST be prefixed
with "ARL".  For example, if a project is named WhizBang, then all literature
in the package MUST refer to it as "ARL WhizBang" or the "ARL WhizBang
project." "ARL" is a federally registered trademark and using it in this
manner adds some degree of trademark protection to a project.

Create a file called `code.json` in the root directory of your project.  This
file MUST follow the schema described
[here](https://code.gov/#/policy-guide/docs/compliance/inventory-code).
An example of a correctly formatted
`code.json` file is provided [here](code.json).  Download and modify it to fit
your project.  You MAY use the official [code.gov](https://code.gov)
[schema validation tool](https://code.gov/#/policy-guide/docs/compliance/inventory-code/tools/validate-schema)
to verify that your `code.json` file is written correctly.

#### <a name="4066B47EC17C11E6BFC7003EE1B763F8"></a>Write An Abstract To Be Filed with [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf)

An [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) MUST be filed.
The abstract allows developers to expand on their answers to questions in
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf), as well as provide
evidence of the impact that their project has had.  This can have an effect on
the developer's performance reviews. The abstract SHOULD be relatively short,
and provide the following information:

* The name of the project.  This MAY be copied directly from the project's
  `README.md`.
* A description of the project.  This includes what it does and what its
  intended purpose is.  This SHOULD be reasonably complete without being
  excessively verbose.  Portions of the "README" file MAY be copied here.
* The list of all individuals and corporations that have made more than a 'de
  minimus' contribution to this release.'De minimus' is a legal term meaning
  'more than a minimum'; if there are questions about what meets this bar,
  consult with the ARL Chief Counsel's Office.See the instructions for
  [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf), Part C, Box 2 for
  more information on what needs to be listed here.This list can include, but
  is not limited to ARL employees, contractors, postdocs, external
  contributors, and external corportations.If you are unsure if an entity
  should be listed here, consult with the ARL Chief Counsel's Office to make a
  determination.
* Any significant accomplishments since the last time a
  [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) was filed for this
  project.  If this is the first time that a
  [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) is being filed,
  then you SHOULD put in a short explanation similar to "This is the first
  public release of this project, therefore this section is not applicable."
* A list of all material that is being distributed with the project that was
  not developed by the individuals and corporations listed earlier. This
  material is often material downloaded or copied from the internet, or may be
  copied from old code that developers had available. The licenses that govern
  each piece of material must be given so that the ARL Chief Counsel's Office
  can review it.
* A list of all software-related inventions that the developers believe
  patents could be pursued for, and reasons for why ARL should waive its
  rights to pursue a patent on each.  This will help the Invention Evaluation
  Committee decide whether it would be better to pursue patents, or waive
  ARL's rights.  If there are no software-related inventions claimed, then
  this must be noted (see [sample_abstract3.md](sample_abstract3.md) for an
  example of this).

Examples of how to write abstracts are provided in the files
[sample_abstract1.md](sample_abstract1.md),
[sample_abstract2.md](sample_abstract2.md), and
[sample_abstract3.md](sample_abstract3.md).  Note that the examples
deliberately include information that would cause ARL's Legal Counsel or the
IEC to ask further questions.  When you write your abstract, be as complete as
possible; omitting, obfuscating, or hiding information about the origins of
contributions could expose ARL to litigation.  The information in the abstract
will be used throughout the rest of this process, so it MUST be as accurate
and complete as possible.

As noted above, if this is not the first major review of this project then
developers SHOULD document the major accomplishments of this project since the
last major review was done.  This documentation provides supervisors the
information they need to give proper credit on performance reviews.  Note that
while ARL wants to credit developers for the impact the software has made, it
will not "double count" what developers have done by including the impact from
earlier major reviews.  Only the impact made since the last time the major
review process was completed for the project MAY be included.  See
[A Note on Impact and Metrics](#E35C9838545611E88F19A8968AF26C7C) for more
information about the kinds of impact statements ARL is looking for.

#### <a name="FD7CE8AE545511E8A015A8968AF26C7C"></a> Level 1 OPSEC Review

This abstract, along with everything planned on being released (software,
source code, documentation, etc.), MUST be fully reviewed by a level 1 OPSEC
officer.  If this is not an initial review, the OPSEC officer MAY choose to
only review what has changed since the last review, but both the developer(s)
and the OPSEC officer are responsible for the release as a whole.  Thus, even
if the changes are cleared for public release, if the release as a whole
cannot be cleared for release, then the changes are not cleared for release
either. To be cleared for release, the project as a whole MUST receive an
"Approved for public release; distribution unlimited" statement.

No one is permitted to OPSEC-approve material that he or she created.  This is
why there are two OPSEC signature lines in
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf), Section 2.  If one
of the OPSEC reviewers is also a developer on the project, then he or she MAY
NOT review material that he or she created; a second OPSEC reviewer must
review and sign off on that material.

ARL encourages all developers to become level 1 OPSEC reviewers.  This allows
developers to engage in modified pair or group programming, with one person
creating content and another person on the same team verifying it as it is
produced.  See the section on
[Minor Reviews](#4ADBEADCC17C11E6B9BC003EE1B763F8) for more information.

#### <a name="EDD1767A545711E8B3C0A8968AF26C7C"></a> Supervisor Review

The lead developer's first-line supervisor reviews the form and attached abstract
for the following:

* To ensure that the form and abstract have been completed correctly.
* To certify that the material being proposed for release can, to the best of
  the supervisor's knowledge, be legally released.
* To rate the impact of the project since the last time an
  [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) was filled out for
  this project.

Certification of the release is similar to signing an ARL Form 1; it is a
check that the proper steps have been taken.  Supervisors MUST review the
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) and attached
abstract. Supervisors MAY review the material proposed for release, but are
not required to.

To rate the impact of a project, review the evidence presented by the
developers in the attached abstract.  The rating SHOULD only cover the impact
since the last time an [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf)
was filed for this project.  If this is the first time the project is being
released, select the `N/A` checkbox.  More information can be found in the
section [A Note on Impact and Metrics](#E35C9838545611E88F19A8968AF26C7C).

#### <a name="45A6CE62C17C11E6A6C0003EE1B763F8"></a>Intellectual Property Review

Although ARL MAY choose to waive ARL's rights to any IP established in
software, if a developer has incorporated contributions from others, those
contributors may have rights to those contributions that restrict ARL's
ability to release the software.  Thus, before the software can be released,
the following questions MUST be addressed:

* Has every part of the proposed release been generated by Government
  employees in the course of their duties?
* If not, is there permission from all of the other rights holders to release
  all of the other parts under the project's license?

The lead developer MUST consult with ARL Legal to perform an IP review (this
review MAY be done by email or any other convenient and legal means). If there
are external contributions that were not contributed under the project's
license, then the lead developer MUST determine the license and copyright
information for each contribution. Provide these to ARL Legal for review and
final determination if the licenses are compatible with the license or
contract under which the software is being released.  If ARL Legal determines
that there are impediments to releasing the software, whatever permissions are
necessary MUST be obtained before the software is released. If it is not
possible to obtain the necessary permissions, then the software MUST NOT be
released.  Do not continue with the rest of this process.

Note that copyright protection attaches to all literary works, including
software, when they are created<sup>[3](#Footnote_3)</sup>.  This includes
software copied off of blogs, sites like http://stackoverflow.com/, and any
other sources.  If such code or documentation has been copied into a project
without permission and permission from the rights holder cannot be obtained,
it may not be possible to release the software as-is.  If it is possible to
remove or rewrite the offending material, then it may be possible to release
the project.

#### <a name="433214A2C17C11E6952E003EE1B763F8"></a>Invention Evaluation Committee (IEC) Approval

ARL may have IP interests in the software.  Before the software can be
released, the IEC MUST determine that it is in the best interest of the
Government and ARL to waive any IP rights that ARL might have and release them
to the public.  For the IEC to perform this duty, the abstract must contain a
complete list of inventions that have been created since the last time a
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf).  For each invention,
briefly explain what the invention is, why it is novel and could be patented,
and then explain why it is in ARL's best interest to not pursue a patent
application on the invention.  Developers only need to list those inventions
that have been created since the last time an
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf) was filed.  If there
are no inventions being declared, then this section should have a phrase
similar to "There are no new inventions to declare in this work" to show to
IEC member that this step wasn't forgotten.

Once the list has been created as above, and all prior steps have been
completed, give the [ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf)
and abstract to your directorates IEC representative for review and signing.
The current list of IEC members can be found on ARLInside
[here](https://arlinside.arl.army.mil/inside/labops/ChiefCounsel/documents/IEC-Member-Listing.doc)<sup>[4](#Footnote_4)</sup>.

If the IEC chair (or the chair's delegate) believes that ARL has IP interests
that ARL wants protected, then the lead developer and the chair (or the
chair's delegate) MUST discuss the issues to determine how to move forward.
This discussion MAY be performed by email, telephone, or any other convenient
and legal means. Records of the final determination MUST be kept by the lead
developer.  If it is determined to be in the best interests of ARL and the
Government to seek patent protection, then the rest of this process does not
apply.  Do not continue with the rest of this
process<sup>[5](#Footnote_5)</sup>.

If the IEC chair (or the chair's delegate) agrees that it is in ARL's best
interest to waive all patent rights that ARL may have in the inventions, then
that person MUST sign the
[ARL Form TBD](ARL%20Major%20Release%20Form%200.6.2.pdf).

#### <a name="3F226F34548511E8AE39A8968AF26C7C"></a>Repository Creation on GitHub

If a repository for the project does not already exist on
[ARL's organizational site](https://github.com/usarmyresearchlab), then the
Technology Transfer Office will create a repository for the project.
Ownership of the repository will be shared with the lead developer and
designated officers within the Technology Transfer Office. Further individuals
MAY be added or removed as needed by either the lead developer or the
Technology Transfer office.

Project owners are not required to host their projects on GitHub; they may
choose to host the material on any legal site, and distribute by any legal
means.  However, if project owners choose not to use GitHub, they MUST still
create a minimal project on GitHub consisting of the following:

* A `README.md` file as described [above](#3981656EC17C11E6B2AE003EE1B763F8),
  that gives a link to where the real repository can be found.
* A `LICENSE.txt` file as described [above](#3981656EC17C11E6B2AE003EE1B763F8).
* A `code.json` file as described [above](#3981656EC17C11E6B2AE003EE1B763F8).

The reason for this skeleton project is to simplify automated indexing of
ARL's projects by [code.gov](http://code.gov/) and
[code.mil](https://www.code.mil/).

Where possible, it is strongly RECOMMENDED that projects be distributed via
the ARL GitHub site.  This will make it significantly easier to gauge the
impact of the project by the Technology Transfer and Outreach Office (T2O2)
and by a supervisor, which will impact performance metrics.  This will also
simplify compliance with
[M-16-21 MEMORANDUM FOR THE HEADS OF DEPARTMENTS AND AGENCIES](https://code.gov/#/policy-guide/policy/introduction).

If the principal developer(s) choose to use GitHub as a distribution method
for their software, then they are responsible for generating a digital object
identifier (DOI) for the release.  The instructions to do so are at
https://guides.github.com/activities/citable-code/.  If the principal
developer(s) choose to use a different method of distribution, they still
SHOULD create a DOI for their releases.  Contact either the T2O2 or ARL's Open
Source Software policy team for suggestions on how to do this.  It is
RECOMMENDED that all releases have a DOI associated with them to facilitate
citations of the software.

## <a name="4ADBEADCC17C11E6B9BC003EE1B763F8"></a>Minor Reviews

Minor reviews are for the publication of any material that the principal
developer(s), their OPSEC officer(s), and their supervisor(s) do not believe
require a major review.  These include bug fixes and minor updates.  A level-1
OPSEC officer MUST review the material before it is published.  These reviews
are subject to the following:

* The OPSEC officer MAY also be the technical reviewer for the release.
* Only if the project as a whole, including the minor changes being proposed
  for release, receives an "Approved for public release; distribution
  unlimited" statement can the changes be released.

The process for a minor release is as follows:

* The person who created the material either sends it to the level 1 OPSEC
  reviewer directly, or gives the location where the material can be found to
  the level 1 OPSEC reviewer.
* The OPSEC reviewer reviews the material and sends a digitally signed email
  back to the creator stating whether or not it may be released.
* If the material may be released, then the creator pushes the material out to
  the public.

Note that there are numerous methods of sending the material.  If the material
is stored under git, and both the creator and the OPSEC officer have access to
the same private repository<sup>[6](#Footnote_6)</sup>, then the creator MAY
choose to push the changes to the private repository and ask the OPSEC officer
to pull it and review the changes.  Alternatively, git bundles MAY be used, or
one could even email text files.  Regardless of the method chosen, there are
two requirements that MUST be met:

* The chosen method MUST uniquely identify the set of changes under
  discussion.  Examples include the complete git commit hash under discussion,
  emails with the complete change set, or any cryptographically signed
  method.  This ensures non-repudiation or confusion.
* The OPSEC reviewer MUST track what he or she has approved.  This MAY be done
  by saving the digitally signed emails that were sent.

These steps are REQUIRED for audit purposes.  Without them, ARL cannot prove
to the Department of the Army that it is properly reviewing material before it
is released.

If the principal developer(s), the OPSEC officer, or any of their superiors
determine that significant changes to the scope of the project or violation of
any of the checks described in this document have occurred or are about to
occur, then a Major Review must be performed instead of a Minor Review.

## <a name="4D5F4B34C17C11E6ADBB003EE1B763F8"></a>Incorporating External Contributions

Once the software has passed the process outlined above and has been publicly
distributed, any contributions to the project MUST be subject to its license.

External contributions do not need to undergo OPSEC review as they are assumed
to be public at the time of contribution.  They SHOULD be reviewed for quality
purposes before being accepted into a project to ensure that they are
professional in nature and perform as expected.  All external contributors
MUST have a CLA (see
[Contributor License Agreement (CLA)](#D3DC705AC3C411E6BBB4003EE1B763F8)) on
file before their contributions are accepted into the project.  A CLA only
needs to be executed once by each legal entity for a given project.  Project
owners MUST turn over executed CLAs to the T2O2 for record keeping.  Project
owners MUST explain in the README file that external contributors MUST execute
a CLA before their contributions will be accepted; this is done by copying the
following text into their `README.md` file verbatim:

```text
This is an Open Source project sponsored by the U.S. Army Research Laboratory.
If you choose to contribute to this project, you must execute and return a
copy of ARL Form 266, the ARL Contributor License Agreement, prior to your
first contribution to this project (you are not required to execute ARL Form
266 more than once for a particular project). All contributions you make will
only be accepted under the terms in the "LICENSE.txt" file accompanying this
project.  Your providing any contributions to this project is affirmative
acceptance of all terms in the "LICENSE.txt" file.
```

## <a name="E35C9838545611E88F19A8968AF26C7C"></a>A Note on Impact and Metrics

Publishing software as a regular business practice is new territory for ARL,
and how to measure a project's impact is still a matter for debate.  While
GitHub gathers numerous statistics on projects, from the number of downloads,
to the number of followers, etc., these are, at best, suggestions of what a
project's true impact is.  For the sake of metrics, a project's principal
developer(s) MUST describe what impact their project has had since the last
[Major Review](#3449D4BEC17C11E68DD1003EE1B763F8) when they submit their next
Major Review.  The report MUST describe what the principal developer(s) think
the impact of project is, and provide evidence to back up any claims.  The
greater impact a project has had, the better it is for metrics and performance
evaluation.  Brief examples of how this can be done are shown in
[sample_abstract2.md](sample_abstract2.md) and
[sample_abstract3.md](sample_abstract3.md), and further instructions are
provided in the [Major Review](#3449D4BEC17C11E68DD1003EE1B763F8) section.

To be absolutely clear, impact is based on major reviews (releases that follow
the procedure outlined in [Major Reviews](#3449D4BEC17C11E68DD1003EE1B763F8)).
[Minor Reviews](#4ADBEADCC17C11E6B9BC003EE1B763F8) might lead toward a major
review, but will not count toward a principal developer(s) performance
metrics. If the principal developer(s) want releases to count toward their
metrics, the procedures outlined in Major Reviews MUST be followed.

For performance metric purposes, supervisors MAY treat a major review as being
up to the equivalent of a major accomplishment for the year, similar to the
publication of a paper in a high-impact peer-reviewed journal.  To obtain
recognition, principal developer(s) MUST provide evidence of impact as
explained in [Evidence of Impact](#5092761CC17C11E6B23A003EE1B763F8) and
[Software Maturity and Software Engineering](#53A23266C17C11E6BEEE003EE1B763F8).
The greater impact the software has had since the last major review, the more
credit MAY be given (up to the equivalent of a major accomplishment).  If a
given major review has had no impact, then it MUST NOT be given any credit for
performance metric purposes.

### <a name="5092761CC17C11E6B23A003EE1B763F8"></a>Evidence of Impact

It is up to the principal developer(s) to decide what types of evidence to use
when describing the impact of a project.  As noted in
[File an ARL Form 1](#4066B47EC17C11E6BFC7003EE1B763F8), ARL will not "double
count" the impact; ARL is primarily interested in the impact since the last
major review.  That said, some forms of evidence are difficult to express as a
difference from a prior major review.  In that case, the principal
developer(s) MAY wish to express both the current absolute numbers and the
changes since the project was last filed.

Below are some examples of evidence principal developer(s) MAY wish to
consider giving:

* Customers that are using the software, provided they permit their names to
  be listed.  Army customers are especially important as ARL is the **Army**
  Research Laboratory.
* Letters of acknowledgment, thanks, or other forms of recognition.  This is
  especially important if the letters come from Army customers.
* The number of citations of different releases.  It is possible to cite
  releases on GitHub just as papers might be cited.  See
  https://guides.github.com/activities/citable-code/ for more information on
  how to do this.
* If a project is a library or something else that is intended to be
  incorporated into other projects, list those projects and describe their
  importance.
* The number of followers, including the level of interest as measured by
  issues opened and persons contacting the principal developer(s).
* The number of forks.
* The number of contributions from outside (non-ARL) sources.
* Software maturity.

The principal developer(s) should not feel that they are limited to these
pieces of evidence, nor should they feel the need to include evidence from all
of these categories.  ARL is still learning which metrics to use when
determining the impact of a project. The principal developer(s) should feel
free to use any metric they wish, but should note that supervisors and others
will make the final decision on how heavily to weight the chosen metrics.  For
example, the number of citations for a software project is more important than
the number of downloads it has. If a project is a library, then the number and
importance of projects using the library will have greater weight than the
number of people that have forked the project<sup>[7](#Footnote_7)</sup>.

In general, supervisors will want to know how a project has made a difference
in the world and how important that difference has been since its last major
review.  The better evidence provided, the easier this becomes.

Finally, note that your accomplishments are also ARL's accomplishments; ARL
senior leadership may showcase your projects to leaders even further up the
chain of command.  For this reason, evidence of positive impact on the US Army
is given extra weight over other types of evidence.

### <a name="53A23266C17C11E6BEEE003EE1B763F8"></a>Software Maturity and Software Engineering

ARL would like to be a world leader in computer science research.  To be a
world leader means that ARL must have an impact, and to have an impact means
that ARL's software must be used.  Poorly written software that is
incomprehensible or difficult to compile or use will not be used, and will
have little, if any, impact.  Thus, if the primary improvement to a project
involves bringing it in line with generally accepted best practices in
software engineering to facilitate its transition to others, then this is also
of value and MUST be credited.  Examples of this include, but are not limited
to, the following:

* Providing a well-designed, thoroughly documented application programming
  interface (API) or other interface.
* Adding tests (unit tests, regression tests, integration tests, etc.) that
  increase confidence that your software is performing correctly.
* Increasing code coverage of tests.
* Adding examples and high-level documentation.  This includes ensuring that
  all examples and documentation are up to date with the current software.
* Simplifying building and installation of software.

These are just some examples of mature software.  If there is other evidence
of the maturity or quality of software, principal developer(s) should feel
free to use it when describing the impact of the software.  Supervisors MUST
consider improvements in software engineering when considering the impact of
software, but just as with any other claims of impact, supervisors will have
the final say in determining how important the impact actually is as it
relates to performance metrics.

# <a name="F0D2571854AC11E89E58A8968AF26C7C"></a>Instructions for Contractors

These instructions are general suggestions and guidance only; in all cases a
contractor's contract comes first.  When in doubt, consult your contract.

In general, a contractor's works have copyright attached at the time of
creation. This is useful as the issues regarding the lack of copyright
protection on U.S. Government works within the jurisdiction of the United
States discussed in [Code Cleanup and Release
Preparation](#3981656EC17C11E6B2AE003EE1B763F8) don't apply, and the material
can be licensed under any of the standard [OSI-approved
license](https://opensource.org/licenses).  However, there are some potential
pitfalls to contractor-developed code.  In particular, unless the contract
gives the Government the necessary rights to redistribute the code, it will
not be possible to Open Source the work.  Given this, there are several
possibilities that may exist.

First, you may have assigned your intellectual property rights to another
party (often your employer).  In this case, your employer must agree to either
assign the Government the necessary rights, or it must execute the
[ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8) so that
the material can be contributed to an ARL sponsored Open Source project.

Second, you may own the rights to any intellectual property you create.  This
case is similar to the case above, except that you would choose to either
assign the rights to the Government, or execute the
[ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8).

In both cases, the simplest procedure is to execute the
[ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8); where
this is legally and contractually possible, this is the preferred method.  If
this is possible, then the you and your contracting officer representative
(COR) (or advisor for postdocs) MAY follow the following procedure.

# <a name="722E5CD854B111E8B298A8968AF26C7C"></a>Instructions for External Contributors

Assuming that you own all intellectual property (IP) rights to the material
that you wish to contribute, then the procedure is relatively simple:

* Execute the
  [ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8) for
  the project you wish to contribute to.  You only need to do this once per
  project.
* If you wish to contribute immediately, contact the owner of the project you
  wish to contribute to and send them a copy of your executed
  [ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8). This
  may be faster than going through the email address in the instructions for
  the [ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8).
* Issue pull requests, patches, etc. to the project owners.  The project
  owners will ultimately decide if they wish to accept your contribution.

Note that it is in your best interest to execute and return a copy of the
[ARL Contributor License Agreement](#D3DC705AC3C411E6BBB4003EE1B763F8).  The
agreement not only protects the Government from false claims for compensation,
it also protects you from the Government demanding future unpaid support for
your contribution by putting the Government on notice that your contributions
are 'AS-IS' without implication of warranty or acceptance of liability.

# <a name="D3DC705AC3C411E6BBB4003EE1B763F8"></a>ARL Contributor License Agreement (CLA)

The ARL Contributor License Agreement (ARL Form 266) can be found
[here](ARL%20Form%20-%20266.pdf)<sup>[8](#Footnote_8)</sup>. Each external
contributor must execute and return a copy for each project that he or she
intends to contribute to.  Once ARL receives the executed form, it will remain
in force permanently.  Thus, external contributors need only execute the form
once for each project that they plan on contributing to.

# <a name="93338EDCC17C11E6B720003EE1B763F8"></a>Footnotes

<sup><a name="Footnote_1">1</a></sup> Some licenses have guidelines that
differ from the ones described here.  For example, the GPL states that the
filename must be COPYING.  This is why your README MUST specify which file
contains the license.

<sup><a name="Footnote_2">2</a></sup> If you have questions about what are
"software-related inventions", consult with ARL Legal.

<sup><a name="Footnote_3">3</a></sup> Excluding works generated by Government
employees in the course of their duties.

<sup><a name="Footnote_4">4</a></sup> This link will only work if you are able
to log in to ARLInside.

<sup><a name="Footnote_5">5</a></sup> If the IEC member delegated to sign this
form refuses to on the basis that one or more inventions should be patented,
then ARL expects that reasonable efforts be made to patent the inventions;
refusing to sign this form and refusing to assist in pursuing a patent will
lead to serious questions being asked of the IEC member.

<sup><a name="Footnote_6">6</a></sup> A private repository is only accessible
from within ARL; it MUST NOT be publicly accessible!

<sup><a name="Footnote_7">7</a></sup> As an example, if a library is only
used within the Linux kernel, it will have been used by very few projects, but
will have an extraordinary impact.

<sup><a name="Footnote_8">8</a></sup> This form may not preview correctly in
your browser.  If you have trouble opening the file, or if the file has a
phrase similar to "Please wait... If this message is not eventually replaced
by...", then try downloading the form and opening it in the latest version of
Adobe® Acrobat Reader.  ARL is aware of the issue, and is working to correct
the problem.

# <a name="81FF232254B411E8B256A8968AF26C7C"></a>Glossary

See the [glossary](GLOSSARY.md) for a glossary of terms.
