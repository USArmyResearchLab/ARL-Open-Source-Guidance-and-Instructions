# <p align="center">The U.S. Army Research Laboratory (ARL) Software Release Process for Unrestricted Public Release</p>
<p align="center">Version 1.0.4</p>
<p align="center">28 July 2017</p>

# <a name="1FF58AF8C17C11E6B7FC003EE1B763F8"></a>Summary

This document provides procedures that ARL Government personnel MUST follow
when releasing software source code and software-related material to the
public, and for accepting software-related contributions from the general
public.  The `master` branch of this repository is the only official document;
all other branches are for discussion and development only, and may or may not
become part of a future official policy.

# Table of Contents

* [Definitions](#20721692C17C11E69585003EE1B763F8)
* [Goals and Rationale](#21147298C17C11E6BA7B003EE1B763F8)
    * [Why Releasing Software is Important](#22AFD814C17C11E6BAC9003EE1B763F8)
    * [Issues Related to Releasing Source Code](#25060DEEC17C11E6B53F003EE1B763F8)
        * [OPSEC and Security](#267B9930C17C11E6AAEE003EE1B763F8)
        * [Intellectual Property Issues](#29EF7A14C17C11E69F71003EE1B763F8)
        * [Liability and Fitness for Purpose](#2D0B7162C17C11E6BD34003EE1B763F8)
        * [Licensing and the ARL Contributor License Agreement (ARL CLA)](#2DF49A4AC17C11E69E3A003EE1B763F8)
* [Release Instructions](#32B21988C17C11E687F7003EE1B763F8)
    * [Major Reviews](#3449D4BEC17C11E68DD1003EE1B763F8)
        * [Informal Approval](#37D9C8B4C17C11E6AE38003EE1B763F8)
        * [Code Cleanup and Release Preparation](#3981656EC17C11E6B2AE003EE1B763F8)
        * [File an ARL Form 1](#4066B47EC17C11E6BFC7003EE1B763F8)
        * [Intellectual Property Review](#45A6CE62C17C11E6A6C0003EE1B763F8)
        * [Obtain Invention Evaluation Committee (IEC) Approval](#433214A2C17C11E6952E003EE1B763F8)
        * [Distribution Methods](#476F65D4C17C11E69E2F003EE1B763F8)
        * [Final Release and Principal Developer Responsibilities](#49715508C17C11E69019003EE1B763F8)
    * [Minor Reviews](#4ADBEADCC17C11E6B9BC003EE1B763F8)
    * [Incorporating External Contributions](#4D5F4B34C17C11E6ADBB003EE1B763F8)
    * [A Note on Impact and Metrics](#A_Note_on_Impact_and_Metrics)
        * [Evidence of Impact](#5092761CC17C11E6B23A003EE1B763F8)
        * [Software Maturity and Software Engineering](#53A23266C17C11E6BEEE003EE1B763F8)
* [CC0 1.0 Universal (CC0 1.0) Public Domain Dedication](#55B06322C17C11E6920E003EE1B763F8)
* [Contributor License Agreement (CLA)](#D3DC705AC3C411E6BBB4003EE1B763F8)
* [Legal Analysis - Software Protection & Release Mechanisms](#D18EB61EC23E11E692E5003EE1B763F8)
* [Glossary](#CDCCBA76C23E11E6AB7D003EE1B763F8)
* [Footnotes](#93338EDCC17C11E6B720003EE1B763F8)

# <a name="20721692C17C11E69585003EE1B763F8"></a>Definitions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
"SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be
interpreted as described in RFC 2119.  See RFC 2119 "Key words for use in RFCs
to Indicate Requirement Levels", Request for Comments: 2119; Internet
Engineering Task Force, March 1997 (https://tools.ietf.org/html/rfc2119) for
the complete definitions.

# <a name="21147298C17C11E6BA7B003EE1B763F8"></a>Goals and Rationale

The goal of this policy is to both clarify how software developed by ARL
personnel may be released to the public and encourage ARL personnel to do so,
while remaining firmly within the legal and regulatory requirements of the
United States and the Army.  These goals are in some ways conflicting, which
is why the process described in this document may seem bureaucratic and
onerous.  This chapter explains why publishing software is important, along
with some of the legal and regulatory constraints on doing so.  Reading it is
OPTIONAL, but doing so may give the reader some insight into the reasons for
why the process is necessary, as well as some of the design choices that went
into creating the process.

## <a name="22AFD814C17C11E6BAC9003EE1B763F8"></a>Why Releasing Software is Important

Software has become an integral part of modern research.  It is used in
everything from simulation and modeling, to data gathering and analysis.  In
many cases, the only way to assimilate the details of research published in
various technical papers is by analyzing the software used in the research. As
a result, research that has its source code published has a significantly
greater impact on the public than research that does not.  Published source
code accomplishes the following:

* Allows external researchers to analyze and verify that the software is
  correct, which helps prove the claims in any accompanying papers are valid.
* Attracts public attention.
* Reduces the barrier to entry for others to join in on the research.  As a
  result, collaborations are formed as others want to learn more and build on
  an organization's work.
* If the software becomes dominant, then the organization that develops it
  becomes the de-facto leader in the field, and all others follow their lead.

Conversely, when software is not published, the following are true:

* Claims in papers based on the software cannot be verified, potentially
  leading to doubts in the claims.
* Barriers to collaboration are raised significantly:
    * Published research may be ignored, because external researchers do not
      fully understand it.
    * New researchers must "reinvent the wheel" by writing their own software.
* The ARL may lose its leadership position to others solely due to others
  having published their code first.

The ARL leadership has recognized these facts and, to ensure that ARL remains
a leader rather than a follower, has created an organizational site on GitHub,
a social networking website focused on sharing code, to publish ARL software
to the world as a part of Open Campus.  However, ARL is not a private entity
and MUST obey numerous laws and regulations when releasing any material to the
public.  These protocols are intended to protect sensitive material from
inadvertent release, prevent ARL from accidentally trespassing on the rights
of others, and protect the Intellectual Property (IP) rights of ARL.

## <a name="25060DEEC17C11E6B53F003EE1B763F8"></a>Issues Related to Releasing Source Code

The ARL faces a number of issues when defining a software release process.
Legal and regulatory issues are fully outlined in [Legal Analysis - Software
Protection & Release Mechanisms](#D18EB61EC23E11E692E5003EE1B763F8), while
other issues are summarized here.

### <a name="267B9930C17C11E6AAEE003EE1B763F8"></a>OPSEC and Security

As an organization within the Department of Defense (DOD), ARL MUST be able to
properly evaluate information that is proposed for publication to ensure no
sensitive information is accidentally released. This includes software. Since
it is possible to accidentally violate various laws with even a seemingly
trivial change<sup>[1](#Footnote_1)</sup>, it is critical that all changes be
reviewed by a competent Operational Security (OPSEC) officer before release.
This step is intended to protect ARL personnel from the repercussions of such
a release by reducing the chances of it occurring in the first place.  Some
common types of sensitive information include:

* Passwords
* Usernames
* DSN phone numbers
* Links to NIPRNet/SIPRNet
* Internal network configurations

Moreover, just as aggregating unclassified information may raise its
classification level, combining a set of changes into a whole may also raise
its classification level.  This is why any review MUST consider the material
being released as a whole, not just the portion that changed.

### <a name="29EF7A14C17C11E69F71003EE1B763F8"></a>Intellectual Property Issues

The most complicated aspect of a software release is usually determining if
there are adequate rights held by the Government to perform a release to the
public.  For most publications, once an ARL Form 1 is completed, the
publication is approved for public release.  However, the ARL Form 1 process
was designed primarily for OPSEC and quality control purposes, and does not
address IP concerns.  This can cause significant legal challenges if not
correctly addressed, both when ARL accidentally releases valuable IP without
protecting it, and when ARL accidentally trespasses on the rights of others.
There are three main types of IP rights that MUST be considered when a release
of material is contemplated: trademark, copyright, and patent rights.

#### Trademarks

Trademarks are intended to prevent consumer confusion over who is the source
of goods and services.  By registering a trademark, it is possible to prevent
others from from offering the goods or services under the same trademark. This
can be invaluable for trademark owners as they can build a reputation that
consumers will know and trust as they will know precisely who is offering the
good or service.  ARL has registered the ARL logo as a trademark in part for
this reason.  For this and other reasons, all ARL-developed software SHOULD
have  "ARL" as a part of its name; it gives ARL options when trying to protect
its reputation.

Conversely, ARL, must be aware of and avoid misusing trademarks owned by
others. Trademark misuse can take a number of forms.  Improper or unauthorized
use can imply to a consumer that a trademark owner is providing or endorsing a
product when they are not.  Provided no such implication is made when using
trademarks owned by others, ARL should be relatively safe.  More on various
trademark issues can be found in [Legal Analysis - Software Protection &
Release Mechanisms](#D18EB61EC23E11E692E5003EE1B763F8).

#### Copyright

Copyright is another form of IP that can give owners a method of control over
their works.  Works generated by non-Governmental persons or Government
employees acting outside of their official duties automatically have copyright
attached to them.  If such works are contributed to Government-controlled
projects without a valid license or assignment of copyright, then the
contributor could make additional demands of the Government after the
contribution is  accepted.  This could force the Government to shut down a
given project.

Thus far, the Government has had the following options to protect itself
against this problem:

* Refuse to share software with entities not covered by a Cooperative Research
  and Development Agreement (CRADA), Cooperative Agreement (CA), or another
  similar vehicle.
* Refuse all outside contributions.
* Arrange for a contractor to author and own the work, and then assign
  copyright to the Government.

The process in this document outlines a new option, and as such, requires
careful consideration of copyright implications.

#### Patents

Patents are another method of protecting IP rights.  If software is released
by ARL without adequate review, the inventor's patent rights may be impacted.
For instance, if contractors or other collaborators have co-invented a
"software-related invention"<sup>[2](#Footnote_2)</sup> with ARL, they may
have the right to pursue a patent first.  If the contractors or collaborators
have that right and wish to exercise it, ARL SHOULD NOT release the software
to the public under this process.  If a project will eventually be released
under this process, developers SHOULD consult with the ARL Chief Counsel's
Office to determine the best course of action to take with regard to any
contractors or outside contributors.  If this is not done, then at some later
date, developers may find that there are patents that effectively prevent ARL
from releasing the software to the public<sup>[3](#Footnote_3)</sup>.

In addition, unless this process is followed, ARL will not be waiving its
patent rights; instead, the right to pursue patent protection falls back to
the inventors (i.e., ARL employees who have created a "software-related
invention").  This can lead to legal complications that ARL would rather
avoid.

### <a name="2D0B7162C17C11E6BD34003EE1B763F8"></a>Liability and Fitness for Purpose

A major difference between software and a journal paper or other presentation
is that software is effectively a machine.  As such, there are concerns about
fitness for purpose, as well as the liability incurred, should the software
not meet its stated capabilities.  Releasing software without an adequate
license or contract may leave both the authors of the software and ARL open to
liability issues that could be avoided.

### <a name="2DF49A4AC17C11E69E3A003EE1B763F8"></a>Licensing and the ARL Contributor License Agreement (ARL CLA)

With few exceptions, U.S. Government works do not enjoy copyright protection.
Because of this, licenses that rely on copyright for their protection
mechanism may be declared invalid under U.S. Law<sup>[4](#Footnote_4)</sup>.
For this reason ARL releases software that does not have copyright attached
under the Creative Commons Zero (CC0) license
(https://creativecommons.org/publicdomain/zero/1.0/legalcode and reproduced at
[CC0 1.0 Universal (CC0 1.0) Public Domain
Dedication](#55B06322C17C11E6920E003EE1B763F8)).

Material that does have copyright attached is generally released under a
license that is approved by both the ARL Chief Counsel's Office and by the
[Open Source Initiative (OSI)](https://opensource.org/).  A list of OSI-
approved licenses can be found [here](https://opensource.org/licenses).

If what is being released consists of a mixture of material that has copyright
attached and material that doesn't have copyright attached, then the project
will list both the CC0 license and some OSI-approved license along with a
notice that the  portions of the work that do not have copyright attached
within US jurisdiction are licensed world-wide under the CC0 license, and all
other portions are licensed under the OSI-approved license.

While this licensing scheme covers works generated by ARL, it doesn't cover
works generated by external contributors.  They may have patent, copyright, or
other rights in any contribution they provide to ARL.  This is problematic
because ARL does not wish to trespass on the rights of others.  Moreover,
because ARL is a governmental entity, it is subject to the [Antideficiency
Act](https://www.gao.gov/legal/anti-deficiency-act/about); this requires ARL
to negotiate all payment terms with contributors before any contributions are
accepted.  Finally, without a contract in place, it is  theoretically possible
for ARL to hold contributors to account for any contribution they give to ARL;
this include liability, warranty, and support for their contribution.

For this reason, ARL has created ARL Form 266, the ARL [ARL Contributor
License Agreement (CLA)](#D3DC705AC3C411E6BBB4003EE1B763F8).  This form both
settles all IP and payment questions regarding contributions from external
contributors, and releases external contributors from having to support their
contributions.  All external contributors MUST execute and return a CLA to ARL
before their contributions can be accepted by any project.

# <a name="32B21988C17C11E687F7003EE1B763F8"></a>Release Instructions

These instructions MUST be followed when ARL personnel release software to, or
accept contributions from, the general public.  If a project does not yet have
any software associated with it (such as when a project is being initially
formulated) and the project is intended to be released to the general public,
then this process MUST still be followed.

## <a name="3449D4BEC17C11E68DD1003EE1B763F8"></a>Major Reviews

The major review process MUST be followed if any of the following are true:

* This is the first release of the project.
* The project's scope has changed sufficiently that any of the principal
  developers (PDs), their OPSEC officers, or anyone in their chains of command
  believe a new one ought to be filed.
* It has been more than 1 year since the last time a major review has been
  done and the project is still active (material is being published to the
  public by ARL employees).
* The PDs feel they have accomplished something of note and wish to get credit
  for it in their performance metrics.

### <a name="37D9C8B4C17C11E6AE38003EE1B763F8"></a>Informal Approval

Before developer(s) release software, they MUST obtain informal approval from
their supervisor(s).  If their supervisor(s) do not approve release of the
software, then the software MUST NOT be released.  Do not continue with this
process.  When deciding if a project can be released, review the section
[Issues Related to Releasing Source Code](#25060DEEC17C11E6B53F003EE1B763F8)
to decide if it will be possible to release the code.  If you have questions,
consult ARL's Chief Counsel's Office for help.

### <a name="3981656EC17C11E6B2AE003EE1B763F8"></a>Code Cleanup and Release Preparation

Fast-moving projects often accumulate useless, nonfunctional, or otherwise
undesirable code and other material that needs to be cleaned up.  Before
moving forward with the formal portions of the process, the project MUST be
cleaned up to ensure it meets certain minimum standards.  Remember that a
formal review can only be done on what is actually being released, so cleaning
up the code after the formal review is not an option.  If a project is being
formulated, but does not yet have any code associated with it, this section
SHOULD be used as a guide for how to write the software.

This section applies to everything that is being released, including any older
commits in any repositories.  By design, repositories preserve history, which
can include material that should not be published.  It is the responsibility
of the project's developers to ensure that both the current code and any
history in any repositories that are proposed for release have been properly
scrubbed before the material is reviewed for release.

Software that is released to the public is similar to a publication and SHOULD
be treated like one.  The author(s) MUST ensure that there is no embarrassing,
disparaging, or otherwise unprofessional language in what is released.
Language that would not be used in a professional journal MUST NOT be used in
software.  Direct any questions about this to the ARL Public Affairs Office
(PAO).

Where possible, it is wise to follow best practices in software engineering.
Because of the wide variety of programming languages in use, project goals,
etc., ARL wants to avoid forcing a single process on any developers or group.
For this reason, ARL has chosen a minimal set of requirements and provides
some best practice suggestions.  Individual implementation of the voluntary
portions is RECOMMENDED as they may have an effect on impact and metrics.  See
[A Note on Impact and Metrics](#A_Note_on_Impact_and_Metrics) for details on
metrics.

As discussed at [Licensing and the ARL Contributor License Agreement (ARL
CLA)](#2DF49A4AC17C11E69E3A003EE1B763F8), all projects will have their
material licensed under both the CC0 license, and a license that is both
approved by OSI and the ARL Chief Counsel's Office. The author(s) MUST consult
with the ARL Chief Counsel's Office when selecting an OSI-approved license.
All contributions that have copyright attached MUST be licensed to ARL under
the OSI-approved license chosen by the project's author(s), and they MUST be
redistributed under the same license when the software is redistributed.
Works that do not have copyright attached MUST be accepted and redistributed
under the CC0 license. All contributions MUST be irrevocable under the given
license.  Questions about this can be directed to ARL Legal for clarification.

Once the license is chosen, the author(s) MUST provide copies of the license
text in a file named `LICENSE.txt` at the root of the project's repository.
This MUST contain both the text of the OSI-approved license and the CC0
license.  The `LICENSE.txt` MUST also contain a notice that those portions of
the material that do not have copyright attached within the jurisdiction of
the United States of America are distributed under the terms of the CC0
license, and that all other portions of the work are distributed under the
terms of the OSI-approved license in the `LICENSE.txt` file.  An example of
how this can be done for the CC0 license and the [Apache
2.0](http://apache.org/licenses/LICENSE-2.0) license is given in the
[LICENSE.txt](LICENSE.txt) file.

The `LICENSE.txt` file MUST be a plain-text file in either ASCII or UTF-8
encoding.  The README file (described below) MUST state the name of the file
that contains the complete license<sup>[6](#Footnote_6)</sup>.  If the project
has a webpage, the licenses being used MUST be stated somewhere on the
webpage, with a link pointing to where the project's `LICENSE.txt` file.

A "README" file MUST be created at the top level of the directory with at
least the following in it:

* The intended purpose of the software.
* A note pointing to the license or contract covering the software.
* At least some basic documentation on how to build and use the software.

The "README" file MUST be a plain-text file in either ASCII or UTF-8 encoding.
The file may be named "README", "README.txt", or "README.md".  As a note, if
the authors choose to use [GitHub](https://github.com) as the distribution
method, it is RECOMMENDED that the file be named "README.md", and that the
file be written in [GitHub-flavored
Markdown](https://guides.github.com/features/mastering-markdown/).  Throughout
this document the file will be called "README" regardless of what suffix is
used on the actual file.

The "README" SHOULD describe what valuable contributions the principal
developers would welcome from the community.  This will help the public focus
on efforts that are most likely to be accepted into the project.

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
which can increase the overall impact of the project . In addition, unit tests
can serve as examples of how to use the code; this can be invaluable when a
user is trying to understand the documentation.

For legal reasons, all language talking about the project MUST be prefixed
with "ARL".  For example, if a project is named WhizBang, then all literature
in the package MUST refer to it as "ARL WhizBang" or the "ARL WhizBang
project." "ARL" is a federally registered trademark and using it in this
manner adds some degree of trademark protection to a project.

Create a file called `code.json` in the root directory of your project.  This
file MUST follow the schema described
[here](https://code.gov/#/policy-guide/docs/compliance/inventory-code). An
example of a correctly formatted `code.json` file is provided
[here](code.json).  Download and modify it to fit your project.

### <a name="4066B47EC17C11E6BFC7003EE1B763F8"></a>File an ARL Form 1

An ARL Form 1 MUST be filed.  In the process described in this document, the
primary purpose of the ARL Form 1 is for OPSEC review, but it also serves the
secondary purposes of describing releases for publicity and metrics.  To
support this, a short abstract describing the software MUST be written.  The
abstract SHOULD be at most one page in length and provide the following
information:

* The name of the project.
* A description of the project.  This includes what it does and what its
  intended purpose is.  This SHOULD be as complete as is reasonably possible.
  Portions of the "README" file MAY be copied here.

A supervisor will use the filed ARL Form 1 to decide if the major review
process is necessary or if, instead, the minor review process will be
followed.  Also, the Public Affairs Office (PAO) may use information from the
ARL Form 1 for publicity purposes.

If this is not the first major review of the software, then the abstract MUST
also include the following information:

* The change or changes that caused this review to become necessary.
* What the impact of the software has been since the last major review for
  this project.  See
  [A Note on Impact and Metrics](#A_Note_on_Impact_and_Metrics) for examples
  of how impact is measured and for what to include.

Note that while ARL wants to credit an author for the impact the software has
made, it will not "double count" what authors have done by including the
impact from earlier major reviews.  Only the impact made since the last time
the major review process was completed SHOULD be included.

This abstract, along with everything planned on being released (software,
source code, documentation, etc.), MUST be fully reviewed by a level 1 OPSEC
officer.  If this is not an initial review, the OPSEC officer MAY choose to
only review what has changed since the last review, but both the author and
the OPSEC officer are responsible for the release as a whole.  Thus, even if
the changes are cleared for public release, if the release as a whole cannot
be cleared for release, then the changes are not cleared for release either.
To be cleared for release, the project as a whole MUST receive an "Approved
for public release; distribution unlimited" statement.  Finally, no one is
permitted to OPSEC-approve material that he or she created.

### <a name="45A6CE62C17C11E6A6C0003EE1B763F8"></a>Intellectual Property Review

Although ARL MAY choose to waive ARL's rights to any IP established in
software, if an author has incorporated contributions from others, those
contributors may have rights to those contributions that restrict ARL's
ability to release the software.  Thus, before the software can be released,
the following questions MUST be addressed:

* Has every part of the proposed release been generated by Government
  employees in the course of their duties?
* If not, is there permission from every other rights holder to release all of
  the other parts under the project's license?

The PD MUST consult with ARL Legal to perform an IP review (this review MAY be
done by email or any other convenient and legal means).  If there are external
contributions that were not contributed under the project's license, then the
PD MUST determine the license and copyright information for each contribution.
Provide these to ARL Legal for review and final determination if the licenses
are compatible with the license or contract under which the software is being
released.  If ARL Legal determines that there are impediments to releasing the
software, whatever permissions are necessary MUST be obtained before the
software is released.  If it is not possible to obtain the necessary
permissions, then the software MUST NOT be released.  Do not continue with the
rest of this process.  If ARL Legal agrees that there are no IP impediments to
releasing the software, then ARL Legal MUST send a digitally signed email to
the PD stating so.

Note that copyright protection attaches to all literary works, including
software, when they are created<sup>[8](#Footnote_8)</sup>.  This includes
software copied off of blogs, sites like http://stackoverflow.com/, and any
other sources.  If such code or documentation has been copied into a project
without permission and permission from the rights holder cannot be obtained,
it may not be possible to release the software.

This step MAY be done in parallel with the steps described below.

### <a name="433214A2C17C11E6952E003EE1B763F8"></a>Obtain Invention Evaluation Committee (IEC) Approval

The ARL may have IP interests in the software.  Before it can be released, the
IEC MUST determine that it is in the best interest of the Government and ARL
to waive any IP rights that ARL might have and release it to the public.  To
do so, the PD MUST inform the current chair of the IEC (or the chair's
delegate) of the intention to release the software by sending the chair a
digitally signed email that contains the following:

* The abstract that was submitted as a part of the ARL Form 1 process above.
  The related software is not sent to the IEC chair (or the chair's delegate)
  unless he or she requests it.
* A list of all software-related inventions that the PD and his or her
  supervisor believe are contained in the work<sup>[7](#Footnote_7)</sup>.
* A statement that, in the opinion of the PD and his or her supervisor, all
  IP, including the listed inventions, should be irrevocably placed in the
  public domain.

If the chair (or the chair's delegate) agrees that ARL should waive any patent
or other IP interests ARL may have and that the software should be put into
the public domain, then the chair (or the chair's delegate) will reply back
with a digitally signed email with a statement similar to the following:

`<<Software name>> is to be released to the public in the manner (open source
and/or public domain) proposed for promoting its commercial and non-commercial
use. It is in the best interest of the government to waive any and all patent
rights ARL may be able to assert or establish in the software.`

If the PD has received approval from IEC chair (or the chair's delegate), then
the PD MAY continue with the rest of this process.

If the IEC chair (or the chair's delegate) believes that ARL has IP interests
that ARL wants protected, then the PD and the chair (or the chair's delegate)
MUST discuss the issues to determine how to move forward.  This discussion MAY
be performed by email, telephone, or any other convenient and legal means.
Records of the final determination MUST be kept by the PD.  If it is
determined to be in the best interests of ARL and the Government to seek
patent protection, then the rest of this process does not apply.  Do not
continue with the rest of this process.

To determine the appropriate person to contact within the IEC, consult ARL
Legal.

### <a name="476F65D4C17C11E69E2F003EE1B763F8"></a>Distribution Methods

There are many different ways of distributing software.  The ARL GitHub site
is the RECOMMENDED method, but is not the only method.  The PDs MAY choose to
distribute by FTP, email, another website, or other means, in addition to or
in place of GitHub.  For any and all distribution methods chosen, the PDs are
responsible for creating their own accounts.  If the distribution method uses
email addresses as part of the sign up process, then the PDs MUST use their
Government email addresses.  All login accounts MUST be reported to the PDs'
supervisors.  Passwords MUST be kept secret.  If a site uses cryptographic
authentication such as public/private key pairs, PDs MAY choose to use this
facility in addition to, or instead of, passwords.  Private keys MUST be
treated like passwords and kept secret.

Where possible, it is strongly RECOMMENDED that projects be distributed via
the ARL GitHub site.  This will make it significantly easier to gauge the
impact of the project by the Technology Transfer and Outreach Office (T2O2)
and by a supervisor, which will impact performance metrics.

### <a name="49715508C17C11E69019003EE1B763F8"></a>Final Release and Principal Developer Responsibilities

If the software is approved for final release and there is not yet a project
for it on GitHub, then the T2O2 will generate a project on the [ARL GitHub
organization site](https://github.com/USArmyResearchLab).  If there is already
a project on the ARL GitHub organization for the software, then the T2O2 will
note the release for metrics purposes, but will take no other action.  If an
author chooses not to use the ARL GitHub organization, he or she MAY request
that the T2O2 not create a project.  However, as mentioned in Distribution
Methods, it is strongly RECOMMENDED that GitHub be used to distribute
software.

The PDs SHOULD put their software on their project's site.  The T2O2 will
publicize this site on behalf of the PDs. The software MAY also be distributed
by any and all other methods the PDs see fit.  The PD (or PDs) MAY promote
their projects on their own, but SHOULD do so in consultation with the T2O2,
to both ensure that all promotions are professional in nature and minimize any
duplication of effort.

If the PDs choose to use GitHub as a distribution method for their software,
then the PDs are responsible for generating a digital object identifier (DOI)
for the release.  The instructions to do so are at
https://guides.github.com/activities/citable-code/.

## <a name="4ADBEADCC17C11E6B9BC003EE1B763F8"></a>Minor Reviews

Minor releases include all releases that the PD, the PD's OPSEC officer, and
the PD's supervisor do not believe require a major review.  These include bug
fixes and minor updates.  A level-1 OPSEC officer must review the release
before being published.  These reviews are called "minor reviews" and are
subject to the following:

* The OPSEC officer MAY also be the technical reviewer for the release.
* Only if the project as a whole, including the minor changes being proposed
  for release, receives an "Approved for public release; distribution
  unlimited" statement can the changes be released.

The process for a minor release is as follows:

* The person who created the material sends it to the OPSEC reviewer.
* The OPSEC reviewer reviews the material and sends a digitally signed email
  back to the creator either stating that it may not be released or that it
  may be released.
* If the material may be released, then the creator pushes the material out to
  the public.

Note that there are numerous methods of sending the material.  If the material
is stored under git, and both the creator and the OPSEC officer have access to
the same private repository<sup>[9](#Footnote_9)</sup>, then the creator MAY
choose to push to the private repository and ask the OPSEC officer to pull it
and review the changes.  Alternatively, git bundles MAY be used, or one could
even email text files.  Regardless of the method chosen, there are two
requirements that MUST be met:

* The chosen method MUST uniquely identify the set of changes under
  discussion.  Examples include the complete git commit hash under discussion,
  emails with the complete change set, or any cryptographically signed
  method.  This ensures non-repudiation or confusion.
* The OPSEC reviewer MUST track what he or she has approved.  This MAY be done
  by saving the digitally signed emails that were sent.

These steps are REQUIRED for audit purposes.  Without them, ARL cannot prove
to the Department of the Army that it is properly reviewing material before it
is released.

If the PDs, the OPSEC officer, or any of their superiors determine that
significant changes to the scope of the project or violation of any of the
checks described in this document have occurred or are about to occur, then
that person MUST demand that a MAJOR REVIEW occur.

## <a name="4D5F4B34C17C11E6ADBB003EE1B763F8"></a>Incorporating External Contributions

Once the software has passed the process outlined above and has been publicly
distributed, any contributions to the project MUST be subject to its license.

External contributions do not need to undergo OPSEC review as they are assumed
to be public at the time of contribution.  They SHOULD be reviewed for quality
purposes before being accepted into a project to ensure that they are
professional in nature and perform as expected.  All external contributors
MUST have a CLA on file before their contributions are accepted into the
project.  A CLA only needs to be executed once by each legal entity.  Project
owners MUST turn over executed CLAs to the T2O2 for record keeping.  Project
owners MUST explain in the README file that external contributors MUST execute
a CLA before their contributions will be accepted.

## <a name="A_Note_on_Impact_and_Metrics"></a>A Note on Impact and Metrics

Publishing software as a regular business practice is new territory for ARL,
and how to measure a project's impact on the general public is still a matter
for debate.  While GitHub gathers numerous statistics on projects, from the
number of downloads, to the number of followers, etc., these are, at best,
suggestions of what a project's true impact is.  For the sake of metrics, a
project's PDs MUST create a short report (at most one page) describing what
they think the impact is and providing evidence to back up this claim.  The
greater impact a project has had, the better it is for metrics and performance
evaluation.

To be absolutely clear, impact is based on major reviews (releases that follow
the procedure outlined in Major Reviews). Minor reviews, as described in Minor
Reviews, might lead toward a major review, but will not count toward metrics.
If an author wants releases to count toward metrics, the procedures outlined
in Major Reviews MUST be followed.

### <a name="5092761CC17C11E6B23A003EE1B763F8"></a>Evidence of Impact

It is up to the PD to decide what types of evidence to use when describing the
impact of a project.  As noted in File an ARL Form 1, ARL will not "double
count" the impact; ARL is primarily interested in the impact since the last
major review.  That said, some forms of evidence are difficult to express as a
difference from a prior major review.  In that case, a PD MAY wish to express
both the current absolute numbers and the changes since the project was last
filed.

Below are some examples of evidence PDs MAY wish to consider giving:

* The number of citations of different releases.  It is possible to cite
  releases on GitHub just as papers might be cited.  See
  https://guides.github.com/activities/citable-code/ for more information on
  how to do this.
* If a project is a library or something else that is intended to be
  incorporated into other projects, list those projects and describe their
  importance.
* The number of followers, including the level of interest as measured by
  issues opened and persons contacting the PDs
* The number of forks
* The number of contributions from outside (non-ARL) sources
* Letters of acknowledgment, thanks, or other forms of recognition
* Software maturity

The PDs should not feel that they are limited to these pieces of evidence, nor
should they feel the need to include all of these examples.  As stated
earlier, ARL is still learning which metrics to use when determining the
impact of a project. The PDs should feel free to use any metric they wish, but
should note that supervisors and others will make the final decision on how
heavily to weight the chosen metrics.  For example, the number of citations
for a software project is more important than the number of downloads it has.
If a project is a library, then the number and importance of projects using
the library will have greater weight than the number of people that have
forked the project<sup>[10](#Footnote_10)</sup>.

In general, supervisors will want to know how a project has made a difference
in the world and how important that difference has been since its last major
review.  The better evidence provided, the easier this becomes.

### <a name="53A23266C17C11E6BEEE003EE1B763F8"></a>Software Maturity and Software Engineering

The ARL would like to be a world leader in computer science research.  To be a
world leader means that ARL must have an impact and to have an impact means
that ARL's software must be used.  Poorly written software that is
incomprehensible or difficult to compile or use will not be used, and will
have little, if any, impact.  Thus, if the primary improvement to a project
involves bringing it in line with generally accepted best practices in
software engineering to facilitate its transition to others, then this is also
of value and SHOULD be credited.  Examples of this include, but are not
limited to, the following:

* Providing a well-designed, thoroughly documented application programming
  interface (API) or other interface.
* Adding tests (unit tests, regression tests, integration tests, etc.) that
  increase confidence that your software is performing correctly.
* Increasing code coverage of tests.
* Adding examples and high-level documentation.  This includes ensuring that
  all examples and documentation are up to date with the current software.
* Simplifying building and installation of software.

These are just some examples of mature software.  If there is other evidence
of the maturity or quality of software, a PD should feel free to use it when
describing the impact of the software.  Supervisors MUST consider improvements
in software engineering when considering the impact of software.

# <a name="55B06322C17C11E6920E003EE1B763F8"></a>CC0 1.0 Universal (CC0 1.0) Public Domain Dedication

The text of the CC0 license can be found
[here](https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt).
A local copy of the license is in the file [LICENSE.txt](LICENSE.txt).

# <a name="D3DC705AC3C411E6BBB4003EE1B763F8"></a>Contributor License Agreement (CLA)

The ARL Contributor License Agreement (ARL Form 266) can be found
[here](ARL%20Form%20-%20266.pdf)<sup>[11](#Footnote_11)</sup>. Each external
contributor must execute and return a copy for each project that he or she
intends to contribute to.  Once ARL receives the executed form, it will remain
in force permanently.  Thus, external contributors need only execute the form
once for each project that they plan on contributing to.

# <a name="D18EB61EC23E11E692E5003EE1B763F8"></a>Legal Analysis - Software Protection & Release Mechanisms

An in-depth analysis of the issues surrounding the release of software can be
found [here](LEGAL_ANALYSIS.md).

# <a name="CDCCBA76C23E11E6AB7D003EE1B763F8"></a>Glossary

A glossary of terms can be found [here](GLOSSARY.md).

# <a name="93338EDCC17C11E6B720003EE1B763F8"></a>Footnotes

<sup><a name="Footnote_1">1</a></sup> As an example, U.S. law restricts the
strength of any encryption software that is being released to the world in
general by restricting the length of the keys being used. Since this could be
a hard-coded number in a piece of source code, a change in a single line may
convert it from legal to illegal.

<sup><a name="Footnote_2">2</a></sup> Software may be copyrighted but not
patented. "Software-related inventions" may be patented. At the time of this
writing, there was no clear definition of the difference between "software"
and "software-related invention". Consult ARL Legal for a more complete
explanation.

<sup><a name="Footnote_3">3</a></sup> Contracts usually protect the Federal
Government from the related patent issues. That said, if you have concerns,
consult ARL Legal and your contracting officer to determine what rights there
are.

<sup><a name="Footnote_4">4</a></sup> At the time of this writing, this has
not been litigated in Federal Court.  Consult the ARL Chief Counsel's Office
to determine what the current laws are.

<sup><a name="Footnote_5">5</a></sup> Except for works created by U.S. Federal
Government employees in the course of their duties.  These are automatically
in the public domain.

<sup><a name="Footnote_6">6</a></sup> Some licenses have guidelines that
differ from the ones described here.  For example, the GPL states that the
filename must be COPYING.  This is why your README MUST specify which file
contains the license.

<sup><a name="Footnote_7">7</a></sup> If you have questions about what are
"software-related inventions", consult with ARL Legal.

<sup><a name="Footnote_8">8</a></sup> Excluding works generated by Government
employees in the course of their duties.

<sup><a name="Footnote_9">9</a></sup> A private repository is only accessible
from within ARL; it MUST NOT be publically accessible!

<sup><a name="Footnote_10">10</a></sup> As an example, if a library is only
used within the Linux kernel, it will have been used by very few projects, but
will have an extraordinary impact.

<sup><a name="Footnote_11">11</a></sup> This form may not preview correctly in
your browser.  If you have trouble opening the file, or if the file has a
phrase similar to "Please wait... If this message is not eventually replaced
by...", then try downloading the form and opening it in the latest version of
Adobe® Acrobat Reader.  ARL is aware of the issue, and is working to correct
the problem.
