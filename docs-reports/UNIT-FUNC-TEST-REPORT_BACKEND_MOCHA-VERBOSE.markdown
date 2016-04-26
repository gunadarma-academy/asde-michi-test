# Test Report Template: Backend with Mocha and Chai (Verbose)

All of these tests are passed.
You can expect to see the actual and latest results on the CI/CD server (using Snap CI):

- <https://snap-ci.com/gunadarma-academy/asde-michi-backend>

Even more in various pipelines of development, staging, and production.

# Result (26/04/2016)

## TOC
   - [global hooks](#global-hooks)
   - [Arlin backend/server application tests](#arlin-backendserver-application-tests)
     - [error 404](#arlin-backendserver-application-tests-error-404)
   - [question edit hook](#question-edit-hook)
   - [question restrict-to-author hook](#question-restrict-to-author-hook)
   - [question setAuthor hook](#question-setauthor-hook)
   - [questions service](#questions-service)
   - [quote service](#quote-service)
   - [user edit hook](#user-edit-hook)
   - [user service](#user-service)
<a name=""></a>

<a name="global-hooks"></a>
# global hooks
myHooks can be used.

```js
const mockHook = {
  type: {},
  app: {},
  params: {},
  result: {},
  data: {}
};
// globalHooks.myHook()(mockHook);
// assert.ok(mockHook.globalHooks.myHook);
```

addUpdatedAt can be used.

```js
const mockHook = {
  type: {},
  app: {},
  params: {},
  result: {},
  data: {}
};
// globalHooks.addUpdatedAt()(mockHook);
// assert.ok(mockHook.globalHooks.addUpdatedAt);
```

<a name="arlin-backendserver-application-tests"></a>
# Arlin backend/server application tests
starts and shows nothing at the index page.

```js
request('http://localhost:3030', function (err, res, body) {
  assert.ok(body.indexOf('<html>') === -1);
  done(err);
});
```

<a name="arlin-backendserver-application-tests-error-404"></a>
## error 404
shows a 404 HTML page.

```js
request({
  url: 'http://localhost:3030/404',
  headers: {
    'Accept': 'text/html'
  }
}, function (err, res, body) {
  assert.equal(res.statusCode, 404);
  assert.ok(body.indexOf('<html>') !== -1);
  done(err);
});
```

shows a 404 JSON error without stack trace.

```js
request({
  url: 'http://localhost:3030/404',
  json: true
}, function (err, res, body) {
  assert.equal(res.statusCode, 404);
  assert.equal(body.code, 404);
  assert.equal(body.message, 'Page not found');
  assert.equal(body.name, 'NotFound');
  done(err);
});
```

<a name="question-edit-hook"></a>
# question edit hook
type of hook returns a function.

```js
var hook = edit();
assert.equal(typeof hook, 'function');
```

edit title and description.

```js
const mockHook = {
  type: 'before',
  app: {},
  params: {
    user: {
      _id: '123'
    }
  },
  result: {},
  data: {
    title: 'Jalan kaki di Jakarta',
    description: 'Cara jalan kaki di Jakarta yang aman gimana ya?'
  }
};
edit()(mockHook);
assert.deepEqual(mockHook.data, {
  title: 'Jalan kaki di Jakarta',
  description: 'Cara jalan kaki di Jakarta yang aman gimana ya?'
});
```

<a name="question-restrict-to-author-hook"></a>
# question restrict-to-author hook
returns a function.

```js
var hook = restrictToAuthor();
assert.equal(typeof hook, 'function');
```

<a name="question-setauthor-hook"></a>
# question setAuthor hook
type of hook returns a function.

```js
var hook = setAuthor();
assert.equal(typeof hook, 'function');
```

<a name="questions-service"></a>
# questions service
registered the questions service.

```js
assert.ok(app.service('questions'));
```

<a name="quote-service"></a>
# quote service
registered the quotes service.

```js
assert.ok(app.service('quotes'));
```

<a name="user-edit-hook"></a>
# user edit hook
type of hook returns a function.

```js
var hook = edit();
assert.equal(typeof hook, 'function');
```

edit email and username.

```js
const mockHook = {
  type: 'before',
  app: {},
  params: {
    user: {
      _id: '123',
    },
  },
  result: {},
  data: {
    email: 'administrator@arlin.link',
    username: 'administrator'
  }
};
edit()(mockHook);
assert.deepEqual(mockHook.data, {
  email: 'administrator@arlin.link',
  username: 'administrator'
});
```

<a name="user-service"></a>
# user service
registered the users service.

```js
assert.ok(app.service('users'));
```
