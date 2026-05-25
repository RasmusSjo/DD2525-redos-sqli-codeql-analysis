### apache/dolphinscheduler-website

[public/404.html](https://github.com/apache/dolphinscheduler-website/blob/3c1ca9301a648e2aa9ed11e718d630d098c7f6fc/public/404.html#L37C11-L39C12)

<pre><code class="javascript">        if (href.includes("blog")) {
          const matchedName = /blog\/(.*?).html/.exec(href);
          <strong>window.location.replace(</strong>
<strong>            `/${lang}/blog${matchedName ? "/" + matchedName[1] : ""}`</strong>
<strong>          )</strong>;
          return;
        }
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location.href](https://github.com/apache/dolphinscheduler-website/blob/3c1ca9301a648e2aa9ed11e718d630d098c7f6fc/public/404.html#L29C22-L29C42), String source: [window.location](https://github.com/apache/dolphinscheduler-website/blob/3c1ca9301a648e2aa9ed11e718d630d098c7f6fc/public/404.html#L37C11-L37C26).*

----------------------------------------

[public/404.html](https://github.com/apache/dolphinscheduler-website/blob/3c1ca9301a648e2aa9ed11e718d630d098c7f6fc/public/404.html#L47C11-L47C39)

<pre><code class="javascript">            .replace(/\/user_doc/, "")
            .replace(lang, `/${lang}`);
          <strong>window.location.replace(url)</strong>;
          return;
        }
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window.location.href](https://github.com/apache/dolphinscheduler-website/blob/3c1ca9301a648e2aa9ed11e718d630d098c7f6fc/public/404.html#L29C22-L29C42), String source: [window.location](https://github.com/apache/dolphinscheduler-website/blob/3c1ca9301a648e2aa9ed11e718d630d098c7f6fc/public/404.html#L47C11-L47C26).*

----------------------------------------

| mce |  | patternSource |  | stringSource |  |
| --- | --- | --- | --- | --- | --- |
| `window. ...       )` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location.href` | `window.location.href` | `window.location` | `window.location` |
| `window. ... ce(url)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window.location.href` | `window.location.href` | `window.location` | `window.location` |