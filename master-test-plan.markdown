# Master Test Plan for Arlin by Michi
Adapted from [Master Test Plan (v061111) by Northwestern University Information Technology](http://www.it.northwestern.edu/bin/docs/project-framework/Master_Test_Plan_v061111.docx).

## Instruction
This document is used to define the details of the master test plan. Once the test plan is outlined, the document must be reviewed and approved by the lead technical representative on the project as well as the lead business representative on the project.  If anything related to the test plan changes during the execution and testing phase of the project, this document should be updated and re-approved by both parties.

## Test Scope
This section is used to provide a high-level description of the business processes to be tested and a high-level description of the type of testing required for this project.   It also defines what is not in scope for the testing phase of the project.

Example:

> This test plan will test all the requirements for System A release 1.1 with the exception of requirement nnn, which will be tested by the xxxx team for xxxx reasons.  This Master Test Plan covers integration, user acceptance, and regression testing.  

> It will not include unit testing, which will be performed by the external vendor, ZZZ.  It will not include user certification testing, which will be performed by the Finance Team.

--------------------------------------------------------------------------------

## Test Features
This is a description of the features that will be tested within the scope of the test plan. The list represents what will be tested as well as the individuals/groups involved with the testing activities.

Example:

BR# | Feature | Responsible person
--- | ------- | ------------------
1   | ABC     | Ruth
2   | DEF     | Ekky
3   | GHI     | Patria
4   | XYZ     | Haidar

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
This is a description of the recommended testing approach for this project. This describes "how" the test items and features will be tested.

Example:

Test Types:
- Unit Test: ...
- Functional Test: ...
- Integration Test: This type tests all changed functionality end to end
- User Acceptance Test: Typically performed by Regular User, this tests all changed functionality of a system from the end-user perspective

--------------------------------------------------------------------------------

## Test Environment (tools, system, databases)
This is a list of the testing tools, systems, and databases.

### List of Technologies

Tools:
- Git
- Gulp
- pm2
- Jasmine/Mocha

System:
- Personal Laptop
- Personal Phone
- DigitalOcean VPS
- Travis CI

Database:
- MongoDB test database: test

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

The following detail defines the impact levels to be used when entering bugs.

### Impact and Definitions

1 – Fatal - Test Stopper: If you can’t access a function and need the bug to be fixed immediately.  The defect prevents QA from testing the feature area, sub-area or functionality of the feature.
2 – Serious - Beta Stopper: This is a bug that users would experience such as: data corruption, calculation errors, incorrect data, UE’s and system crash on common user scenarios, significant QA risk, and major UI defects.
3 – Minor - Live Release: A bug that must be fixed before the product is officially completed, UE’s or crashes, content, and UI and graphic changes required for release.

### Various Common Roles in Bug Resolution

- Author – The person who wrote the bug; this will be someone on the QA team
- Resolver – Normally an Engineer assigned to a specific area of the application.
- Verifier – normally a QA Engineer responsible for testing the fix and closing the bug.

--------------------------------------------------------------------------------

## Test Roles and Responsibilities
This is a list of the testing roles and responsibilities.  

Example:

> Responsibilities
  - Provides technical direction.
  - Acquires testing resources.
  - Assigns tasks to testing resources.
  - Communicates test results to management.
  - Documents test plan.
  - Identifies, documents and prioritizes test cases.
  - Evaluates effectiveness of test effort.
  - Executes test cases, logs defects, and documents test results.
  - Ensures test environment and assets are installed, managed and maintained.  
  - Includes administration of testing ids.

--------------------------------------------------------------------------------

## Test Milestones
This is a list of the critical test milestone dates.  Be sure to include these dates in the overall project plan.

Example:

> Task and Milestone Date
  - Setup Test Environment: 07/31/05
  - Complete Unit Testing: 08/31/05
  - Complete Integration Testing: 09/30/05
  - Complete User Acceptance Testing: 10/31/05
  - Complete Regression Testing: 11/30/05
  - Complete User Certification Testing: 12/31/05

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
