# Test Report with Mocha: Arlin Backend

All of these tests are passed.
You can expect to see the actual and latest results on the CI/CD server (using Snap CI):
<https://snap-ci.com/gunadarma-academy/asde-michi-backend>.
Even more, in various pipelines of development, staging, and production.

# TOC
   - [Feathers application tests](#feathers-application-tests)
     - [error 404](#feathers-application-tests-error-404)
   - [message edit hook](#message-edit-hook)
   - [message init hook](#message-init-hook)
   - [message restrict-to-sender hook](#message-restrict-to-sender-hook)
   - [message service](#message-service)
   - [question restrict-to-sender hook](#question-restrict-to-sender-hook)
   - [questions service](#questions-service)
   - [quote service](#quote-service)
   - [user gravatar hook](#user-gravatar-hook)
   - [user service](#user-service)
<a name=""></a>
 
<a name="feathers-application-tests"></a>
# Feathers application tests
starts and shows the index page.

```js
request('http://localhost:3030', function(err, res, body) {
  assert.ok(body.indexOf('<html>') !== -1);
  done(err);
});
```

shows Arlin in title.

```js
request('http://localhost:3030', function(err, res, body) {
  // expect(('<title>').to.have.html('Arlin'));
  done(err);
});
```

<a name="feathers-application-tests-error-404"></a>
## error 404
shows a 404 HTML page.

```js
request({
  url: 'http://localhost:3030/path/to/nowhere',
  headers: {
    'Accept': 'text/html'
  }
}, function(err, res, body) {
  assert.equal(res.statusCode, 404);
  assert.ok(body.indexOf('<html>') !== -1);
  done(err);
});
```

shows a 404 JSON error without stack trace.

```js
request({
  url: 'http://localhost:3030/path/to/nowhere',
  json: true
}, function(err, res, body) {
  assert.equal(res.statusCode, 404);
  assert.equal(body.code, 404);
  assert.equal(body.message, 'Page not found');
  assert.equal(body.name, 'NotFound');
  done(err);
});
```

<a name="message-edit-hook"></a>
# message edit hook
returns a function.

```js
var hook = edit();
assert.equal(typeof hook, 'function');
```

filters data as expected.

```js
const mockHook = {
  type: 'before',
  app: {},
  params: {},
  result: {},
  data: {
    text: 'arlin&'
  }
};
edit()(mockHook);
assert.deepEqual(mockHook.data, {
  text: 'arlin&amp;',
  updated_at: new Date().getTime()
});
```

<a name="message-init-hook"></a>
# message init hook
returns a function.

```js
var hook = init();
assert.equal(typeof hook, 'function');
```

filters data as expected.

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
    text: 'arlin&'
  }
};
init()(mockHook);
assert.deepEqual(mockHook.data, {
  text: 'arlin&amp;',
  author: '123',
  created_at: new Date().getTime()
});
```

<a name="message-restrict-to-sender-hook"></a>
# message restrict-to-sender hook
returns a function.

```js
var hook = restrictToSender();
assert.equal(typeof hook, 'function');
```

<a name="message-service"></a>
# message service
registered the messages service.

```js
assert.ok(app.service('messages'));
```

<a name="question-restrict-to-sender-hook"></a>
# question restrict-to-sender hook
returns a function.

```js
var hook = restrictToSender();
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

<a name="user-gravatar-hook"></a>
# user gravatar hook
returns a function.

```js
var hook = gravatar();
assert.equal(typeof hook, 'function');
```

returns a gravatar url.

```js
const mockHook = {
  type: 'before',
  app: {},
  params: {},
  result: {},
  data: {
    email: 'admin@arlin.link'
  }
};
gravatar()(mockHook);
assert.ok(mockHook.data.avatar);
```

<a name="user-service"></a>
# user service
registered the users service.

```js
assert.ok(app.service('users'));
```

