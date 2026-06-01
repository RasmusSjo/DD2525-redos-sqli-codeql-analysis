### department-of-veterans-affairs/vets-website

[src/applications/accredited-representative-portal/containers/AuthCallbackHandler.jsx](https://github.com/department-of-veterans-affairs/vets-website/blob/8576cacf0f6d9b6a5033581d1ada5ab760222b3b/src/applications/accredited-representative-portal/containers/AuthCallbackHandler.jsx#L186C7-L186C34)

<pre><code class="javascript">
      // Redirect to the destination computed earlier (defaults to POA requests)
      <strong>window.location.replace(to)</strong>;
      return null; // Return null since the page will reload
    } catch (error) {
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window. ... .search](https://github.com/department-of-veterans-affairs/vets-website/blob/8576cacf0f6d9b6a5033581d1ada5ab760222b3b/src/applications/accredited-representative-portal/containers/AuthCallbackHandler.jsx#L139C44-L139C66), String source: [window.location](https://github.com/department-of-veterans-affairs/vets-website/blob/8576cacf0f6d9b6a5033581d1ada5ab760222b3b/src/applications/accredited-representative-portal/containers/AuthCallbackHandler.jsx#L186C7-L186C22).*

----------------------------------------

| mce |  | patternSource |  | stringSource |  |
| --- | --- | --- | --- | --- | --- |
| `window. ... ace(to)` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window. ... .search` | `window. ... .search` | `window.location` | `window.location` |