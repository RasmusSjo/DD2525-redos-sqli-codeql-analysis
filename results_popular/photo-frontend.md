### photo/frontend

[src/html/assets/javascripts/releases/4.0.2/tbx.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1659C9-L1659C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38).*

----------------------------------------

[src/html/assets/javascripts/releases/4.0.2/tbx.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1659C9-L1659C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38).*

----------------------------------------

[src/html/assets/javascripts/releases/4.0.2/tbx.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1659C9-L1659C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [location.href](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1658C20-L1658C33), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38).*

----------------------------------------

[src/html/assets/javascripts/releases/4.0.2/tbx.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1659C9-L1659C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [location.href](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1658C20-L1658C33), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38).*

----------------------------------------

[src/html/assets/javascripts/releases/4.0.2/tbx.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1659C9-L1659C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38).*

----------------------------------------

[src/html/assets/javascripts/releases/4.0.2/tbx.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1659C9-L1659C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38).*

----------------------------------------

[src/html/assets/themes/fabrizio1.0/javascripts/backbone.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1254C9-L1254C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38).*

----------------------------------------

[src/html/assets/themes/fabrizio1.0/javascripts/backbone.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1254C9-L1254C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38).*

----------------------------------------

[src/html/assets/themes/fabrizio1.0/javascripts/backbone.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1254C9-L1254C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38).*

----------------------------------------

[src/html/assets/themes/fabrizio1.0/javascripts/backbone.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1254C9-L1254C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38).*

----------------------------------------

[src/html/assets/themes/fabrizio1.0/javascripts/backbone.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1254C9-L1254C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [location.href](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1253C20-L1253C33), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/javascripts/releases/4.0.2/tbx.js#L1467C23-L1467C38).*

----------------------------------------

[src/html/assets/themes/fabrizio1.0/javascripts/backbone.js](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1254C9-L1254C48)

<pre><code class="javascript">      if (replace) {
        var href = location.href.replace(/(javascript:|#).*$/, '');
        <strong>location.replace(href + '#' + fragment)</strong>;
      } else {
        // #1649 - Some browsers require that `hash` contains a leading #.
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [location.href](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1253C20-L1253C33), String source: [window.location](https://github.com/photo/frontend/blob/742b8edbe11e6e0cf92148c56b77d29696d078c3/src/html/assets/themes/fabrizio1.0/javascripts/backbone.js#L1062C23-L1062C38).*

----------------------------------------

| mce |  | patternSource |  | stringSource |  |
| --- | --- | --- | --- | --- | --- |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `location.href` | `location.href` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `location.href` | `location.href` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location` | `window.location` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `location.href` | `location.href` | `window.location` | `window.location` |
| `locatio ... agment)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `location.href` | `location.href` | `window.location` | `window.location` |