Arlin Testing Suite by Michi
============================

Full | Backend | Frontend
-----|---------|---------
[![Full Stack Build Status](https://snap-ci.com/gunadarma-academy/asde-michi-test/branch/master/build_image)](https://snap-ci.com/gunadarma-academy/asde-michi-test/branch/master) | [![Backend Build Status](https://snap-ci.com/gunadarma-academy/asde-michi-backend/branch/master/build_image)](https://snap-ci.com/gunadarma-academy/asde-michi-backend/branch/master) | [![Frontend Build Status](https://snap-ci.com/gunadarma-academy/asde-michi-frontend/branch/master/build_image)](https://snap-ci.com/gunadarma-academy/asde-michi-frontend/branch/master) |

Introduction
------------

> Testing suite layer for Arlin.

This repo is now only for things that are related to code or data management. It contains `backend` and `frontend` module to have the integration test. For things like test reports, please [refer to the parent repo here](https://github.com/gunadarma-academy/asde-michi/tree/master/reports).

Most documents are created using Markdown, and could be converted into PDF. Use [`pandoc`](http://johnmacfarlane.net/pandoc) to convert files from one markup format into another. For feature files, they're using [Gherkin syntax](https://github.com/cucumber/cucumber/wiki/Gherkin) to be run with [Cucumber](https://cucumber.io).

This relates to [issue #2](https://github.com/gunadarma-academy/asde-michi/issues/2) and [issue #32](https://github.com/gunadarma-academy/asde-michi/issues/32) in the [parent repo of ASDE Michi](https://github.com/gunadarma-academy/asde-michi). Most of the details are also described in [PROJECT-MANAGEMENT](https://github.com/gunadarma-academy/asde-michi/blob/master/docs/project-management.markdown).

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

Getting Started
---------------

> Some of them adapted from/for and more detailed in [backend repo](http://github.com/gunadarma-academy/asde-michi-backend) and [frontend repo](http://github.com/gunadarma-academy/asde-michi-frontend).

### Requirements

+ Terminal and shell
+ [Git](http://git-scm.com)
+ Modern code editor ([Atom](https://atom.io) or [Sublime](https://sublimetext.com))
+ Modern web browser (Google Chrome or Firefox)
+ [Node.js](http://nodejs.org): JavaScript in the server/backend LTS

### Installation

+ Install Node.js from your prefered way, or from <http://nodejs.org>
  + It's also recommended to [use Node Version Manager (nvm)](https://github.com/creationix/nvm)
+ Install required npm packages/modules with `npm install` within this repo
+ Install and update required CLI globally:
  + `npm install -g cucumber mocha jasmine karma-cli gulp grunt feathers vue-cli`)

### Testing Flow

Start all apps for each `frontend` and `backend`, with just `npm start` in this repo or use `npm run <script>` for below:

```
start: Notice to use npm test, install:all, start:all, and test:all
stop: Stop all apps
test: Test integration of apps with various test runners
install:all: npm install for backend and frontend
start:all: start backend and frontend app
test:all: start backend and frontend app
```

Preferred flow:

```
npm run install:all
npm run start:all
npm run test:all
npm run test
```

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

References
----------

+ [Snap CI](https://snap-ci.com)
+ [Cucumber Reference](https://cucumber.io/docs/reference)

*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *

License
-------

Arlin App by Michi is Copyright (c) 2016 Michi Team and licenced under the MIT licence. All rights not explicitly granted in the MIT license are reserved. See the parent [LICENSE.markdown](https://github.com/gunadarma-academy/asde-michi/blob/master/LICENSE.markdown) file for more details.
