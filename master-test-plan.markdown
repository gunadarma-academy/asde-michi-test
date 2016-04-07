# Master Test Plan for Arlin by Michi

Adapted from [Master Test Plan (v061111) by Northwestern University Information Technology (in DOCX format)](http://www.it.northwestern.edu/bin/docs/project-framework/Master_Test_Plan_v061111.docx).

--------------------------------------------------------------------------------

## Instruction

This document is used to define the details of the master test plan. Once the test plan is outlined, the document must be reviewed and approved by the lead technical representative on the project as well as the lead business representative on the project.  If anything related to the test plan changes during the execution and testing phase of the project, this document should be updated and re-approved by both parties.

--------------------------------------------------------------------------------

## Test Scope

This test plan will test all the requirements for Arlin version 1.0, which will be tested by the Michi team for evaluate and verify that the product (Arlin) meet the functional, performance and design. This Master Test Plan covers unit, functional, integration, user interface, and user acceptance test.

--------------------------------------------------------------------------------

## Test Features

This is a description of the features that will be tested within the scope of the test plan. The list represents what will be tested as well as the individuals/groups involved with the testing activities.

No. | Feature	| Responsible person
--- | ------- | ------------------
1   | Login, Logout | Muhammad Patria
2   | Posting question, Posting answer, List all questions, and List question’s answers | Ruth Theodora
3   | User Interface (UI) Test | Ekky Bayu Pramana
4   | Unit/Functional/E2E Test | Muhammad Haidar Hanif

--------------------------------------------------------------------------------

## Test Inputs/Outputs

This is a description of the inputs that will be used to assist with the testing effort and a list of the outputs that will be delivered from the testing effort.  

Example:

Inputs        | Outputs
------------- | ------------------
Product Specs | List of results
              | Test Results
              | Issues Log
              | Change Request Log
              | Improvement Log

--------------------------------------------------------------------------------

## Test Strategy

### Unit Test

A unit test is a quality measurement and evaluation procedure applied in most enterprise software development activities. Generally, a unit test evaluates how software code complies with the overall objective of the software/application/program and how its fitness affects other smaller units. Unit tests may be performed manually - by one or more developer - or through an automated software solution.

When tested, each unit is isolated from the primary program or interface. Unit tests are typically performed after development and prior to publishing, thus facilitating integration and early problem detection. The size or scope of a unit varies by programming language, software application, and testing objectives.

### Functional Test

Functional testing is primarily is used to verify that a piece of software is providing the same output as required by the end-user or business. Typically, functional testing involves evaluating and comparing each software function with the business requirements. The software is tested by providing it with some related input so that the output can be evaluated to see how it conforms, relates or varies compared to its base requirements. Moreover, functional testing also checks the software for usability, such as by ensuring that the navigational functions are working as required.

### Integration Test

Integration testing is a software testing methodology used to test individual software components or units of code to verify the interaction between various software components and detect interface defects. Components are tested as a single group or organized in an iterative manner.

### User Interface Test

User interface test (UIT) is a testing technique used to identify the presence of defects is a product/software under test by using graphical user interface. The characteristics of the test include a thorough check of the properties on each GUI object, as well as to make sure the graphical representation is consistent with the expected result of the test. The test conducted by asking participants to exercise some simple tasks that represent each of the elements, objects, events, and navigations while each actions is recorded.

### User Acceptance Test

User acceptance testing (UAT) is a test conducted to determine if the requirements of a specification or to verify if specific requirements are working for the user. User acceptance tests are useful because they capture user requirements in a directly verifiable way, identify problems which unit or integration tests might have missed, and provide an overview of how “done” the system is. UAT typically performed by Regular User, this tests all changed functionality of a system from the end-user perspective

--------------------------------------------------------------------------------

## Test Strategy Responsibilities

No. | Test Types               | Responsible person
--- | ------------------------ | ------------------
1   | Unit Test                | Muhammad Haidar Hanif
2   | Functional Test          | Muhammad Patria
    |                          | Ruth Theodora
3   | Integration Test         | Muhammad Haidar Hanif
4   | User Interface (UI) Test | Ekky Bayu Pramana
5   | User Acceptance Test     | Muhammad Patria
    |                          | Ruth Theodora

--------------------------------------------------------------------------------

## Test Environment (tools, system, databases)

This is a list of the testing tools, systems, and databases.

### List of Technologies

Tools:
- Git
- Gulp
- pm2
- Jasmine/Mocha/Cucumber
- [Gherkin syntax](https://cucumber.io/docs/reference): Gherkin is plain-text English (or one of 60+ other languages) with a little extra structure. Gherkin is designed to be easy to learn by non-programmers, yet structured enough to allow concise description of examples to illustrate business rules in most real-world domains.

System:
- Personal Laptop
- Personal Phone
- DigitalOcean VPS
- Travis CI

Database:
- MongoDB test database: arlin-test

--------------------------------------------------------------------------------

## Bug Tracking/Process/Resolution

During testing, the testing team members normally encounter behavior that goes against a specified or implied design requirement in the product.  When this happens, we will document and reproduce the bugs for the developers.

Expectation of a bug:
- Keep track of what version of the application the bug is found
- Determine if bug has already been written up
- Indicate the steps to reproduce the bug – write enough details for others looking at the bug to be able to duplicate it; exclude unnecessary steps (i.e. If access point is irrelevant, be more general in your steps).
- Actual results – be specific on your findings.
- Expected results – how the product should behave based on the specified or implied requirements.
- Implications – How does the defect affect the quality of the product?

### Impact and Definitions

The following detail defines the impact levels to be used when entering bugs.

1 – Fatal - Test Stopper: If you can’t access a function and need the bug to be fixed immediately.  The defect prevents QA from testing the feature area, sub-area or functionality of the feature.
2 – Serious - Beta Stopper: This is a bug that users would experience such as: data corruption, calculation errors, incorrect data, UE’s and system crash on common user scenarios, significant QA risk, and major UI defects.
3 – Minor - Live Release: A bug that must be fixed before the product is officially completed, UE’s or crashes, content, and UI and graphic changes required for release.

### Various Common Roles in Bug Resolution

- Author – The person who wrote the bug; this will be someone on the QA team
- Resolver – Normally an Engineer assigned to a specific area of the application.
- Verifier – normally a QA Engineer responsible for testing the fix and closing the bug.

--------------------------------------------------------------------------------

## Test Roles and Responsibilities

All team members have each roles to do their responsibilities. List of responsibilities are describe below:

- Provides technical direction.
- Provides the testing documentation
- Acquires testing resources.
- Assigns tasks to testing resources.
- Assigns each test type to members
- Documents test plan.
- Prepares the questionaire for UAT test
- Prepares the topic for discussion on UI test
- Ensures test environment and assets are installed, managed and maintained
- Prepares the Arlin features to be tested
- After Master Test Plan completed, prepares the scenario test
- Makes a scenario test documentation
- Executes test cases based on scenario test
- Communicates test results to other member
- Evaluates effectiveness of test effort

--------------------------------------------------------------------------------

## Test Milestones

This milestones include the critical test milestone dates for Arlin project.

Task and Milestone Date:

- Setup Test Environment Definition: April 4th, 2016
- Complete Test Environment Definition: April 7th, 2016
- Complete User Interface Testing: April 15th, 2016
- Complete User Acceptance Testing: April 15th, 2016
- Complete Unit Testing: April 22th, 2016
- Complete Functional Testing: April 22th, 2016
- Complete Integration Testing: April 22th, 2016

--------------------------------------------------------------------------------

## Document Approval

The signatures below acknowledge that the test plan outlined above is complete and accurate. Upon receiving written approval, the project team will proceed to the next step of the project. If anything changes during the execution of the project, the test plan will be updated and re-approved accordingly.

--------------------------------------------------------------------------------

## Document Tracking

All activities are recorded via Git and GitHub repositories here:
- [ASDE Michi](https://github.com/gunadarma-academy/asde-michi)
- [ASDE Michi Issues](https://github.com/gunadarma-academy/asde-michi/issues)
- [ASDE Michi Test](https://github.com/gunadarma-academy/asde-michi-test)
- [ASDE Michi App: Arlin Backend](https://github.com/gunadarma-academy/asde-michi-app)
- [ASDE Michi Web: Arlin Frontend](https://github.com/gunadarma-academy/asde-michi-web)
- [ASDE Michi Slide: Intro](https://github.com/gunadarma-academy/asde-michi-slide)
