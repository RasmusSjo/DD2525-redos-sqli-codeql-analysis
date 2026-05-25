### NaiboWang/EasySpider

[ElectronJS/main.js](https://github.com/NaiboWang/EasySpider/blob/676486bc67108b8f7f483568e0e39b5c63dcb4ba/ElectronJS/main.js#L776C39-L776C91)

<pre><code class="javascript">                            let jsReplacedText = await execute_js(match[1], null, 0);
                            // 替换匹配到的 JS 语句
                            keyInfo = <strong>keyInfo.replace(match[0], jsReplacedText.toString())</strong>;
                        }
                    }
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [message](https://github.com/NaiboWang/EasySpider/blob/676486bc67108b8f7f483568e0e39b5c63dcb4ba/ElectronJS/main.js#L1272C38-L1272C45), String source: [message](https://github.com/NaiboWang/EasySpider/blob/676486bc67108b8f7f483568e0e39b5c63dcb4ba/ElectronJS/main.js#L1272C38-L1272C45).*

----------------------------------------

[ElectronJS/src/taskGrid/logic.js](https://github.com/NaiboWang/EasySpider/blob/676486bc67108b8f7f483568e0e39b5c63dcb4ba/ElectronJS/src/taskGrid/logic.js#L663C30-L663C90)

<pre><code class="javascript">                let currentUrl = window.location.href;
                let id = getUrlParam("id");
                let newUrl = <strong>currentUrl.replace("id=" + id, "id=" + result + "&amp;saveAs=1")</strong>;
                window.location.href = newUrl;
            }
</code></pre>

*REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: [window. ... .search](https://github.com/NaiboWang/EasySpider/blob/676486bc67108b8f7f483568e0e39b5c63dcb4ba/ElectronJS/src/taskGrid/global.js#L39C13-L39C35), String source: [window.location.href](https://github.com/NaiboWang/EasySpider/blob/676486bc67108b8f7f483568e0e39b5c63dcb4ba/ElectronJS/src/taskGrid/logic.js#L661C34-L661C54).*

----------------------------------------

| mce |  | patternSource |  | stringSource |  |
| --- | --- | --- | --- | --- | --- |
| `keyInfo ... ring())` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `message` | `message` | `message` | `message` |
| `current ... eAs=1")` | `REDoS Hazard: Both the search pattern and the target string are user-controlled. Pattern source: $@, String source: $@.` | `window. ... .search` | `window. ... .search` | `window.location.href` | `window.location.href` |