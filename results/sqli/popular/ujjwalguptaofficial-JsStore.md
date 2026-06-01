### ujjwalguptaofficial/JsStore

[src/worker/index.ts](https://github.com/ujjwalguptaofficial/JsStore/blob/efbb7f16f77d71dbfe54fa631305c47f776efdfe/src/worker/index.ts#L8C21-L8C27)

<pre><code class="javascript">    const manager = new QueryManager();
    (self as any).onmessage = function (e) {
        manager.run(<strong>e.data</strong>);
    };
}
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 3 steps</summary>

1. [src/worker/index.ts](https://github.com/ujjwalguptaofficial/JsStore/blob/efbb7f16f77d71dbfe54fa631305c47f776efdfe/src/worker/index.ts#L7C41-L7C42)
   <pre><code class="javascript">if (IS_WORKER) {
       const manager = new QueryManager();
       (self as any).onmessage = function (<strong>e</strong>) {
           manager.run(e.data);
       };
   </code></pre>

2. [src/worker/index.ts](https://github.com/ujjwalguptaofficial/JsStore/blob/efbb7f16f77d71dbfe54fa631305c47f776efdfe/src/worker/index.ts#L8C21-L8C22)
   <pre><code class="javascript">    const manager = new QueryManager();
       (self as any).onmessage = function (e) {
           manager.run(<strong>e</strong>.data);
       };
   }
   </code></pre>

3. [src/worker/index.ts](https://github.com/ujjwalguptaofficial/JsStore/blob/efbb7f16f77d71dbfe54fa631305c47f776efdfe/src/worker/index.ts#L8C21-L8C27)
   <pre><code class="javascript">    const manager = new QueryManager();
       (self as any).onmessage = function (e) {
           manager.run(<strong>e.data</strong>);
       };
   }
   </code></pre>

</details>

----------------------------------------

|  | source | sink |  |
| --- | --- | --- | --- |
| `e.data` | `e` | `e.data` | `User-controlled data flows into raw SQL query.` |