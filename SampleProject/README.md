# ARL NEW UNRESTRICTED SOFTWARE RELEASE TEMPLATE

Use this template as a starting point for any new U.S. Army Research Laboratory (ARL) unrestricted public software release. This template follows the [The U.S. Army Research Laboratory (ARL) Software Release Process for Unrestricted Public Release](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions), version 1.0.3 ("ARL Release Process"). All absolute requirements, and many recommendations, are included below. If you are not able to complete a step listed below, read the full ARL Release Process to determine if you may continue with the process or if you must stop.

**THIS LIST IS EASY, CHECK IT OFF ONE-BY-ONE!**

- [ ] Copy [this `SampleProject` folder](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/archive/master.zip), this is the starting point for your software release
- [ ] Identify the major parties that will be responsible for this release process:
  - [ ] Principal developer (PD) or principal developers
  - [ ] PD's supervisor(s)
  - [ ] Level 1 OPSEC officer (no one is permitted to OPSEC-approve material that he or she created)
  - [ ] The current chair of the Invention Evaluation Committee, or chair's delegate
  - [ ] ARL Legal
  - [ ] ARL Public Affairs Office
  - [ ] Technology Transfer and Outreach Office (T2O2)
- [ ] Complete a [Major Review](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#major-reviews) because this is a new unrestricted public software release
  - [ ] Obtain [informal approval](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#informal-approval) from the PD's supervisor
    - [ ] The PD and supervisor work together to determine if adequate [release rights](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#release-rights) are held by Government.  This will be checked by ARL's Chief Counsel's Office (below in this checklist)
  - [ ] PD is responsible to [clean up code and prepare for release](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#code-cleanup-and-release-preparation)
    * If a project is being formulated, but does not yet have any release products, use the below as a guide for writing the software.
    * If your code includes a repository with history, consider this checklist for *every* commit in the history
    - [ ] Remove any embarrassing, disparaging, sensitive or otherwise unprofessional content
      * Language that would not be used in a professional journal MUST not be used in software.
      * Pay particular attention to: passwords, usernames, DSN phone numbers, links to NIPRNet/SIPRNet.
      * Direct any questions about this to the ARL Public Affairs Office.
    - [ ] Assign a version number in the file `VERSION` (optional) and following [Semantic Versioning guidelines](http://semver.org/) (optional).
    - [ ] Assign a license for this project.
      * If your project does not have copyright, use the included [Creative Commons Zero 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).
      * Otherwise consider [Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0), or [contact ARL Legal](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#code-cleanup-and-release-preparation) if you need clarification.
      - [ ] Put the full license text, in ASCII or UTF-8 format, in the `LICENSE` file and reference that license from the `README` file.
    - [ ] Edit the project `README` file (your copy of the file you are currently reading, at the bottom):
      - [ ] Review all text below -- we have included amusing examples to get you started, replace it with real content about your actual project.
      - [ ] Discuss the intended purpose of the software.
      - [ ] Point to the license or contract covering the software.
      - [ ] Include basic documentation on how to build and use the software.
      - [ ] Use plain-text ASCII or UTF-8 encoding for this `README` file.
    - [ ] Ensure `README` and all mentions of the project say "ARL `WhizBang`" or the "ARL `WhizBang` project", this adds trademark protection to your project and helps protect ARL interests (replace `WhizBang` with the actual name of your project)
    - [ ] Explain in the `README` file that external contributors must execute a [Contributor License Agreement](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#D3DC705AC3C411E6BBB4003EE1B763F8) before their contributions will be accepted.
    - [ ] Add unit tests to your software, to increase assurance of code quality for yourself and users.
  - [ ] File an [ARL Form 1](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#file-an-arl-form-1)
    * Note: properly filling in the ARL Form 1, especially [evidence of impact](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#evidence-of-impact), will maximize the benefit to your metrics.
    - [ ] Write a short abstract describing the software, including the project name, description, and intended purpose.
    - [ ] Submit this abstract and all planned release products (software, source code, documentation, etc.) to the Level 1 OPSEC officer.
      - [ ] OPSEC will review all planned release products and also consider [release rights](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#release-rights).
      - [ ] Receive "approved for public release; distribution unlimited" response.
  - [ ] Obtain [Invention Evaluation Committee (IEC) Approval](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#obtain-invention-evaluation-committee-iec-approval)
    - [ ] PD will send to IEC chair (or chair's delegate) a digitally-signed email containing:
      - [ ] The abstract that was submitted as a part of the ARL Form 1 process above. (Do not send related software unless the chair requests it.)
      - [ ] A list of all software-related inventions that the PD and his or her supervisor believe are contained in the work.
      - [ ] A statement that, in the opinion of the PD and his or her supervisor, all intellectual property, including the listed inventions, should be irrevocably placed in the public domain.
    - [ ] Receive digitally-signed email response stating approximately:

        > `WhizBang` is to be dedicated to the public domain for promoting its commercial and non-commercial use. It is not intended to become the subject of any patent application or license. All intellectual property rights ARL may be able to assert or establish are hereby waived.

    * If the IEC chair (or chair's delegate) believes that ARL has intellectual property (IP) interests that ARL wants protected, then see further details in the [ARL Release Process](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#obtain-invention-evaluation-committee-iec-approval).
  - [ ] PD performs [Intellectual Property Review](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#intellectual-property-review) with ARL Legal.
    - [ ] Consider: has every part of the proposed release been generated by Government employees in the course of their duties?
      * Don't forget to consider software copied off of blogs, sites like http://stackoverflow.com/, and any other sources.
    - [ ] Consider: if not, is there permission from every other rights holder to release all of the other parts under the project's license?
    - [ ] ARL Legal sends digitally-signed email response to PD confirming that there are no IP impediments to releasing the software.
  - [ ] T2O2 will generate a project on the [ARL GitHub organization](https://github.com/USArmyResearchLab)
    * If you do not want to use GitHub, or want to use other distribution methods, see further details in the [ARL Release Process](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/README.md#obtain-invention-evaluation-committee-iec-approval)
    - [ ] PD is responsible for creating their own GitHub account, use your government email address, secure your password and private keys, report your account to supervisor.
    - [ ] Consult with T2O2 when your upload is complete, they will help you publicize your project :-)
    - [ ] PD is responsible for [generating a digital object identifier](https://guides.github.com/activities/citable-code/) (DOI) for this release.
    - [ ] Update the `code.json` file to include all relevant URLs and information about your project before release. See [specifications for updating this file](https://code.gov/#/policy-guide/docs/compliance/inventory-code).
- [ ] Delete this checklist, you are done!
- [ ] Upload your software repository to your GitHub site.
- [ ] Make a release on GitHub, full steps are in [CONTRIBUTING.md](CONTRIBUTING.md) in case you forget.
- [ ] Go star the official repository for [The U.S. Army Research Laboratory (ARL) Software Release Process for Unrestricted Public Release](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions) for updates.

---

# `WhizBang`

This software program increases the physical elevation of for users of the program. An approximate flow chart for this program is illustrated below:

```
[ SITTING ] ---- WhizBang ---> [ STANDING ]
```

The `WhizBang` program can be run on all Unix-based operating systems and some mobile operating systems. Additionally it can be run in batch mode for multiple users and in scheduled `cron` tasks. **\[This is your INTENDED PURPOSE section\]**.

Salient features:

* You
* can
* also
* put
* your
* features
* in
* a
* list

Once installed you can use the software by running `/usr/local/sbin/WhizBang --chair-mode --now --f` **\[This is your basic documentation on how to use the software\]**

# Building the software

This software uses `autoconf` for all build tasks. Build the software with: **\[This is your basic documentation on how to build the software\]**

```sh
./configure
make build
```

Execute the test suite with: **\[Yes, you should have tests\]**.

```sh
make test
```

# License

This software is released under the [Creative Commons Zero 1.0 Universal license](LICENSE.txt).

# Contributing

Any contributions to this project must be subject to [this project's license](LICENSE.txt). All external contributors must file a [contributor license agreement](https://github.com/USArmyResearchLab/ARL-Open-Source-Guidance-and-Instructions/blob/master/ARL%20Form%20-%20266.pdf) before their contributions are accepted into the project

Documentation of our release process is in [CONTRIBUTING.md](CONTRIBUTING.md).
