# Master Test Plan for Arlin by Michi

Adapted from [Master Test Plan (v061111) by Northwestern University Information Technology (in DOCX format)](http://www.it.northwestern.edu/bin/docs/project-framework/Master_Test_Plan_v061111.docx).

--------------------------------------------------------------------------------

## Instruction

This document is used to define the details of the master test plan. Once the test plan is outlined, the document must be reviewed and approved by the lead technical representative on the project as well as the lead business representative on the project.  If anything related to the test plan changes during the execution and testing phase of the project, this document should be updated and re-approved by both parties.

--------------------------------------------------------------------------------

## Test Scope

This test plan will test all the requirements for Arlin version 1.0 and beyond (>=2.0), which will be tested by the Michi team for evaluate and verify that the product (Arlin) meet the functional, performance and design. This Master Test Plan covers unit, functional, integration, end-to-end (E2E), user interface, and user acceptance test.

--------------------------------------------------------------------------------

## Test Features/Scopes and Strategy Responsibilities

This is a description of the features/scopes also with their responsibilities that will be tested within the scope of the test plan. The list represents what will be tested as well as the individuals/groups involved with the testing activities.

| Test Scopes | Responsible person
| ----------- | ------------------
| Authentication, Sign up, Sign in | Muhammad Patria
| Posting question, Posting answer, List all questions, and List question’s answers | Ruth Theodora
| User Acceptance Test     | Muhammad Patria, Ruth Theodora
| Unit/Functional/Integration/E2E Test | Muhammad Haidar Hanif, Ekky Bayu Pramana

--------------------------------------------------------------------------------

## Test Inputs/Outputs

The supposed inputs/outputs (I/O) that will be used to assist with the testing effort and a list of the outputs that will be delivered from the testing effort; are all in the feature files using Gherkin syntax. [See them here](https://github.com/gunadarma-academy/asde-michi-test/tree/master/features).

--------------------------------------------------------------------------------

## Test Strategy

### Unit and Functional Testing

A unit test is a quality measurement and evaluation procedure applied in most enterprise software development activities. Generally, a unit test evaluates how software code complies with the overall objective of the software/application/program and how its fitness affects other smaller units. Unit tests may be performed manually - by one or more developer - or through an automated software solution.

When tested, each unit is isolated from the primary program or interface. Unit tests are typically performed after development and prior to publishing, thus facilitating integration and early problem detection. The size or scope of a unit varies by programming language, software application, and testing objectives.

Functional testing is primarily is used to verify that a piece of software is providing the same output as required by the end-user or business. Typically, functional testing involves evaluating and comparing each software function with the business requirements. The software is tested by providing it with some related input so that the output can be evaluated to see how it conforms, relates or varies compared to its base requirements. Moreover, functional testing also checks the software for usability, such as by ensuring that the navigational functions are working as required.

We can say that functional tests could contain many unit tests. In this particular project, they're coupled together and can be run asynchronously. Using Mocha test framework with the help of Chai assertion library, we can treat them as a test suite.

### Continous Integration (CI) Build and Test

Integration testing itself is a software testing methodology used to test individual software components or units of code to verify the interaction between various software components and detect interface defects. Components are tested as a single group or organized in an iterative manner. While the practice of CI (build and test) in software engineering, is merging all developer working copies with a shared mainline several times a day, mostly automated by CI server.

### User Interface Test

> Since presumably the time is very limited, we didn't commence this test.

User interface test (UIT) is a testing technique used to identify the presence of defects is a product/software under test by using graphical user interface. The characteristics of the test include a thorough check of the properties on each GUI object, as well as to make sure the graphical representation is consistent with the expected result of the test. The test conducted by asking participants to exercise some simple tasks that represent each of the elements, objects, events, and navigations while each actions is recorded.

### End-to-End (E2E) Test

End-to-End testing is a technique used to test whether the flow of an application right from start to finish is behaving as expected. The purpose of performing end-to-end testing is to identify system dependencies and to ensure that the data integrity is maintained between various system components and systems. The entire application is tested for critical functionalities such as communicating with the other systems, interfaces, database, network, and other applications. Within the [`test`](https://github.com/gunadarma-academy/asde-michi-test) repo, we're running the feature files (along with their step definitions) to run our E2E test. The testing flow itself is [in its own section](https://github.com/gunadarma-academy/asde-michi-test#testing-flow).

### User Acceptance Test

User acceptance testing (UAT) is a test conducted to determine if the requirements of a specification or to verify if specific requirements are working for the user. User acceptance tests are useful because they capture user requirements in a directly verifiable way, identify problems which unit or integration tests might have missed, and provide an overview of how “done” the system is. UAT typically performed by Regular User, this tests all changed functionality of a system from the end-user perspective. Particularly, we're interviewing user and getting their responses to improve our application.

--------------------------------------------------------------------------------

## Test Environment (tools, system, databases)

This is a quick list of the testing tools, systems, and databases.

### List of Technologies

Tools:
- Git
- Webpack
- pm2
- Mocha.js, Chai.js, Jasmine, Karma, Cucumber.js
  - [Gherkin syntax](https://cucumber.io/docs/reference): Gherkin is plain-text English (or one of 60+ other languages) with a little extra structure. Gherkin is designed to be easy to learn by non-programmers, yet structured enough to allow concise description of examples to illustrate business rules in most real-world domains.

System:
- Personal Laptop
- Personal Phone
- DigitalOcean VPS
- Codeship or Snap CI

Database:
- NeDB mock database: arlin-test

--------------------------------------------------------------------------------

## Bug Tracking/Process/Resolution

> We haven't got any bug report from external party yet.

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
- Provides the testing documentation.
- Acquires testing resources.
- Assigns tasks to testing resources.
- Assigns each test type to members.
- Documents test plan.
- Prepares the questionaire for UAT test.
- Prepares the topic for discussion on UI test.
- Ensures test environment and assets are installed, managed and maintained.
- Prepares the features to be tested.
- After Master Test Plan completed, prepares the scenario test.
- Makes a scenario test documentation.
- Executes test cases based on scenario test.
- Communicates test results to other member.
- Evaluates effectiveness of test effort.

--------------------------------------------------------------------------------

## Test Milestones

This milestones include the critical test milestone dates for Arlin project.

Task and Milestone Date:

- Setup Test Environment Definition: April 4th, 2016
- Complete Test Environment Definition: April 7th, 2016
- Complete User Acceptance Testing: April 24th, 2016
- Complete Unit and Functional Testing: April 24th, 2016
- Complete Continuous Integration Testing: April 24th, 2016

--------------------------------------------------------------------------------

## Document Approval

> Only when necessary.

The signatures below acknowledge that the test plan outlined above is complete and accurate. Upon receiving written approval, the project team will proceed to the next step of the project. If anything changes during the execution of the project, the test plan will be updated and re-approved accordingly.

--------------------------------------------------------------------------------

## Document Tracking

`ASDE Michi` also sometimes can be aliased as just `Arlin`. All activities are recorded via Git and GitHub repositories here:
- [ASDE Michi](https://github.com/gunadarma-academy/asde-michi)
- [ASDE Michi Issues](https://github.com/gunadarma-academy/asde-michi/issues)
- [ASDE Michi Slide: Intro](https://github.com/gunadarma-academy/asde-michi-slide)
- [ASDE Michi Backend](https://github.com/gunadarma-academy/asde-michi-app)
- [ASDE Michi Frontend](https://github.com/gunadarma-academy/asde-michi-web)
- [ASDE Michi Test](https://github.com/gunadarma-academy/asde-michi-test)

--------------------------------------------------------------------------------

## References

- http://googletesting.blogspot.co.id/2015/04/just-say-no-to-more-end-to-end-tests.html
