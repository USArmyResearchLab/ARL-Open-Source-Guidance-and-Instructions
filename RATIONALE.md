# <a name="21147298C17C11E6BA7B003EE1B763F8"></a>Goals and Rationale

# <a name="E78DE53654B211E8BBE9A8968AF26C7C"></a>Table of Contents

* [Goals](#F52D6B9E54B211E89ABCA8968AF26C7C)
* [Why Releasing Software is Important](#22AFD814C17C11E6BAC9003EE1B763F8)
* [Issues Related to Releasing Source Code](#25060DEEC17C11E6B53F003EE1B763F8)
    * [OPSEC and Security](#267B9930C17C11E6AAEE003EE1B763F8)
    * [Intellectual Property Issues](#29EF7A14C17C11E69F71003EE1B763F8)
        * [Trademarks](#FEE2C98654B211E8AF9AA8968AF26C7C)
        * [Copyright](#05552C0054B311E886B3A8968AF26C7C)
        * [Patents](#0B1A37E854B311E89A77A8968AF26C7C)
    * [Liability and Fitness for Purpose](#2D0B7162C17C11E6BD34003EE1B763F8)
    * [Licensing and the ARL Contributor License Agreement (ARL CLA)](#2DF49A4AC17C11E69E3A003EE1B763F8)
* [Footnotes](#93338EDCC17C11E6B720003EE1B763F8)
* [Glossary](#52ACE78A54B411E88A0FA8968AF26C7C)

# <a name="F52D6B9E54B211E89ABCA8968AF26C7C"></a>Goals

The goal of this policy is to both clarify how software developed by ARL
personnel may be released to the public, and encourage ARL personnel to do so,
while remaining firmly within the legal and regulatory requirements of the
United States of America and the United States Army.  These goals are in some
ways conflicting, which is why the process described in the
[instructions](INSTRUCTIONS.md) may seem bureaucratic and onerous.  This
chapter explains why publishing software is important, along with some of the
legal and regulatory constraints on doing so.  Reading it is OPTIONAL, but
doing so may give the reader some insight into the reasons for why the process
is necessary, as well as some of the design choices that went into creating
the process.

# <a name="22AFD814C17C11E6BAC9003EE1B763F8"></a>Why Releasing Software is Important

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
* ARL may lose its leadership position to others solely due to others
  having published their code first.

ARL leadership has recognized these facts and, to ensure that ARL remains a
leader rather than a follower, has created an organizational site on GitHub, a
social networking website focused on sharing code, to publish ARL software to
the world as a part of Open Campus.  However, ARL is not a private entity and
MUST obey numerous laws and regulations when releasing any material to the
public.  The procedures described in the [instructions](INSTRUCTIONS.md) are
intended to protect sensitive material from inadvertent release, prevent ARL
from accidentally trespassing on the rights of others, and protect the
Intellectual Property (IP) rights of ARL.  This document is intended to give
an overview of what those issues are.

# <a name="25060DEEC17C11E6B53F003EE1B763F8"></a>Issues Related to Releasing Source Code

ARL faces a number of issues when defining a software release process.
Legal and regulatory issues are fully outlined in [Legal Analysis - Software
Protection & Release Mechanisms](LEGAL_ANALYSIS.md), while
other issues are summarized here.

## <a name="267B9930C17C11E6AAEE003EE1B763F8"></a>OPSEC and Security

As a component of the Department of Defense (DOD), ARL MUST be able to
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

## <a name="29EF7A14C17C11E69F71003EE1B763F8"></a>Intellectual Property Issues

The most complicated aspect of a software release is usually determining if
there are adequate rights held by the Government to perform a release to the
public.  For most publications, once an ARL Form 1 is completed the
publication is approved for public release.  However, the ARL Form 1 process
was designed primarily for OPSEC and quality control purposes, and does not
address Intellectual Property (IP) concerns.  This can cause significant legal
challenges if not correctly addressed, both when ARL accidentally releases
valuable IP without protecting it, and when ARL accidentally trespasses on the
rights of others. There are three main types of IP rights that MUST be
considered when a release of material is contemplated: trademark, copyright,
and patent rights.

### <a name="FEE2C98654B211E8AF9AA8968AF26C7C"></a>Trademarks

Trademarks are intended to prevent consumer confusion over who is the source
of goods and services.  By registering a trademark, it is possible to prevent
others from from offering the goods or services under the same trademark. This
can be invaluable for trademark owners as they can build a reputation that
consumers will know and trust as they will know precisely who is offering the
good or service.  ARL has registered the ARL logo as a trademark in part for
this reason.  For this and other reasons, all ARL-developed software SHOULD
have  "ARL" as a part of its name; it gives ARL options when trying to protect
its reputation.

Conversely, ARL must be aware of and avoid misusing trademarks owned by
others. Trademark misuse can take a number of forms.  Improper or unauthorized
use can imply to a consumer that a trademark owner is providing or endorsing a
product when they are not.  Provided no such implication is made when using
trademarks owned by others, ARL should be relatively safe.  More on various
trademark issues can be found in [Legal Analysis - Software Protection &
Release Mechanisms](LEGAL_ANALYSIS.md).

### <a name="05552C0054B311E886B3A8968AF26C7C"></a>Copyright

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
* Arrange for a contractor to create the work, and then assign copyright in
  the work to the Government.

The process in this document outlines a new option, and as such, requires
careful consideration of copyright implications.

### <a name="0B1A37E854B311E89A77A8968AF26C7C"></a>Patents

Patents are another method of protecting IP rights.  If software is released
by ARL without adequate review, the inventor's patent rights may be impacted.
For instance, if contractors or other collaborators have co-invented a
"software-related invention"<sup>[2](#Footnote_2)</sup> with ARL, then the
contractors or collaborators may have the right to pursue a patent first.  If
the contractors or collaborators have that right and wish to exercise it, ARL
SHOULD NOT release the software to the public under this process.  If a
project will eventually be released under this process, developers SHOULD
consult with the ARL Chief Counsel's Office to determine the best course of
action to take with regard to any contractors or outside contributors.  If
this is not done, then at some later date developers may find that there are
patents that effectively prevent ARL from releasing the software to the
public<sup>[3](#Footnote_3)</sup>.

In addition, unless this process is followed, ARL will not be waiving its
patent rights; instead, the right to pursue patent protection falls back to
the inventors (i.e., ARL employees who have created a "software-related
invention").  This can lead to legal complications that ARL would rather
avoid.

## <a name="2D0B7162C17C11E6BD34003EE1B763F8"></a>Liability and Fitness for Purpose

A major difference between software and a journal paper or other presentation
is that software is effectively a machine.  As such, there are concerns about
fitness for purpose, as well as the liability incurred, should the software
not meet its stated capabilities.  Releasing software without an adequate
license or contract may leave both the developers of the software and ARL open
to liability issues that could be avoided.

## <a name="2DF49A4AC17C11E69E3A003EE1B763F8"></a>Licensing and the ARL Contributor License Agreement (ARL CLA)

With few exceptions, U.S. Government works do not enjoy copyright protection.
Because of this, licenses that rely on copyright for their protection
mechanism may be declared invalid under U.S. Law<sup>[4](#Footnote_4)</sup>.
However, under U.S. Law, privately developed material can have copyright
attached.  These two facts have lead ARL to develop a hybrid licensing
approach; material that does not have copyright attached is released under the
Creative Commons Zero (CC0) license
(https://creativecommons.org/publicdomain/zero/1.0/legalcode) with an explicit
patent release clause added to it, and material that does have copyright
attached is released under a license that is approved by both the ARL Chief
Counsel's Office and by the [Open Source Initiative
(OSI)](https://opensource.org/). Examples of how this is done can be found in
the [LICENSE.txt](LICENSE.txt) file that accompanies this document, as well as
those licenses in the (preapproved_licenses)[preapproved_licenses] directory.

While this licensing scheme covers works generated by ARL, it doesn't cover
works generated by external contributors.  They may have patent, copyright, or
other rights in any contribution they provide to ARL.  This is problematic
because ARL does not wish to trespass on the rights of others.  Moreover,
because ARL is a component of the U.S. Government, it is subject to the
[Antideficiency Act](https://www.gao.gov/legal/anti-deficiency-act/about);
this requires ARL to negotiate all payment terms with contributors before any
contributions are accepted.  Finally, without a contract in place, it is
theoretically possible for ARL to hold contributors to account for any
contribution they give to ARL; this include liability, warranty, and support
for their contribution.

For this reason, ARL has created ARL Form 266, the
[ARL Contributor License Agreement (CLA)](ARL%20Form%20-%20266.pdf).  This
form both settles all IP and payment questions regarding contributions from
external contributors, and releases external contributors from having to
support their contributions. All external contributors MUST execute and return
a CLA to ARL before their contributions can be accepted by any project.

# <a name="93338EDCC17C11E6B720003EE1B763F8"></a>Footnotes

<sup><a name="Footnote_1">1</a></sup> As an example, U.S. law restricts the
strength of any encryption software that is being released to the world in
general by restricting the length of the keys being used. Since this could be
a hard-coded number in a piece of source code, a change in a single line may
convert it from legal to publish publicly, to illegal.

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

# <a name="52ACE78A54B411E88A0FA8968AF26C7C"></a>Glossary

See the [glossary](GLOSSARY.md) for a glossary of terms.
