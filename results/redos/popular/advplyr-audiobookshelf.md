### advplyr/audiobookshelf

[server/controllers/LibraryController.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryController.js#L628C65-L628C114)

<pre><code class="javascript">    // TODO: Temporary way of handling collapse sub-series. Either remove feature or handle through sql queries
    const filterByGroup = payload.filterBy?.split('.').shift()
    const filterByValue = filterByGroup ? libraryFilters.decode(<strong>payload.filterBy.replace(`${filterByGroup}.`, '')</strong>) : null
    if (filterByGroup === 'series' &amp;&amp; filterByValue !== 'no-series' &amp;&amp; payload.collapseseries) {
      const seriesId = libraryFilters.decode(payload.filterBy.split('.')[1])
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.query.filter](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryController.js#L617C17-L617C33), String source: [req.query.filter](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryController.js#L617C17-L617C33).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L523C21-L523C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L523C21-L523C29).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L523C21-L523C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L523C21-L523C29), String source: [query[paramName]](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/utils/index.js#L327C17-L327C33).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L523C21-L523C29).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [query[paramName]](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/utils/index.js#L327C17-L327C33).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [query[paramName]](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/utils/index.js#L327C17-L327C33), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L523C21-L523C29).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [query[paramName]](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/utils/index.js#L327C17-L327C33), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/finders/BookFinder.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/finders/BookFinder.js#L292C47-L292C87)

<pre><code class="javascript">      const authorRe = new RegExp(`(^| | by |)${escapeRegExp(this.cleanAuthor)}(?= |$)`, 'g')
      const authorCleanedTitle = cleanAuthorForCompares(title)
      const authorCleanedTitleWithoutAuthor = <strong>authorCleanedTitle.replace(authorRe, '')</strong>
      if (authorCleanedTitleWithoutAuthor !== authorCleanedTitle) {
        return authorCleanedTitleWithoutAuthor.trim()
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [query[paramName]](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/utils/index.js#L327C17-L327C33), String source: [query[paramName]](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/utils/index.js#L327C17-L327C33).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/MiscController.js#L603C24-L603C32).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L209C26-L209C34).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/LibraryItemController.js#L632C28-L632C36).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/controllers/PodcastController.js#L45C21-L45C29).*

----------------------------------------

[server/libs/nodeCron/convert-expression/range-conversion.js](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/nodeCron/convert-expression/range-conversion.js#L18C16-L18C73)

<pre><code class="javascript">        }

        return <strong>expression.replace(new RegExp(text, 'i'), numbers.join())</strong>;
    }

</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69), String source: [req.body](https://github.com/advplyr/audiobookshelf/blob/c009db9f2889d8ccec4437c50ab357c5183226dd/server/libs/expressFileupload/processMultipart.js#L46C61-L46C69).*

----------------------------------------

| mce |  | patternSource |  | stringSource |  |
| --- | --- | --- | --- | --- | --- |
| `payload ... .`, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.query.filter` | `req.query.filter` | `req.query.filter` | `req.query.filter` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `query[paramName]` | `query[paramName]` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `query[paramName]` | `query[paramName]` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `query[paramName]` | `query[paramName]` | `req.body` | `req.body` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `query[paramName]` | `query[paramName]` | `req.body` | `req.body` |
| `authorC ... Re, '')` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `query[paramName]` | `query[paramName]` | `query[paramName]` | `query[paramName]` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |
| `express ... join())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `req.body` | `req.body` | `req.body` | `req.body` |