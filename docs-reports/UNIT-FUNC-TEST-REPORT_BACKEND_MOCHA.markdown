# Test Report Template: Backend with Mocha and Chai

All of these tests are passed.
You can expect to see the actual and latest results on the CI/CD server (using Snap CI):

- <https://snap-ci.com/gunadarma-academy/asde-michi-backend>

Even more in various pipelines of development, staging, and production.

# Result (26/04/2016)

```
Arlin backend app running at http://127.0.0.1:3030

  global hooks
    ✓ myHooks can be used
    ✓ addUpdatedAt can be used

  Arlin backend/server application tests
info: (404) Route: / - Page not found
    ✓ starts and shows nothing at the index page (41ms)
    error 404
info: (404) Route: /404 - Page not found
      ✓ shows a 404 HTML page
info: (404) Route: /404 - Page not found
      ✓ shows a 404 JSON error without stack trace

  question edit hook
    ✓ type of hook returns a function
    ✓ edit title and description

  question restrict-to-author hook
    ✓ returns a function

  question setAuthor hook
    ✓ type of hook returns a function

  questions service
    ✓ registered the questions service

  quote service
    ✓ registered the quotes service

  user edit hook
    ✓ type of hook returns a function
    ✓ edit email and username

  user service
    ✓ registered the users service

  14 passing (503ms)
```
