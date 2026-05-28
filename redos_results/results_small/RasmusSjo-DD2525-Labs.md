### RasmusSjo/DD2525-Labs

[lab2/forumerly/routes/auth.js](https://github.com/RasmusSjo/DD2525-Labs/blob/4aefae7be5a87226caa784fa90059040db5718b9/lab2/forumerly/routes/auth.js#L16C7-L16C23)

<pre><code class="javascript">  //console.log(pass, name)
  // validate password
  if (<strong>pass.match(name)</strong>) {
    req.flash('error', 'Do not include name in password.')
    req.flash('message', 'Do not include name in password.')
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/RasmusSjo/DD2525-Labs/blob/4aefae7be5a87226caa784fa90059040db5718b9/lab2/forumerly/routes/auth.js#L12C14-L12C22), String source: [req.body](https://github.com/RasmusSjo/DD2525-Labs/blob/4aefae7be5a87226caa784fa90059040db5718b9/lab2/forumerly/routes/auth.js#L11C14-L11C22).*

----------------------------------------

[lab2/patched/forumerly/routes/auth.js](https://github.com/RasmusSjo/DD2525-Labs/blob/4aefae7be5a87226caa784fa90059040db5718b9/lab2/patched/forumerly/routes/auth.js#L16C7-L16C23)

<pre><code class="javascript">  //console.log(pass, name)
  // validate password
  if (<strong>pass.match(name)</strong>) {
    req.flash('error', 'Do not include name in password.')
    req.flash('message', 'Do not include name in password.')
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/RasmusSjo/DD2525-Labs/blob/4aefae7be5a87226caa784fa90059040db5718b9/lab2/patched/forumerly/routes/auth.js#L12C14-L12C22), String source: [req.body](https://github.com/RasmusSjo/DD2525-Labs/blob/4aefae7be5a87226caa784fa90059040db5718b9/lab2/patched/forumerly/routes/auth.js#L11C14-L11C22).*

----------------------------------------

| mce |  | patternSource |  | stringSource |  |
| --- | --- | --- | --- | --- | --- |
| `pass.match(name)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `pass.match(name)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |