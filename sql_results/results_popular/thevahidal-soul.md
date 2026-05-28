### thevahidal/soul

[src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L104C16-L104C21)

<pre><code class="javascript">
  try {
    db.prepare(<strong>query</strong>).run();

    if (indicesString) {
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 6 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L16C11-L16C20)
   <pre><code class="javascript">  */
     const {
       name: <strong>tableName</strong>,
       schema,
       autoAddCreatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L101C33-L101C42)
   <pre><code class="javascript">    .join(';');

     const query = `CREATE TABLE ${<strong>tableName</strong>} (${schemaString})`;

     try {
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L101C9-L101C14)
   <pre><code class="javascript">    .join(';');

     const <strong>query</strong> = `CREATE TABLE ${tableName} (${schemaString})`;

     try {
   </code></pre>

6. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L104C16-L104C21)
   <pre><code class="javascript">
     try {
       db.prepare(<strong>query</strong>).run();

       if (indicesString) {
   </code></pre>

</details>

<details>
<summary>Path with 15 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L17C5-L17C11)
   <pre><code class="javascript">  const {
       name: tableName,
       <strong>schema</strong>,
       autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L23C22-L23C28)
   <pre><code class="javascript">
     let indices = [];
     let schemaString = <strong>schema</strong>
       // support name, type, default, not null, unique, primary key, foreign key, index
       // e.g. { name: 'id', type: 'INTEGER', primaryKey: true }
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L28C8-L37C8)
   <pre><code class="javascript">
       .map(
         (<strong>{</strong>
   <strong>        name,</strong>
   <strong>        type,</strong>
   <strong>        default: defaultValue,</strong>
   <strong>        notNull,</strong>
   <strong>        unique,</strong>
   <strong>        primaryKey,</strong>
   <strong>        foreignKey,</strong>
   <strong>        index,</strong>
   <strong>      }</strong>) =&gt; {
           let column = `${name} ${type}`;
           if (defaultValue) {
   </code></pre>

6. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L29C9-L29C13)
   <pre><code class="javascript">    .map(
         ({
           <strong>name</strong>,
           type,
           default: defaultValue,
   </code></pre>

7. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L38C25-L38C29)
   <pre><code class="javascript">        index,
         }) =&gt; {
           let column = `${<strong>name</strong>} ${type}`;
           if (defaultValue) {
             column += ` DEFAULT ${defaultValue}`;
   </code></pre>

8. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L38C13-L38C19)
   <pre><code class="javascript">        index,
         }) =&gt; {
           let <strong>column</strong> = `${name} ${type}`;
           if (defaultValue) {
             column += ` DEFAULT ${defaultValue}`;
   </code></pre>

9. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L64C16-L64C22)
   <pre><code class="javascript">        }

           return <strong>column</strong>;
         }
       )
   </code></pre>

10. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L23C22-L66C6)
    <pre><code class="javascript">
      let indices = [];
      let schemaString = <strong>schema</strong>
    <strong>    // support name, type, default, not null, unique, primary key, foreign key, index</strong>
    <strong>    // e.g. { name: 'id', type: 'INTEGER', primaryKey: true }</strong>
    <strong></strong>
    <strong>    .map(</strong>
    <strong>      ({</strong>
    <strong>        name,</strong>
    <strong>        type,</strong>
    <strong>        default: defaultValue,</strong>
    <strong>        notNull,</strong>
    <strong>        unique,</strong>
    <strong>        primaryKey,</strong>
    <strong>        foreignKey,</strong>
    <strong>        index,</strong>
    <strong>      }) =&gt; {</strong>
    <strong>        let column = `${name} ${type}`;</strong>
    <strong>        if (defaultValue) {</strong>
    <strong>          column += ` DEFAULT ${defaultValue}`;</strong>
    <strong>        }</strong>
    <strong>        if (notNull) {</strong>
    <strong>          column += ' NOT NULL';</strong>
    <strong>        }</strong>
    <strong>        if (unique) {</strong>
    <strong>          column += ' UNIQUE';</strong>
    <strong>        }</strong>
    <strong>        if (primaryKey) {</strong>
    <strong>          column += ' PRIMARY KEY';</strong>
    <strong>        }</strong>
    <strong>        if (foreignKey) {</strong>
    <strong>          column += ` REFERENCES ${foreignKey.table}(${foreignKey.column})`;</strong>
    <strong>        }</strong>
    <strong>        if (foreignKey &amp;&amp; foreignKey.onDelete) {</strong>
    <strong>          column += ` ON DELETE ${foreignKey.onDelete}`;</strong>
    <strong>        }</strong>
    <strong>        if (foreignKey &amp;&amp; foreignKey.onUpdate) {</strong>
    <strong>          column += ` ON UPDATE ${foreignKey.onUpdate}`;</strong>
    <strong>        }</strong>
    <strong>        if (index) {</strong>
    <strong>          indices.push(name);</strong>
    <strong>        }</strong>
    <strong></strong>
    <strong>        return column;</strong>
    <strong>      }</strong>
    <strong>    )</strong>
        .join(', ');

    </code></pre>

11. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L23C22-L67C16)
    <pre><code class="javascript">
      let indices = [];
      let schemaString = <strong>schema</strong>
    <strong>    // support name, type, default, not null, unique, primary key, foreign key, index</strong>
    <strong>    // e.g. { name: 'id', type: 'INTEGER', primaryKey: true }</strong>
    <strong></strong>
    <strong>    .map(</strong>
    <strong>      ({</strong>
    <strong>        name,</strong>
    <strong>        type,</strong>
    <strong>        default: defaultValue,</strong>
    <strong>        notNull,</strong>
    <strong>        unique,</strong>
    <strong>        primaryKey,</strong>
    <strong>        foreignKey,</strong>
    <strong>        index,</strong>
    <strong>      }) =&gt; {</strong>
    <strong>        let column = `${name} ${type}`;</strong>
    <strong>        if (defaultValue) {</strong>
    <strong>          column += ` DEFAULT ${defaultValue}`;</strong>
    <strong>        }</strong>
    <strong>        if (notNull) {</strong>
    <strong>          column += ' NOT NULL';</strong>
    <strong>        }</strong>
    <strong>        if (unique) {</strong>
    <strong>          column += ' UNIQUE';</strong>
    <strong>        }</strong>
    <strong>        if (primaryKey) {</strong>
    <strong>          column += ' PRIMARY KEY';</strong>
    <strong>        }</strong>
    <strong>        if (foreignKey) {</strong>
    <strong>          column += ` REFERENCES ${foreignKey.table}(${foreignKey.column})`;</strong>
    <strong>        }</strong>
    <strong>        if (foreignKey &amp;&amp; foreignKey.onDelete) {</strong>
    <strong>          column += ` ON DELETE ${foreignKey.onDelete}`;</strong>
    <strong>        }</strong>
    <strong>        if (foreignKey &amp;&amp; foreignKey.onUpdate) {</strong>
    <strong>          column += ` ON UPDATE ${foreignKey.onUpdate}`;</strong>
    <strong>        }</strong>
    <strong>        if (index) {</strong>
    <strong>          indices.push(name);</strong>
    <strong>        }</strong>
    <strong></strong>
    <strong>        return column;</strong>
    <strong>      }</strong>
    <strong>    )</strong>
    <strong>    .join(', ')</strong>;

      // add id if primary key is not defined
    </code></pre>

12. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L23C7-L23C19)
    <pre><code class="javascript">
      let indices = [];
      let <strong>schemaString</strong> = schema
        // support name, type, default, not null, unique, primary key, foreign key, index
        // e.g. { name: 'id', type: 'INTEGER', primaryKey: true }
    </code></pre>

13. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L101C47-L101C59)
    <pre><code class="javascript">    .join(';');

      const query = `CREATE TABLE ${tableName} (${<strong>schemaString</strong>})`;

      try {
    </code></pre>

14. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L101C9-L101C14)
    <pre><code class="javascript">    .join(';');

      const <strong>query</strong> = `CREATE TABLE ${tableName} (${schemaString})`;

      try {
    </code></pre>

15. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L104C16-L104C21)
    <pre><code class="javascript">
      try {
        db.prepare(<strong>query</strong>).run();

        if (indicesString) {
    </code></pre>

</details>

----------------------------------------

[src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L107C18-L107C31)

<pre><code class="javascript">
    if (indicesString) {
      db.prepare(<strong>indicesString</strong>).run();
    }

</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L16C11-L16C20)
   <pre><code class="javascript">  */
     const {
       name: <strong>tableName</strong>,
       schema,
       autoAddCreatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L95C22-L95C31)
   <pre><code class="javascript">    .map((field) =&gt; {
         return `
         CREATE INDEX ${<strong>tableName</strong>}_${field}_index
         ON ${tableName} (${field})
       `;
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L94C14-L97C6)
   <pre><code class="javascript">  let indicesString = indices
       .map((field) =&gt; {
         return <strong>`</strong>
   <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
   <strong>      ON ${tableName} (${field})</strong>
   <strong>    `</strong>;
       })
       .join(';');
   </code></pre>

6. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L98C7)
   <pre><code class="javascript">  }

     let indicesString = <strong>indices</strong>
   <strong>    .map((field) =&gt; {</strong>
   <strong>      return `</strong>
   <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
   <strong>      ON ${tableName} (${field})</strong>
   <strong>    `;</strong>
   <strong>    })</strong>
       .join(';');

   </code></pre>

7. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L99C15)
   <pre><code class="javascript">  }

     let indicesString = <strong>indices</strong>
   <strong>    .map((field) =&gt; {</strong>
   <strong>      return `</strong>
   <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
   <strong>      ON ${tableName} (${field})</strong>
   <strong>    `;</strong>
   <strong>    })</strong>
   <strong>    .join(';')</strong>;

     const query = `CREATE TABLE ${tableName} (${schemaString})`;
   </code></pre>

8. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C7-L92C20)
   <pre><code class="javascript">  }

     let <strong>indicesString</strong> = indices
       .map((field) =&gt; {
         return `
   </code></pre>

9. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L107C18-L107C31)
   <pre><code class="javascript">
       if (indicesString) {
         db.prepare(<strong>indicesString</strong>).run();
       }

   </code></pre>

</details>

<details>
<summary>Path with 16 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L17C5-L17C11)
   <pre><code class="javascript">  const {
       name: tableName,
       <strong>schema</strong>,
       autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L23C22-L23C28)
   <pre><code class="javascript">
     let indices = [];
     let schemaString = <strong>schema</strong>
       // support name, type, default, not null, unique, primary key, foreign key, index
       // e.g. { name: 'id', type: 'INTEGER', primaryKey: true }
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L28C8-L37C8)
   <pre><code class="javascript">
       .map(
         (<strong>{</strong>
   <strong>        name,</strong>
   <strong>        type,</strong>
   <strong>        default: defaultValue,</strong>
   <strong>        notNull,</strong>
   <strong>        unique,</strong>
   <strong>        primaryKey,</strong>
   <strong>        foreignKey,</strong>
   <strong>        index,</strong>
   <strong>      }</strong>) =&gt; {
           let column = `${name} ${type}`;
           if (defaultValue) {
   </code></pre>

6. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L29C9-L29C13)
   <pre><code class="javascript">    .map(
         ({
           <strong>name</strong>,
           type,
           default: defaultValue,
   </code></pre>

7. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L61C24-L61C28)
   <pre><code class="javascript">        }
           if (index) {
             indices.push(<strong>name</strong>);
           }

   </code></pre>

8. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L61C11-L61C18)
   <pre><code class="javascript">        }
           if (index) {
             <strong>indices</strong>.push(name);
           }

   </code></pre>

9. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L92C30)
   <pre><code class="javascript">  }

     let indicesString = <strong>indices</strong>
       .map((field) =&gt; {
         return `
   </code></pre>

10. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L93C11-L93C16)
    <pre><code class="javascript">
      let indicesString = indices
        .map((<strong>field</strong>) =&gt; {
          return `
          CREATE INDEX ${tableName}_${field}_index
    </code></pre>

11. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L95C35-L95C40)
    <pre><code class="javascript">    .map((field) =&gt; {
          return `
          CREATE INDEX ${tableName}_${<strong>field</strong>}_index
          ON ${tableName} (${field})
        `;
    </code></pre>

12. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L94C14-L97C6)
    <pre><code class="javascript">  let indicesString = indices
        .map((field) =&gt; {
          return <strong>`</strong>
    <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
    <strong>      ON ${tableName} (${field})</strong>
    <strong>    `</strong>;
        })
        .join(';');
    </code></pre>

13. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L98C7)
    <pre><code class="javascript">  }

      let indicesString = <strong>indices</strong>
    <strong>    .map((field) =&gt; {</strong>
    <strong>      return `</strong>
    <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
    <strong>      ON ${tableName} (${field})</strong>
    <strong>    `;</strong>
    <strong>    })</strong>
        .join(';');

    </code></pre>

14. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L99C15)
    <pre><code class="javascript">  }

      let indicesString = <strong>indices</strong>
    <strong>    .map((field) =&gt; {</strong>
    <strong>      return `</strong>
    <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
    <strong>      ON ${tableName} (${field})</strong>
    <strong>    `;</strong>
    <strong>    })</strong>
    <strong>    .join(';')</strong>;

      const query = `CREATE TABLE ${tableName} (${schemaString})`;
    </code></pre>

15. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C7-L92C20)
    <pre><code class="javascript">  }

      let <strong>indicesString</strong> = indices
        .map((field) =&gt; {
          return `
    </code></pre>

16. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L107C18-L107C31)
    <pre><code class="javascript">
        if (indicesString) {
          db.prepare(<strong>indicesString</strong>).run();
        }

    </code></pre>

</details>

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L16C11-L16C20)
   <pre><code class="javascript">  */
     const {
       name: <strong>tableName</strong>,
       schema,
       autoAddCreatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L96C12-L96C21)
   <pre><code class="javascript">      return `
         CREATE INDEX ${tableName}_${field}_index
         ON ${<strong>tableName</strong>} (${field})
       `;
       })
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L94C14-L97C6)
   <pre><code class="javascript">  let indicesString = indices
       .map((field) =&gt; {
         return <strong>`</strong>
   <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
   <strong>      ON ${tableName} (${field})</strong>
   <strong>    `</strong>;
       })
       .join(';');
   </code></pre>

6. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L98C7)
   <pre><code class="javascript">  }

     let indicesString = <strong>indices</strong>
   <strong>    .map((field) =&gt; {</strong>
   <strong>      return `</strong>
   <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
   <strong>      ON ${tableName} (${field})</strong>
   <strong>    `;</strong>
   <strong>    })</strong>
       .join(';');

   </code></pre>

7. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C23-L99C15)
   <pre><code class="javascript">  }

     let indicesString = <strong>indices</strong>
   <strong>    .map((field) =&gt; {</strong>
   <strong>      return `</strong>
   <strong>      CREATE INDEX ${tableName}_${field}_index</strong>
   <strong>      ON ${tableName} (${field})</strong>
   <strong>    `;</strong>
   <strong>    })</strong>
   <strong>    .join(';')</strong>;

     const query = `CREATE TABLE ${tableName} (${schemaString})`;
   </code></pre>

8. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L92C7-L92C20)
   <pre><code class="javascript">  }

     let <strong>indicesString</strong> = indices
       .map((field) =&gt; {
         return `
   </code></pre>

9. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L107C18-L107C31)
   <pre><code class="javascript">
       if (indicesString) {
         db.prepare(<strong>indicesString</strong>).run();
       }

   </code></pre>

</details>

----------------------------------------

[src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L110C40-L110C73)

<pre><code class="javascript">    }

    const generatedSchema = db.prepare(<strong>`PRAGMA table_info(${tableName})`</strong>).all();

    /*
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 5 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L16C11-L16C20)
   <pre><code class="javascript">  */
     const {
       name: <strong>tableName</strong>,
       schema,
       autoAddCreatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L110C61-L110C70)
   <pre><code class="javascript">    }

       const generatedSchema = db.prepare(`PRAGMA table_info(${<strong>tableName</strong>})`).all();

       /*
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L110C40-L110C73)
   <pre><code class="javascript">    }

       const generatedSchema = db.prepare(<strong>`PRAGMA table_info(${tableName})`</strong>).all();

       /*
   </code></pre>

</details>

<details>
<summary>Path with 6 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L20C7-L20C15)
   <pre><code class="javascript">    autoAddCreatedAt = true,
       autoAddUpdatedAt = true,
     } = <strong>req.body</strong>;

     let indices = [];
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L15C9-L20C4)
   <pre><code class="javascript">    }
     */
     const <strong>{</strong>
   <strong>    name: tableName,</strong>
   <strong>    schema,</strong>
   <strong>    autoAddCreatedAt = true,</strong>
   <strong>    autoAddUpdatedAt = true,</strong>
   <strong>  }</strong> = req.body;

     let indices = [];
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L16C11-L16C20)
   <pre><code class="javascript">  */
     const {
       name: <strong>tableName</strong>,
       schema,
       autoAddCreatedAt = true,
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L101C33-L101C42)
   <pre><code class="javascript">    .join(';');

     const query = `CREATE TABLE ${<strong>tableName</strong>} (${schemaString})`;

     try {
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L110C61-L110C70)
   <pre><code class="javascript">    }

       const generatedSchema = db.prepare(`PRAGMA table_info(${<strong>tableName</strong>})`).all();

       /*
   </code></pre>

6. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L110C40-L110C73)
   <pre><code class="javascript">    }

       const generatedSchema = db.prepare(<strong>`PRAGMA table_info(${tableName})`</strong>).all();

       /*
   </code></pre>

</details>

----------------------------------------

[src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L215C31-L215C36)

<pre><code class="javascript">  const query = `PRAGMA table_info(${tableName})`;
  try {
    const schema = db.prepare(<strong>query</strong>).all();

    res.json({
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 5 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L212C11-L212C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong> } = req.params;
     const query = `PRAGMA table_info(${tableName})`;
     try {
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L212C17-L212C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong> } = req.params;
     const query = `PRAGMA table_info(${tableName})`;
     try {
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L213C38-L213C47)
   <pre><code class="javascript">  */
     const { name: tableName } = req.params;
     const query = `PRAGMA table_info(${<strong>tableName</strong>})`;
     try {
       const schema = db.prepare(query).all();
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L213C9-L213C14)
   <pre><code class="javascript">  */
     const { name: tableName } = req.params;
     const <strong>query</strong> = `PRAGMA table_info(${tableName})`;
     try {
       const schema = db.prepare(query).all();
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L215C31-L215C36)
   <pre><code class="javascript">  const query = `PRAGMA table_info(${tableName})`;
     try {
       const schema = db.prepare(<strong>query</strong>).all();

       res.json({
   </code></pre>

</details>

----------------------------------------

[src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L245C29-L245C34)

<pre><code class="javascript">  const query = `DROP TABLE ${tableName}`;
  try {
    const data = db.prepare(<strong>query</strong>).run();

    res.json({
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 5 steps</summary>

1. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L242C11-L242C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong> } = req.params;
     const query = `DROP TABLE ${tableName}`;
     try {
   </code></pre>

2. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L242C17-L242C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong> } = req.params;
     const query = `DROP TABLE ${tableName}`;
     try {
   </code></pre>

3. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L243C31-L243C40)
   <pre><code class="javascript">  */
     const { name: tableName } = req.params;
     const query = `DROP TABLE ${<strong>tableName</strong>}`;
     try {
       const data = db.prepare(query).run();
   </code></pre>

4. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L243C9-L243C14)
   <pre><code class="javascript">  */
     const { name: tableName } = req.params;
     const <strong>query</strong> = `DROP TABLE ${tableName}`;
     try {
       const data = db.prepare(query).run();
   </code></pre>

5. [src/controllers/tables.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/tables.js#L245C29-L245C34)
   <pre><code class="javascript">  const query = `DROP TABLE ${tableName}`;
     try {
       const data = db.prepare(<strong>query</strong>).run();

       res.json({
   </code></pre>

</details>

----------------------------------------

[src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L148C33-L148C66)

<pre><code class="javascript">    try {
      // get all fields of the table
      const fields = db.prepare(<strong>`PRAGMA table_info(${tableName})`</strong>).all();
      whereString += '(';
      whereString += fields
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 4 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L148C54-L148C63)
   <pre><code class="javascript">    try {
         // get all fields of the table
         const fields = db.prepare(`PRAGMA table_info(${<strong>tableName</strong>})`).all();
         whereString += '(';
         whereString += fields
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L148C33-L148C66)
   <pre><code class="javascript">    try {
         // get all fields of the table
         const fields = db.prepare(<strong>`PRAGMA table_info(${tableName})`</strong>).all();
         whereString += '(';
         whereString += fields
   </code></pre>

</details>

----------------------------------------

[src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L472C18-L472C51)

<pre><code class="javascript">    try {
      lookupField = db
        .prepare(<strong>`PRAGMA table_info(${tableName})`</strong>)
        .all()
        .find((field) =&gt; field.pk === 1).name;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 4 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L472C39-L472C48)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(`PRAGMA table_info(${<strong>tableName</strong>})`)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L472C18-L472C51)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(<strong>`PRAGMA table_info(${tableName})`</strong>)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

</details>

----------------------------------------

[src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C20-L533C59)

<pre><code class="javascript">      try {
        const foreignKey = db
          .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
          .all()
          .find((fk) =&gt; fk.from === extendedField);
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 4 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C47-L533C56)
   <pre><code class="javascript">      try {
           const foreignKey = db
             .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
             .all()
             .find((fk) =&gt; fk.from === extendedField);
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C20-L533C59)
   <pre><code class="javascript">      try {
           const foreignKey = db
             .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
             .all()
             .find((fk) =&gt; fk.from === extendedField);
   </code></pre>

</details>

<details>
<summary>Path with 5 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L472C39-L472C48)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(`PRAGMA table_info(${<strong>tableName</strong>})`)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C47-L533C56)
   <pre><code class="javascript">      try {
           const foreignKey = db
             .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
             .all()
             .find((fk) =&gt; fk.from === extendedField);
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C20-L533C59)
   <pre><code class="javascript">      try {
           const foreignKey = db
             .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
             .all()
             .find((fk) =&gt; fk.from === extendedField);
   </code></pre>

</details>

<details>
<summary>Path with 5 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L494C23-L494C32)
   <pre><code class="javascript">    });
     } else {
       schemaString = `${<strong>tableName</strong>}.*`;
     }

   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C47-L533C56)
   <pre><code class="javascript">      try {
           const foreignKey = db
             .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
             .all()
             .find((fk) =&gt; fk.from === extendedField);
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L533C20-L533C59)
   <pre><code class="javascript">      try {
           const foreignKey = db
             .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
             .all()
             .find((fk) =&gt; fk.from === extendedField);
   </code></pre>

</details>

----------------------------------------

[src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L658C18-L658C51)

<pre><code class="javascript">    try {
      lookupField = db
        .prepare(<strong>`PRAGMA table_info(${tableName})`</strong>)
        .all()
        .find((field) =&gt; field.pk === 1).name;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 4 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L648C11-L648C26)
   <pre><code class="javascript">*/

     const { <strong>name: tableName</strong>, pks } = req.params;
     const { fields } = req.body;
     const { _lookup_field } = req.query;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L648C17-L648C26)
   <pre><code class="javascript">*/

     const { name: <strong>tableName</strong>, pks } = req.params;
     const { fields } = req.body;
     const { _lookup_field } = req.query;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L658C39-L658C48)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(`PRAGMA table_info(${<strong>tableName</strong>})`)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L658C18-L658C51)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(<strong>`PRAGMA table_info(${tableName})`</strong>)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

</details>

----------------------------------------

[src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L750C18-L750C51)

<pre><code class="javascript">    try {
      lookupField = db
        .prepare(<strong>`PRAGMA table_info(${tableName})`</strong>)
        .all()
        .find((field) =&gt; field.pk === 1).name;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 4 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L741C11-L741C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L741C17-L741C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L750C39-L750C48)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(`PRAGMA table_info(${<strong>tableName</strong>})`)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L750C18-L750C51)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(<strong>`PRAGMA table_info(${tableName})`</strong>)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)

<pre><code class="javascript">      } LIMIT ? OFFSET ?`;

      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(
        ...data.whereStringValues,
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C101-L258C110)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${extendedField}`;
           }

   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
           }

   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L298C7-L298C16)
   <pre><code class="javascript">    let data = rowService.get({
         schemaString,
         <strong>tableName</strong>,
         extendString,
         whereString,
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
   <pre><code class="javascript">
     try {
       let data = rowService.get(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      whereString,</strong>
   <strong>      orderString,</strong>
   <strong>      limit,</strong>
   <strong>      page: limit * (page - 1),</strong>
   <strong>      whereStringValues,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
   <pre><code class="javascript">module.exports = (db) =&gt; {
     return {
       get(<strong>data</strong>) {
         const query = `SELECT ${data.schemaString || '*'} FROM ${
           data.tableName
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L7C9-L7C13)
   <pre><code class="javascript">    get(data) {
         const query = `SELECT ${data.schemaString || '*'} FROM ${
           <strong>data</strong>.tableName
         } ${data.extendString || ''} ${data.whereString || ''} ${
           data.orderString || ''
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L7C9-L7C23)
   <pre><code class="javascript">    get(data) {
         const query = `SELECT ${data.schemaString || '*'} FROM ${
           <strong>data.tableName</strong>
         } ${data.extendString || ''} ${data.whereString || ''} ${
           data.orderString || ''
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 17 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C23-L123C32)
   <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
               const arrayValues = filter.value.slice(1, -1).split(',');
               return `${<strong>tableName</strong>}.${filter.field} IN (${arrayValues
                 .map((val) =&gt; `'${val}'`)
                 .join(', ')})`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C20-L125C29)
   <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
               const arrayValues = filter.value.slice(1, -1).split(',');
               return <strong>`${tableName}.${filter.field} IN (${arrayValues</strong>
   <strong>              .map((val) =&gt; `'${val}'`)</strong>
   <strong>              .join(', ')})`</strong>;
             } else {
               return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L182C97-L182C106)
   <pre><code class="javascript">        rowService.getForeignKeyInfo(tableName, relation);

         extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${relation}`;
         joins[relation] = { foreignKey, joinedTableName, joinedTableFields };
         orderString += ` ORDER BY ${joinedTableName}.${field} ${
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C101-L258C110)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${extendedField}`;
           }

   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
           }

   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L182C7-L182C19)
   <pre><code class="javascript">        rowService.getForeignKeyInfo(tableName, relation);

         <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${relation}`;
         joins[relation] = { foreignKey, joinedTableName, joinedTableFields };
         orderString += ` ORDER BY ${joinedTableName}.${field} ${
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
           }

   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
    <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
              joinedTableFields = foreignKeyInfo.joinedTableFields;
              <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
            }

    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L299C7-L299C19)
    <pre><code class="javascript">      schemaString,
          tableName,
          <strong>extendString</strong>,
          whereString,
          orderString,
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C11-L8C15)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${<strong>data</strong>.extendString || ''} ${data.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C11-L8C28)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${<strong>data.extendString</strong> || ''} ${data.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 14 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C23-L127C32)
   <pre><code class="javascript">              .join(', ')})`;
             } else {
               return `${<strong>tableName</strong>}.${filter.field} ${filter.operator} '${filter.value}'`;
             }
           } else {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C20-L127C87)
   <pre><code class="javascript">              .join(', ')})`;
             } else {
               return <strong>`${tableName}.${filter.field} ${filter.operator} '${filter.value}'`</strong>;
             }
           } else {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
   <pre><code class="javascript">  if (_filters !== '') {
       whereString += ' WHERE ';
       whereString += <strong>filters</strong>
   <strong>      .map((filter) =&gt; {</strong>
   <strong>        if (filter.value) {</strong>
   <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
   <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
   <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
   <strong>              .map((val) =&gt; `'${val}'`)</strong>
   <strong>              .join(', ')})`;</strong>
   <strong>          } else {</strong>
   <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
   <strong>          }</strong>
   <strong>        } else {</strong>
   <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
   <strong>        }</strong>
   <strong>      })</strong>
         .join(' AND ');
       params = `_filters=${_filters}&amp;`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
   <pre><code class="javascript">  if (_filters !== '') {
       whereString += ' WHERE ';
       whereString += <strong>filters</strong>
   <strong>      .map((filter) =&gt; {</strong>
   <strong>        if (filter.value) {</strong>
   <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
   <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
   <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
   <strong>              .map((val) =&gt; `'${val}'`)</strong>
   <strong>              .join(', ')})`;</strong>
   <strong>          } else {</strong>
   <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
   <strong>          }</strong>
   <strong>        } else {</strong>
   <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
   <strong>        }</strong>
   <strong>      })</strong>
   <strong>      .join(' AND ')</strong>;
       params = `_filters=${_filters}&amp;`;
     }
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
   <pre><code class="javascript">  if (_filters !== '') {
       whereString += ' WHERE ';
       <strong>whereString</strong> += filters
         .map((filter) =&gt; {
           if (filter.value) {
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L300C7-L300C18)
   <pre><code class="javascript">      tableName,
         extendString,
         <strong>whereString</strong>,
         orderString,
         limit,
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
   <pre><code class="javascript">
     try {
       let data = rowService.get(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      whereString,</strong>
   <strong>      orderString,</strong>
   <strong>      limit,</strong>
   <strong>      page: limit * (page - 1),</strong>
   <strong>      whereStringValues,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C42)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data</strong>.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

12. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C54)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data.whereString</strong> || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 18 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L202C26-L202C35)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${<strong>tableName</strong>}.${field},`;
       });
       params += `_schema=${_schema}&amp;`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L202C7-L202C19)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         <strong>schemaString</strong> += `${tableName}.${field},`;
       });
       params += `_schema=${_schema}&amp;`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L206C23-L206C32)
   <pre><code class="javascript">    params += `_schema=${_schema}&amp;`;
     } else {
       schemaString = `${<strong>tableName</strong>}.*`;
     }

   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L206C5-L206C17)
   <pre><code class="javascript">    params += `_schema=${_schema}&amp;`;
     } else {
       <strong>schemaString</strong> = `${tableName}.*`;
     }

   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C18-L210C30)
   <pre><code class="javascript">
     // remove trailing comma
     schemaString = <strong>schemaString</strong>.replace(/,\s*$/, '');

     // if _extend is provided, extend rows with related data using joins
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C18-L210C51)
   <pre><code class="javascript">
     // remove trailing comma
     schemaString = <strong>schemaString.replace(/,\s*$/, '')</strong>;

     // if _extend is provided, extend rows with related data using joins
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C3-L210C15)
   <pre><code class="javascript">
     // remove trailing comma
     <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

     // if _extend is provided, extend rows with related data using joins
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L275C11-L275C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L275C11-L275C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L297C7-L297C19)
    <pre><code class="javascript">  try {
        let data = rowService.get({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C35)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data</strong>.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C48)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data.schemaString</strong> || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)

<pre><code class="javascript">      } LIMIT ? OFFSET ?`;

      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(
        ...data.whereStringValues,
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 17 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L59C5-L59C12)
   <pre><code class="javascript">    _page = 1,
       _limit = 10,
       <strong>_search</strong>,
       _ordering,
       _schema,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L59C5-L59C12)
   <pre><code class="javascript">    _page = 1,
       _limit = 10,
       <strong>_search</strong>,
       _ordering,
       _schema,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L140C7-L140C14)
   <pre><code class="javascript">  // e.g. ?_search=John will search for John in all fields of the table
     // searching is case insensitive
     if (<strong>_search</strong>) {
       if (whereString !== '') {
         whereString += ' AND ';
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L151C62-L151C69)
   <pre><code class="javascript">      whereString += '(';
         whereString += fields
           .map((field) =&gt; `${tableName}.${field.name} LIKE '%${<strong>_search</strong>}%'`)
           .join(' OR ');
         whereString += ')';
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L151C25-L151C73)
   <pre><code class="javascript">      whereString += '(';
         whereString += fields
           .map((field) =&gt; <strong>`${tableName}.${field.name} LIKE '%${_search}%'`</strong>)
           .join(' OR ');
         whereString += ')';
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C22-L151C74)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         whereString += <strong>fields</strong>
   <strong>        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)</strong>
           .join(' OR ');
         whereString += ')';
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C22-L152C22)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         whereString += <strong>fields</strong>
   <strong>        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)</strong>
   <strong>        .join(' OR ')</strong>;
         whereString += ')';
         params += `_search=${_search}&amp;`;
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         <strong>whereString</strong> += fields
           .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
   <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
         <strong>whereString</strong> += ')';
         params += `_search=${_search}&amp;`;
       } catch (error) {
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L300C7-L300C18)
    <pre><code class="javascript">      tableName,
          extendString,
          <strong>whereString</strong>,
          orderString,
          limit,
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C42)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data</strong>.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C54)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data.whereString</strong> || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)

<pre><code class="javascript">      } LIMIT ? OFFSET ?`;

      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(
        ...data.whereStringValues,
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 14 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L60C5-L60C14)
   <pre><code class="javascript">    _limit = 10,
       _search,
       <strong>_ordering</strong>,
       _schema,
       _extend,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L60C5-L60C14)
   <pre><code class="javascript">    _limit = 10,
       _search,
       <strong>_ordering</strong>,
       _schema,
       _extend,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L173C24-L173C33)
   <pre><code class="javascript">  if (_ordering) {
       const isDesc = _ordering.startsWith('-');
       const cleanOrder = <strong>_ordering</strong>.replace('-', '');

       if (cleanOrder.includes('.')) {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L173C24-L173C50)
   <pre><code class="javascript">  if (_ordering) {
       const isDesc = _ordering.startsWith('-');
       const cleanOrder = <strong>_ordering.replace('-', '')</strong>;

       if (cleanOrder.includes('.')) {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L173C11-L173C21)
   <pre><code class="javascript">  if (_ordering) {
       const isDesc = _ordering.startsWith('-');
       const <strong>cleanOrder</strong> = _ordering.replace('-', '');

       if (cleanOrder.includes('.')) {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L189C35-L189C45)
   <pre><code class="javascript">    } else {
         // regular field sort
         orderString += ` ORDER BY ${<strong>cleanOrder</strong>} ${isDesc ? 'DESC' : 'ASC'}`;
       }

   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L189C7-L189C18)
   <pre><code class="javascript">    } else {
         // regular field sort
         <strong>orderString</strong> += ` ORDER BY ${cleanOrder} ${isDesc ? 'DESC' : 'ASC'}`;
       }

   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L301C7-L301C18)
   <pre><code class="javascript">      extendString,
         whereString,
         <strong>orderString</strong>,
         limit,
         page: limit * (page - 1),
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
   <pre><code class="javascript">
     try {
       let data = rowService.get(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      whereString,</strong>
   <strong>      orderString,</strong>
   <strong>      limit,</strong>
   <strong>      page: limit * (page - 1),</strong>
   <strong>      whereStringValues,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L9C9-L9C13)
    <pre><code class="javascript">        data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
            <strong>data</strong>.orderString || ''
          } LIMIT ? OFFSET ?`;

    </code></pre>

12. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L9C9-L9C25)
    <pre><code class="javascript">        data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
            <strong>data.orderString</strong> || ''
          } LIMIT ? OFFSET ?`;

    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 21 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L60C5-L60C14)
   <pre><code class="javascript">    _limit = 10,
       _search,
       <strong>_ordering</strong>,
       _schema,
       _extend,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L60C5-L60C14)
   <pre><code class="javascript">    _limit = 10,
       _search,
       <strong>_ordering</strong>,
       _schema,
       _extend,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L173C24-L173C33)
   <pre><code class="javascript">  if (_ordering) {
       const isDesc = _ordering.startsWith('-');
       const cleanOrder = <strong>_ordering</strong>.replace('-', '');

       if (cleanOrder.includes('.')) {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L173C24-L173C50)
   <pre><code class="javascript">  if (_ordering) {
       const isDesc = _ordering.startsWith('-');
       const cleanOrder = <strong>_ordering.replace('-', '')</strong>;

       if (cleanOrder.includes('.')) {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L173C11-L173C21)
   <pre><code class="javascript">  if (_ordering) {
       const isDesc = _ordering.startsWith('-');
       const <strong>cleanOrder</strong> = _ordering.replace('-', '');

       if (cleanOrder.includes('.')) {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L177C33-L177C43)
   <pre><code class="javascript">    if (cleanOrder.includes('.')) {
         // Handle foreign key sort, e.g. publisher.name
         const [relation, field] = <strong>cleanOrder</strong>.split('.');

         const { foreignKey, joinedTableName, joinedTableFields } =
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L177C33-L177C54)
   <pre><code class="javascript">    if (cleanOrder.includes('.')) {
         // Handle foreign key sort, e.g. publisher.name
         const [relation, field] = <strong>cleanOrder.split('.')</strong>;

         const { foreignKey, joinedTableName, joinedTableFields } =
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L177C13-L177C30)
   <pre><code class="javascript">    if (cleanOrder.includes('.')) {
         // Handle foreign key sort, e.g. publisher.name
         const <strong>[relation, field]</strong> = cleanOrder.split('.');

         const { foreignKey, joinedTableName, joinedTableFields } =
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L177C14-L177C22)
   <pre><code class="javascript">    if (cleanOrder.includes('.')) {
         // Handle foreign key sort, e.g. publisher.name
         const [<strong>relation</strong>, field] = cleanOrder.split('.');

         const { foreignKey, joinedTableName, joinedTableFields } =
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L177C14-L177C22)
    <pre><code class="javascript">    if (cleanOrder.includes('.')) {
          // Handle foreign key sort, e.g. publisher.name
          const [<strong>relation</strong>, field] = cleanOrder.split('.');

          const { foreignKey, joinedTableName, joinedTableFields } =
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L182C110-L182C118)
    <pre><code class="javascript">        rowService.getForeignKeyInfo(tableName, relation);

          extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${<strong>relation</strong>}`;
          joins[relation] = { foreignKey, joinedTableName, joinedTableFields };
          orderString += ` ORDER BY ${joinedTableName}.${field} ${
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L182C7-L182C19)
    <pre><code class="javascript">        rowService.getForeignKeyInfo(tableName, relation);

          <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${relation}`;
          joins[relation] = { foreignKey, joinedTableName, joinedTableFields };
          orderString += ` ORDER BY ${joinedTableName}.${field} ${
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
    <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
              joinedTableFields = foreignKeyInfo.joinedTableFields;
              <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
            }

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
    <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
              joinedTableFields = foreignKeyInfo.joinedTableFields;
              <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
            }

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L299C7-L299C19)
    <pre><code class="javascript">      schemaString,
          tableName,
          <strong>extendString</strong>,
          whereString,
          orderString,
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C11-L8C15)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${<strong>data</strong>.extendString || ''} ${data.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C11-L8C28)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${<strong>data.extendString</strong> || ''} ${data.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

21. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)

<pre><code class="javascript">      } LIMIT ? OFFSET ?`;

      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(
        ...data.whereStringValues,
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 22 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L61C5-L61C12)
   <pre><code class="javascript">    _search,
       _ordering,
       <strong>_schema</strong>,
       _extend,
       _filters = '',
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L61C5-L61C12)
   <pre><code class="javascript">    _search,
       _ordering,
       <strong>_schema</strong>,
       _extend,
       _filters = '',
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L200C26-L200C33)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema</strong>.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L200C26-L200C44)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema.split(',')</strong>;
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L200C11-L200C23)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const <strong>schemaFields</strong> = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L201C5-L201C17)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       <strong>schemaFields</strong>.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L201C27-L201C32)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       schemaFields.forEach((<strong>field</strong>) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L202C39-L202C44)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${<strong>field</strong>},`;
       });
       params += `_schema=${_schema}&amp;`;
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L202C7-L202C19)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         <strong>schemaString</strong> += `${tableName}.${field},`;
       });
       params += `_schema=${_schema}&amp;`;
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C3-L210C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C18-L210C30)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString</strong>.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C18-L210C51)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString.replace(/,\s*$/, '')</strong>;

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C3-L210C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L275C11-L275C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L275C11-L275C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L297C7-L297C19)
    <pre><code class="javascript">  try {
        let data = rowService.get({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C35)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data</strong>.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C48)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data.schemaString</strong> || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

21. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

22. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 22 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L61C5-L61C12)
   <pre><code class="javascript">    _search,
       _ordering,
       <strong>_schema</strong>,
       _extend,
       _filters = '',
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L61C5-L61C12)
   <pre><code class="javascript">    _search,
       _ordering,
       <strong>_schema</strong>,
       _extend,
       _filters = '',
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L200C26-L200C33)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema</strong>.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L200C26-L200C44)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema.split(',')</strong>;
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L200C11-L200C23)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const <strong>schemaFields</strong> = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L201C5-L201C17)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       <strong>schemaFields</strong>.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L201C27-L201C32)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       schemaFields.forEach((<strong>field</strong>) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L202C39-L202C44)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${<strong>field</strong>},`;
       });
       params += `_schema=${_schema}&amp;`;
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L202C7-L202C19)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         <strong>schemaString</strong> += `${tableName}.${field},`;
       });
       params += `_schema=${_schema}&amp;`;
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C3-L210C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C18-L210C30)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString</strong>.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C18-L210C51)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString.replace(/,\s*$/, '')</strong>;

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L210C3-L210C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L278C9-L278C21)
    <pre><code class="javascript">        }

            <strong>schemaString</strong> += extendFieldsString;
          } catch (error) {
            foreignKeyError.error = error;
    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L278C9-L278C21)
    <pre><code class="javascript">        }

            <strong>schemaString</strong> += extendFieldsString;
          } catch (error) {
            foreignKeyError.error = error;
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L297C7-L297C19)
    <pre><code class="javascript">  try {
        let data = rowService.get({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C35)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data</strong>.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C48)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data.schemaString</strong> || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

21. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

22. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)

<pre><code class="javascript">      } LIMIT ? OFFSET ?`;

      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(
        ...data.whereStringValues,
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 16 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L62C5-L62C12)
   <pre><code class="javascript">    _ordering,
       _schema,
       <strong>_extend</strong>,
       _filters = '',
     } = req.query;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L62C5-L62C12)
   <pre><code class="javascript">    _ordering,
       _schema,
       <strong>_extend</strong>,
       _filters = '',
     } = req.query;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L242C26-L242C33)
   <pre><code class="javascript">
     if (_extend) {
       const extendFields = <strong>_extend</strong>.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L242C26-L242C44)
   <pre><code class="javascript">
     if (_extend) {
       const extendFields = <strong>_extend.split(',')</strong>;
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L242C11-L242C23)
   <pre><code class="javascript">
     if (_extend) {
       const <strong>extendFields</strong> = _extend.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L243C5-L243C17)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       <strong>extendFields</strong>.forEach((extendedField) =&gt; {
         try {
           let foreignKey, joinedTableName, joinedTableFields;
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L243C27-L243C40)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       extendFields.forEach((<strong>extendedField</strong>) =&gt; {
         try {
           let foreignKey, joinedTableName, joinedTableFields;
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C114-L258C127)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${<strong>extendedField</strong>}`;
           }

   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L258C11-L258C23)
   <pre><code class="javascript">          joinedTableName = foreignKeyInfo.joinedTableName;
             joinedTableFields = foreignKeyInfo.joinedTableFields;
             <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;
           }

   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L299C7-L299C19)
    <pre><code class="javascript">      schemaString,
          tableName,
          <strong>extendString</strong>,
          whereString,
          orderString,
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

12. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C11-L8C15)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${<strong>data</strong>.extendString || ''} ${data.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C11-L8C28)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${<strong>data.extendString</strong> || ''} ${data.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 18 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L62C5-L62C12)
   <pre><code class="javascript">    _ordering,
       _schema,
       <strong>_extend</strong>,
       _filters = '',
     } = req.query;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L62C5-L62C12)
   <pre><code class="javascript">    _ordering,
       _schema,
       <strong>_extend</strong>,
       _filters = '',
     } = req.query;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L242C26-L242C33)
   <pre><code class="javascript">
     if (_extend) {
       const extendFields = <strong>_extend</strong>.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L242C26-L242C44)
   <pre><code class="javascript">
     if (_extend) {
       const extendFields = <strong>_extend.split(',')</strong>;
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L242C11-L242C23)
   <pre><code class="javascript">
     if (_extend) {
       const <strong>extendFields</strong> = _extend.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L243C5-L243C17)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       <strong>extendFields</strong>.forEach((extendedField) =&gt; {
         try {
           let foreignKey, joinedTableName, joinedTableFields;
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L243C27-L243C40)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       extendFields.forEach((<strong>extendedField</strong>) =&gt; {
         try {
           let foreignKey, joinedTableName, joinedTableFields;
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L271C11-L271C24)
   <pre><code class="javascript">            .join(', ') +
             ' ) as ' +
             <strong>extendedField</strong> +
             '_data';

   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L262C15-L262C33)
   <pre><code class="javascript">
           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
           const <strong>extendFieldsString</strong> =
             'json_object( ' +
             joinedTableFields
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L278C25-L278C43)
    <pre><code class="javascript">        }

            schemaString += <strong>extendFieldsString</strong>;
          } catch (error) {
            foreignKeyError.error = error;
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L278C9-L278C21)
    <pre><code class="javascript">        }

            <strong>schemaString</strong> += extendFieldsString;
          } catch (error) {
            foreignKeyError.error = error;
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L297C7-L297C19)
    <pre><code class="javascript">  try {
        let data = rowService.get({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C35)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data</strong>.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C31-L6C48)
    <pre><code class="javascript">  return {
        get(data) {
          const query = `SELECT ${<strong>data.schemaString</strong> || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)

<pre><code class="javascript">      } LIMIT ? OFFSET ?`;

      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(
        ...data.whereStringValues,
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 31 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...<strong>value</strong>] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...<strong>value</strong>] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L83C17-L83C22)
    <pre><code class="javascript">      let [key, ...value] = filter.split(':');
          if (value.length === 1) {
            value = <strong>value</strong>[0];
          } else {
            value = value.map((element) =&gt; element).join(':');
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L83C9-L83C14)
    <pre><code class="javascript">      let [key, ...value] = filter.split(':');
          if (value.length === 1) {
            <strong>value</strong> = value[0];
          } else {
            value = value.map((element) =&gt; element).join(':');
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C33-L104C38)
    <pre><code class="javascript">      }

          return { field, operator, <strong>value</strong> };
        });
      } catch (error) {
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C72-L127C78)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${<strong>filter</strong>.value}'`;
              }
            } else {
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C72-L127C84)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${<strong>filter.value</strong>}'`;
              }
            } else {
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C20-L127C87)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return <strong>`${tableName}.${filter.field} ${filter.operator} '${filter.value}'`</strong>;
              }
            } else {
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L300C7-L300C18)
    <pre><code class="javascript">      tableName,
          extendString,
          <strong>whereString</strong>,
          orderString,
          limit,
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

27. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

28. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C42)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data</strong>.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

29. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C54)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data.whereString</strong> || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

30. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

31. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 41 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [<strong>key</strong>, ...value] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [<strong>key</strong>, ...value] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C22)
    <pre><code class="javascript">      }

          let field = <strong>key</strong>.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C34)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')</strong>[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C37)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')[0]</strong>;
          let fieldOperator = key.split('__')[1];

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C11-L88C16)
    <pre><code class="javascript">      }

          let <strong>field</strong> = key.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C16-L104C21)
    <pre><code class="javascript">      }

          return { <strong>field</strong>, operator, value };
        });
      } catch (error) {
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C36-L123C42)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${<strong>filter</strong>.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
                  .join(', ')})`;
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C36-L123C48)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${<strong>filter.field</strong>} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
                  .join(', ')})`;
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C20-L125C29)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return <strong>`${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`</strong>;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

27. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L142C7-L142C18)
    <pre><code class="javascript">  if (_search) {
        if (whereString !== '') {
          <strong>whereString</strong> += ' AND ';
        } else {
          whereString += ' WHERE ';
    </code></pre>

28. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L142C7-L142C18)
    <pre><code class="javascript">  if (_search) {
        if (whereString !== '') {
          <strong>whereString</strong> += ' AND ';
        } else {
          whereString += ' WHERE ';
    </code></pre>

29. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L149C7-L149C18)
    <pre><code class="javascript">      // get all fields of the table
          const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          <strong>whereString</strong> += '(';
          whereString += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
    </code></pre>

30. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L149C7-L149C18)
    <pre><code class="javascript">      // get all fields of the table
          const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          <strong>whereString</strong> += '(';
          whereString += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
    </code></pre>

31. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
    <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          whereString += '(';
          <strong>whereString</strong> += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
    </code></pre>

32. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
    <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          whereString += '(';
          <strong>whereString</strong> += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
    </code></pre>

33. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

34. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

35. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L300C7-L300C18)
    <pre><code class="javascript">      tableName,
          extendString,
          <strong>whereString</strong>,
          orderString,
          limit,
    </code></pre>

36. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

37. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

38. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C42)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data</strong>.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

39. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C54)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data.whereString</strong> || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

40. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

41. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 44 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...<strong>value</strong>] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...<strong>value</strong>] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C17-L85C22)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = <strong>value</strong>.map((element) =&gt; element).join(':');
          }

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C28-L85C35)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = value.map((<strong>element</strong>) =&gt; element).join(':');
          }

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C40-L85C47)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = value.map((element) =&gt; <strong>element</strong>).join(':');
          }

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C17-L85C48)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = <strong>value.map((element) =&gt; element)</strong>.join(':');
          }

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C17-L85C58)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = <strong>value.map((element) =&gt; element).join(':')</strong>;
          }

    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C9-L85C14)
    <pre><code class="javascript">        value = value[0];
          } else {
            <strong>value</strong> = value.map((element) =&gt; element).join(':');
          }

    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C33-L104C38)
    <pre><code class="javascript">      }

          return { field, operator, <strong>value</strong> };
        });
      } catch (error) {
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C39)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter</strong>.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C45)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter.value</strong>.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C58)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter.value.slice(1, -1)</strong>.split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C69)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter.value.slice(1, -1).split(',')</strong>;
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

27. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C19-L122C30)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const <strong>arrayValues</strong> = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

28. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C56-L123C67)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${<strong>arrayValues</strong>
                  .map((val) =&gt; `'${val}'`)
                  .join(', ')})`;
    </code></pre>

29. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L124C21-L124C24)
    <pre><code class="javascript">            const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((<strong>val</strong>) =&gt; `'${val}'`)
                  .join(', ')})`;
              } else {
    </code></pre>

30. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L124C33-L124C36)
    <pre><code class="javascript">            const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${<strong>val</strong>}'`)
                  .join(', ')})`;
              } else {
    </code></pre>

31. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L124C29-L124C39)
    <pre><code class="javascript">            const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; <strong>`'${val}'`</strong>)
                  .join(', ')})`;
              } else {
    </code></pre>

32. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C56-L124C40)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${<strong>arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
                  .join(', ')})`;
              } else {
    </code></pre>

33. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C56-L125C26)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${<strong>arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')</strong>})`;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
    </code></pre>

34. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C20-L125C29)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return <strong>`${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`</strong>;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
    </code></pre>

35. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

36. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

37. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

38. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L300C7-L300C18)
    <pre><code class="javascript">      tableName,
          extendString,
          <strong>whereString</strong>,
          orderString,
          limit,
    </code></pre>

39. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

40. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

41. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C42)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data</strong>.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

42. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C54)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data.whereString</strong> || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

43. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

44. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

<details>
<summary>Path with 33 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [<strong>key</strong>, ...value] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [<strong>key</strong>, ...value] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C22)
    <pre><code class="javascript">      }

          let field = <strong>key</strong>.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C34)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')</strong>[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C37)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')[0]</strong>;
          let fieldOperator = key.split('__')[1];

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C11-L88C16)
    <pre><code class="javascript">      }

          let <strong>field</strong> = key.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C16-L104C21)
    <pre><code class="javascript">      }

          return { <strong>field</strong>, operator, value };
        });
      } catch (error) {
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C36-L127C42)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${<strong>filter</strong>.field} ${filter.operator} '${filter.value}'`;
              }
            } else {
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C36-L127C48)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${<strong>filter.field</strong>} ${filter.operator} '${filter.value}'`;
              }
            } else {
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C20-L127C87)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return <strong>`${tableName}.${filter.field} ${filter.operator} '${filter.value}'`</strong>;
              }
            } else {
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

27. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L300C7-L300C18)
    <pre><code class="javascript">      tableName,
          extendString,
          <strong>whereString</strong>,
          orderString,
          limit,
    </code></pre>

28. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L296C31-L305C6)
    <pre><code class="javascript">
      try {
        let data = rowService.get(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      whereString,</strong>
    <strong>      orderString,</strong>
    <strong>      limit,</strong>
    <strong>      page: limit * (page - 1),</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

29. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L5C9-L5C13)
    <pre><code class="javascript">module.exports = (db) =&gt; {
      return {
        get(<strong>data</strong>) {
          const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
    </code></pre>

30. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C42)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data</strong>.whereString || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

31. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L8C38-L8C54)
    <pre><code class="javascript">      const query = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${<strong>data.whereString</strong> || ''} ${
            data.orderString || ''
          } LIMIT ? OFFSET ?`;
    </code></pre>

32. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L6C13-L6C18)
    <pre><code class="javascript">  return {
        get(data) {
          const <strong>query</strong> = `SELECT ${data.schemaString || '*'} FROM ${
            data.tableName
          } ${data.extendString || ''} ${data.whereString || ''} ${
    </code></pre>

33. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L12C36-L12C41)
    <pre><code class="javascript">      } LIMIT ? OFFSET ?`;

          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(
            ...data.whereStringValues,
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C99-L547C108)
   <pre><code class="javascript">          .all();

           extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C9-L547C21)
   <pre><code class="javascript">          .all();

           <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L579C7-L579C16)
   <pre><code class="javascript">    let data = rowService.getById({
         schemaString,
         <strong>tableName</strong>,
         extendString,
         lookupField,
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
   <pre><code class="javascript">
     try {
       let data = rowService.getById(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      lookupField,</strong>
   <strong>      pks,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
   <pre><code class="javascript">    },

       getById(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C57-L25C61)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${<strong>data</strong>.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C57-L25C71)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${<strong>data.tableName</strong>} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 20 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L491C26-L491C35)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${<strong>tableName</strong>}.${field},`;
       });
     } else {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L491C7-L491C19)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         <strong>schemaString</strong> += `${tableName}.${field},`;
       });
     } else {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L494C23-L494C32)
   <pre><code class="javascript">    });
     } else {
       schemaString = `${<strong>tableName</strong>}.*`;
     }

   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C99-L547C108)
   <pre><code class="javascript">          .all();

           extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C9-L547C21)
   <pre><code class="javascript">          .all();

           <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L494C5-L494C17)
   <pre><code class="javascript">    });
     } else {
       <strong>schemaString</strong> = `${tableName}.*`;
     }

   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C18-L498C30)
   <pre><code class="javascript">
     // remove trailing comma
     schemaString = <strong>schemaString</strong>.replace(/,\s*$/, '');

     // if _extend is provided, extend rows with related data using joins
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C18-L498C51)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString.replace(/,\s*$/, '')</strong>;

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C3-L498C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L563C11-L563C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L563C11-L563C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L578C7-L578C19)
    <pre><code class="javascript">  try {
        let data = rowService.getById({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
    <pre><code class="javascript">
      try {
        let data = rowService.getById(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
    <pre><code class="javascript">    },

        getById(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C35)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data</strong>.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C48)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data.schemaString</strong>} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 14 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C99-L547C108)
   <pre><code class="javascript">          .all();

           extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C9-L547C21)
   <pre><code class="javascript">          .all();

           <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L472C39-L472C48)
   <pre><code class="javascript">    try {
         lookupField = db
           .prepare(`PRAGMA table_info(${<strong>tableName</strong>})`)
           .all()
           .find((field) =&gt; field.pk === 1).name;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C99-L547C108)
   <pre><code class="javascript">          .all();

           extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C9-L547C21)
   <pre><code class="javascript">          .all();

           <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L580C7-L580C19)
   <pre><code class="javascript">      schemaString,
         tableName,
         <strong>extendString</strong>,
         lookupField,
         pks,
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
   <pre><code class="javascript">
     try {
       let data = rowService.getById(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      lookupField,</strong>
   <strong>      pks,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
    <pre><code class="javascript">    },

        getById(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C75-L25C79)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${<strong>data</strong>.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

12. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C75-L25C92)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${<strong>data.extendString</strong>} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C11-L463C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L463C17-L463C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field, _schema, _extend } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L579C7-L579C16)
   <pre><code class="javascript">    let data = rowService.getById({
         schemaString,
         <strong>tableName</strong>,
         extendString,
         lookupField,
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
   <pre><code class="javascript">
     try {
       let data = rowService.getById(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      lookupField,</strong>
   <strong>      pks,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
   <pre><code class="javascript">    },

       getById(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C102-L25C106)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${<strong>data</strong>.tableName}.${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C102-L25C116)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${<strong>data.tableName</strong>}.${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
   <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(<strong>query</strong>);
         const result = statement.all(...pks);
         return result;
   </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C11-L464C24)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { <strong>_lookup_field</strong>, _schema, _extend } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C11-L464C24)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { <strong>_lookup_field</strong>, _schema, _extend } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L466C21-L466C34)
   <pre><code class="javascript">  const { _lookup_field, _schema, _extend } = req.query;

     let lookupField = <strong>_lookup_field</strong>;

     if (!_lookup_field) {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L466C7-L466C18)
   <pre><code class="javascript">  const { _lookup_field, _schema, _extend } = req.query;

     let <strong>lookupField</strong> = _lookup_field;

     if (!_lookup_field) {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L581C7-L581C18)
   <pre><code class="javascript">      tableName,
         extendString,
         <strong>lookupField</strong>,
         pks,
       });
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
   <pre><code class="javascript">
     try {
       let data = rowService.getById(<strong>{</strong>
   <strong>      schemaString,</strong>
   <strong>      tableName,</strong>
   <strong>      extendString,</strong>
   <strong>      lookupField,</strong>
   <strong>      pks,</strong>
   <strong>    }</strong>);

       // parse json extended files
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
   <pre><code class="javascript">    },

       getById(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C120-L25C124)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${<strong>data</strong>.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C120-L25C136)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${<strong>data.lookupField</strong>} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.all(...pks);
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 22 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C26-L464C33)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, <strong>_schema</strong>, _extend } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C26-L464C33)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, <strong>_schema</strong>, _extend } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L489C26-L489C33)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema</strong>.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L489C26-L489C44)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema.split(',')</strong>;
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L489C11-L489C23)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const <strong>schemaFields</strong> = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L490C5-L490C17)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       <strong>schemaFields</strong>.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L490C27-L490C32)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       schemaFields.forEach((<strong>field</strong>) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L491C39-L491C44)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${<strong>field</strong>},`;
       });
     } else {
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L491C7-L491C19)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         <strong>schemaString</strong> += `${tableName}.${field},`;
       });
     } else {
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C3-L498C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C18-L498C30)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString</strong>.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C18-L498C51)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString.replace(/,\s*$/, '')</strong>;

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C3-L498C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L563C11-L563C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L563C11-L563C23)
    <pre><code class="javascript">
            if (schemaString) {
              <strong>schemaString</strong> += ', ';
            }

    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L578C7-L578C19)
    <pre><code class="javascript">  try {
        let data = rowService.getById({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
    <pre><code class="javascript">
      try {
        let data = rowService.getById(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
    <pre><code class="javascript">    },

        getById(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C35)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data</strong>.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C48)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data.schemaString</strong>} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

21. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

22. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 22 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C26-L464C33)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, <strong>_schema</strong>, _extend } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C26-L464C33)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, <strong>_schema</strong>, _extend } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L489C26-L489C33)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema</strong>.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L489C26-L489C44)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const schemaFields = <strong>_schema.split(',')</strong>;
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L489C11-L489C23)
   <pre><code class="javascript">  let schemaString = '';
     if (_schema) {
       const <strong>schemaFields</strong> = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L490C5-L490C17)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       <strong>schemaFields</strong>.forEach((field) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L490C27-L490C32)
   <pre><code class="javascript">  if (_schema) {
       const schemaFields = _schema.split(',');
       schemaFields.forEach((<strong>field</strong>) =&gt; {
         schemaString += `${tableName}.${field},`;
       });
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L491C39-L491C44)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         schemaString += `${tableName}.${<strong>field</strong>},`;
       });
     } else {
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L491C7-L491C19)
   <pre><code class="javascript">    const schemaFields = _schema.split(',');
       schemaFields.forEach((field) =&gt; {
         <strong>schemaString</strong> += `${tableName}.${field},`;
       });
     } else {
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C3-L498C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C18-L498C30)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString</strong>.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C18-L498C51)
    <pre><code class="javascript">
      // remove trailing comma
      schemaString = <strong>schemaString.replace(/,\s*$/, '')</strong>;

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L498C3-L498C15)
    <pre><code class="javascript">
      // remove trailing comma
      <strong>schemaString</strong> = schemaString.replace(/,\s*$/, '');

      // if _extend is provided, extend rows with related data using joins
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L566C9-L566C21)
    <pre><code class="javascript">        }

            <strong>schemaString</strong> += extendFieldsString;
          } catch (error) {
            return res.status(400).json({
    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L566C9-L566C21)
    <pre><code class="javascript">        }

            <strong>schemaString</strong> += extendFieldsString;
          } catch (error) {
            return res.status(400).json({
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L578C7-L578C19)
    <pre><code class="javascript">  try {
        let data = rowService.getById({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
    <pre><code class="javascript">
      try {
        let data = rowService.getById(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
    <pre><code class="javascript">    },

        getById(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C35)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data</strong>.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C48)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data.schemaString</strong>} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

21. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

22. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.all(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 16 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C35-L464C42)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, _schema, <strong>_extend</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C35-L464C42)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, _schema, <strong>_extend</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L529C26-L529C33)
   <pre><code class="javascript">  let extendString = '';
     if (_extend) {
       const extendFields = <strong>_extend</strong>.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L529C26-L529C44)
   <pre><code class="javascript">  let extendString = '';
     if (_extend) {
       const extendFields = <strong>_extend.split(',')</strong>;
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L529C11-L529C23)
   <pre><code class="javascript">  let extendString = '';
     if (_extend) {
       const <strong>extendFields</strong> = _extend.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L530C5-L530C17)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       <strong>extendFields</strong>.forEach((extendedField) =&gt; {
         try {
           const foreignKey = db
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L530C27-L530C40)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       extendFields.forEach((<strong>extendedField</strong>) =&gt; {
         try {
           const foreignKey = db
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C112-L547C125)
   <pre><code class="javascript">          .all();

           extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${<strong>extendedField</strong>}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L547C9-L547C21)
   <pre><code class="javascript">          .all();

           <strong>extendString</strong> += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${extendedField}`;

           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L580C7-L580C19)
    <pre><code class="javascript">      schemaString,
          tableName,
          <strong>extendString</strong>,
          lookupField,
          pks,
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
    <pre><code class="javascript">
      try {
        let data = rowService.getById(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

12. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
    <pre><code class="javascript">    },

        getById(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C75-L25C79)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${<strong>data</strong>.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C75-L25C92)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${<strong>data.extendString</strong>} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 18 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C35-L464C42)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, _schema, <strong>_extend</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L464C35-L464C42)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { _lookup_field, _schema, <strong>_extend</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L529C26-L529C33)
   <pre><code class="javascript">  let extendString = '';
     if (_extend) {
       const extendFields = <strong>_extend</strong>.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L529C26-L529C44)
   <pre><code class="javascript">  let extendString = '';
     if (_extend) {
       const extendFields = <strong>_extend.split(',')</strong>;
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L529C11-L529C23)
   <pre><code class="javascript">  let extendString = '';
     if (_extend) {
       const <strong>extendFields</strong> = _extend.split(',');
       extendFields.forEach((extendedField) =&gt; {
         try {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L530C5-L530C17)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       <strong>extendFields</strong>.forEach((extendedField) =&gt; {
         try {
           const foreignKey = db
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L530C27-L530C40)
   <pre><code class="javascript">  if (_extend) {
       const extendFields = _extend.split(',');
       extendFields.forEach((<strong>extendedField</strong>) =&gt; {
         try {
           const foreignKey = db
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L559C11-L559C24)
   <pre><code class="javascript">            .join(', ') +
             ' ) as ' +
             <strong>extendedField</strong> +
             '_data';

   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L550C15-L550C33)
   <pre><code class="javascript">
           // joined fields will be returned in a new object called {field}_data e.g. author_id_data
           const <strong>extendFieldsString</strong> =
             'json_object( ' +
             joinedTableFields
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L566C25-L566C43)
    <pre><code class="javascript">        }

            schemaString += <strong>extendFieldsString</strong>;
          } catch (error) {
            return res.status(400).json({
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L566C9-L566C21)
    <pre><code class="javascript">        }

            <strong>schemaString</strong> += extendFieldsString;
          } catch (error) {
            return res.status(400).json({
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L578C7-L578C19)
    <pre><code class="javascript">  try {
        let data = rowService.getById({
          <strong>schemaString</strong>,
          tableName,
          extendString,
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L577C35-L583C6)
    <pre><code class="javascript">
      try {
        let data = rowService.getById(<strong>{</strong>
    <strong>      schemaString,</strong>
    <strong>      tableName,</strong>
    <strong>      extendString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        // parse json extended files
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L22C13-L22C17)
    <pre><code class="javascript">    },

        getById(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C35)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data</strong>.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C31-L25C48)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${<strong>data.schemaString</strong>} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L25C13-L25C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.all(...pks);
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L26C36-L26C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `SELECT ${data.schemaString} FROM ${data.tableName} ${data.extendString} WHERE ${data.tableName}.${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.all(...pks);
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)

<pre><code class="javascript">    getCount(data) {
      const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.get(...data.whereStringValues).total;
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L322C7-L322C16)
   <pre><code class="javascript">    // get total number of rows
       const total = rowService.getCount({
         <strong>tableName</strong>,
         whereString,
         whereStringValues,
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
   <pre><code class="javascript">
       // get total number of rows
       const total = rowService.getCount(<strong>{</strong>
   <strong>      tableName,</strong>
   <strong>      whereString,</strong>
   <strong>      whereStringValues,</strong>
   <strong>    }</strong>);

       const nextPage =
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
   <pre><code class="javascript">    },

       getCount(<strong>data</strong>) {
         const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
         const statement = db.prepare(query);
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C54-L32C58)
   <pre><code class="javascript">
       getCount(data) {
         const query = `SELECT COUNT(*) as total FROM ${<strong>data</strong>.tableName} ${data.whereString}`;
         const statement = db.prepare(query);
         const result = statement.get(...data.whereStringValues).total;
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C54-L32C68)
   <pre><code class="javascript">
       getCount(data) {
         const query = `SELECT COUNT(*) as total FROM ${<strong>data.tableName</strong>} ${data.whereString}`;
         const statement = db.prepare(query);
         const result = statement.get(...data.whereStringValues).total;
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
   <pre><code class="javascript">
       getCount(data) {
         const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
         const statement = db.prepare(query);
         const result = statement.get(...data.whereStringValues).total;
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
   <pre><code class="javascript">    getCount(data) {
         const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
         const statement = db.prepare(<strong>query</strong>);
         const result = statement.get(...data.whereStringValues).total;
         return result;
   </code></pre>

</details>

<details>
<summary>Path with 14 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C23-L123C32)
   <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
               const arrayValues = filter.value.slice(1, -1).split(',');
               return `${<strong>tableName</strong>}.${filter.field} IN (${arrayValues
                 .map((val) =&gt; `'${val}'`)
                 .join(', ')})`;
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C20-L125C29)
   <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
               const arrayValues = filter.value.slice(1, -1).split(',');
               return <strong>`${tableName}.${filter.field} IN (${arrayValues</strong>
   <strong>              .map((val) =&gt; `'${val}'`)</strong>
   <strong>              .join(', ')})`</strong>;
             } else {
               return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
   <pre><code class="javascript">  if (_filters !== '') {
       whereString += ' WHERE ';
       whereString += <strong>filters</strong>
   <strong>      .map((filter) =&gt; {</strong>
   <strong>        if (filter.value) {</strong>
   <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
   <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
   <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
   <strong>              .map((val) =&gt; `'${val}'`)</strong>
   <strong>              .join(', ')})`;</strong>
   <strong>          } else {</strong>
   <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
   <strong>          }</strong>
   <strong>        } else {</strong>
   <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
   <strong>        }</strong>
   <strong>      })</strong>
         .join(' AND ');
       params = `_filters=${_filters}&amp;`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
   <pre><code class="javascript">  if (_filters !== '') {
       whereString += ' WHERE ';
       whereString += <strong>filters</strong>
   <strong>      .map((filter) =&gt; {</strong>
   <strong>        if (filter.value) {</strong>
   <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
   <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
   <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
   <strong>              .map((val) =&gt; `'${val}'`)</strong>
   <strong>              .join(', ')})`;</strong>
   <strong>          } else {</strong>
   <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
   <strong>          }</strong>
   <strong>        } else {</strong>
   <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
   <strong>        }</strong>
   <strong>      })</strong>
   <strong>      .join(' AND ')</strong>;
       params = `_filters=${_filters}&amp;`;
     }
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
   <pre><code class="javascript">  if (_filters !== '') {
       whereString += ' WHERE ';
       <strong>whereString</strong> += filters
         .map((filter) =&gt; {
           if (filter.value) {
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
   <pre><code class="javascript">    const total = rowService.getCount({
         tableName,
         <strong>whereString</strong>,
         whereStringValues,
       });
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
   <pre><code class="javascript">
       // get total number of rows
       const total = rowService.getCount(<strong>{</strong>
   <strong>      tableName,</strong>
   <strong>      whereString,</strong>
   <strong>      whereStringValues,</strong>
   <strong>    }</strong>);

       const nextPage =
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

12. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 10 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L298C7-L298C16)
   <pre><code class="javascript">    let data = rowService.get({
         schemaString,
         <strong>tableName</strong>,
         extendString,
         whereString,
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L322C7-L322C16)
   <pre><code class="javascript">    // get total number of rows
       const total = rowService.getCount({
         <strong>tableName</strong>,
         whereString,
         whereStringValues,
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
   <pre><code class="javascript">
       // get total number of rows
       const total = rowService.getCount(<strong>{</strong>
   <strong>      tableName,</strong>
   <strong>      whereString,</strong>
   <strong>      whereStringValues,</strong>
   <strong>    }</strong>);

       const nextPage =
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
   <pre><code class="javascript">    },

       getCount(<strong>data</strong>) {
         const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
         const statement = db.prepare(query);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C54-L32C58)
   <pre><code class="javascript">
       getCount(data) {
         const query = `SELECT COUNT(*) as total FROM ${<strong>data</strong>.tableName} ${data.whereString}`;
         const statement = db.prepare(query);
         const result = statement.get(...data.whereStringValues).total;
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C54-L32C68)
   <pre><code class="javascript">
       getCount(data) {
         const query = `SELECT COUNT(*) as total FROM ${<strong>data.tableName</strong>} ${data.whereString}`;
         const statement = db.prepare(query);
         const result = statement.get(...data.whereStringValues).total;
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
   <pre><code class="javascript">
       getCount(data) {
         const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
         const statement = db.prepare(query);
         const result = statement.get(...data.whereStringValues).total;
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 17 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L148C54-L148C63)
   <pre><code class="javascript">    try {
         // get all fields of the table
         const fields = db.prepare(`PRAGMA table_info(${<strong>tableName</strong>})`).all();
         whereString += '(';
         whereString += fields
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L151C28-L151C37)
   <pre><code class="javascript">      whereString += '(';
         whereString += fields
           .map((field) =&gt; `${<strong>tableName</strong>}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
         whereString += ')';
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L151C25-L151C73)
   <pre><code class="javascript">      whereString += '(';
         whereString += fields
           .map((field) =&gt; <strong>`${tableName}.${field.name} LIKE '%${_search}%'`</strong>)
           .join(' OR ');
         whereString += ')';
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C22-L151C74)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         whereString += <strong>fields</strong>
   <strong>        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)</strong>
           .join(' OR ');
         whereString += ')';
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C22-L152C22)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         whereString += <strong>fields</strong>
   <strong>        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)</strong>
   <strong>        .join(' OR ')</strong>;
         whereString += ')';
         params += `_search=${_search}&amp;`;
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         <strong>whereString</strong> += fields
           .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
   <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
         <strong>whereString</strong> += ')';
         params += `_search=${_search}&amp;`;
       } catch (error) {
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
    <pre><code class="javascript">    const total = rowService.getCount({
          tableName,
          <strong>whereString</strong>,
          whereStringValues,
        });
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
    <pre><code class="javascript">
        // get total number of rows
        const total = rowService.getCount(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      whereString,</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        const nextPage =
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)

<pre><code class="javascript">    getCount(data) {
      const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.get(...data.whereStringValues).total;
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 17 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L59C5-L59C12)
   <pre><code class="javascript">    _page = 1,
       _limit = 10,
       <strong>_search</strong>,
       _ordering,
       _schema,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L59C5-L59C12)
   <pre><code class="javascript">    _page = 1,
       _limit = 10,
       <strong>_search</strong>,
       _ordering,
       _schema,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L140C7-L140C14)
   <pre><code class="javascript">  // e.g. ?_search=John will search for John in all fields of the table
     // searching is case insensitive
     if (<strong>_search</strong>) {
       if (whereString !== '') {
         whereString += ' AND ';
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L151C62-L151C69)
   <pre><code class="javascript">      whereString += '(';
         whereString += fields
           .map((field) =&gt; `${tableName}.${field.name} LIKE '%${<strong>_search</strong>}%'`)
           .join(' OR ');
         whereString += ')';
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L151C25-L151C73)
   <pre><code class="javascript">      whereString += '(';
         whereString += fields
           .map((field) =&gt; <strong>`${tableName}.${field.name} LIKE '%${_search}%'`</strong>)
           .join(' OR ');
         whereString += ')';
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C22-L151C74)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         whereString += <strong>fields</strong>
   <strong>        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)</strong>
           .join(' OR ');
         whereString += ')';
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C22-L152C22)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         whereString += <strong>fields</strong>
   <strong>        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)</strong>
   <strong>        .join(' OR ')</strong>;
         whereString += ')';
         params += `_search=${_search}&amp;`;
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
   <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
         whereString += '(';
         <strong>whereString</strong> += fields
           .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
   <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
           .join(' OR ');
         <strong>whereString</strong> += ')';
         params += `_search=${_search}&amp;`;
       } catch (error) {
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
    <pre><code class="javascript">    const total = rowService.getCount({
          tableName,
          <strong>whereString</strong>,
          whereStringValues,
        });
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
    <pre><code class="javascript">
        // get total number of rows
        const total = rowService.getCount(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      whereString,</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        const nextPage =
    </code></pre>

13. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)

<pre><code class="javascript">    getCount(data) {
      const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.get(...data.whereStringValues).total;
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 31 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...<strong>value</strong>] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...<strong>value</strong>] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L83C17-L83C22)
    <pre><code class="javascript">      let [key, ...value] = filter.split(':');
          if (value.length === 1) {
            value = <strong>value</strong>[0];
          } else {
            value = value.map((element) =&gt; element).join(':');
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L83C9-L83C14)
    <pre><code class="javascript">      let [key, ...value] = filter.split(':');
          if (value.length === 1) {
            <strong>value</strong> = value[0];
          } else {
            value = value.map((element) =&gt; element).join(':');
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C33-L104C38)
    <pre><code class="javascript">      }

          return { field, operator, <strong>value</strong> };
        });
      } catch (error) {
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C72-L127C78)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${<strong>filter</strong>.value}'`;
              }
            } else {
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C72-L127C84)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${<strong>filter.value</strong>}'`;
              }
            } else {
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C20-L127C87)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return <strong>`${tableName}.${filter.field} ${filter.operator} '${filter.value}'`</strong>;
              }
            } else {
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
    <pre><code class="javascript">    const total = rowService.getCount({
          tableName,
          <strong>whereString</strong>,
          whereStringValues,
        });
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
    <pre><code class="javascript">
        // get total number of rows
        const total = rowService.getCount(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      whereString,</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        const nextPage =
    </code></pre>

27. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

28. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

29. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

30. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

31. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 41 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [<strong>key</strong>, ...value] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [<strong>key</strong>, ...value] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C22)
    <pre><code class="javascript">      }

          let field = <strong>key</strong>.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C34)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')</strong>[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C37)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')[0]</strong>;
          let fieldOperator = key.split('__')[1];

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C11-L88C16)
    <pre><code class="javascript">      }

          let <strong>field</strong> = key.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C16-L104C21)
    <pre><code class="javascript">      }

          return { <strong>field</strong>, operator, value };
        });
      } catch (error) {
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C36-L123C42)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${<strong>filter</strong>.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
                  .join(', ')})`;
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C36-L123C48)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${<strong>filter.field</strong>} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
                  .join(', ')})`;
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C20-L125C29)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return <strong>`${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`</strong>;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

27. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L142C7-L142C18)
    <pre><code class="javascript">  if (_search) {
        if (whereString !== '') {
          <strong>whereString</strong> += ' AND ';
        } else {
          whereString += ' WHERE ';
    </code></pre>

28. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L142C7-L142C18)
    <pre><code class="javascript">  if (_search) {
        if (whereString !== '') {
          <strong>whereString</strong> += ' AND ';
        } else {
          whereString += ' WHERE ';
    </code></pre>

29. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L149C7-L149C18)
    <pre><code class="javascript">      // get all fields of the table
          const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          <strong>whereString</strong> += '(';
          whereString += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
    </code></pre>

30. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L149C7-L149C18)
    <pre><code class="javascript">      // get all fields of the table
          const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          <strong>whereString</strong> += '(';
          whereString += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
    </code></pre>

31. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
    <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          whereString += '(';
          <strong>whereString</strong> += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
    </code></pre>

32. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L150C7-L150C18)
    <pre><code class="javascript">      const fields = db.prepare(`PRAGMA table_info(${tableName})`).all();
          whereString += '(';
          <strong>whereString</strong> += fields
            .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
    </code></pre>

33. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

34. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L153C7-L153C18)
    <pre><code class="javascript">        .map((field) =&gt; `${tableName}.${field.name} LIKE '%${_search}%'`)
            .join(' OR ');
          <strong>whereString</strong> += ')';
          params += `_search=${_search}&amp;`;
        } catch (error) {
    </code></pre>

35. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
    <pre><code class="javascript">    const total = rowService.getCount({
          tableName,
          <strong>whereString</strong>,
          whereStringValues,
        });
    </code></pre>

36. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
    <pre><code class="javascript">
        // get total number of rows
        const total = rowService.getCount(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      whereString,</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        const nextPage =
    </code></pre>

37. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

38. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

39. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

40. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

41. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 44 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...<strong>value</strong>] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C20-L81C25)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...<strong>value</strong>] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C17-L85C22)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = <strong>value</strong>.map((element) =&gt; element).join(':');
          }

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C28-L85C35)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = value.map((<strong>element</strong>) =&gt; element).join(':');
          }

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C40-L85C47)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = value.map((element) =&gt; <strong>element</strong>).join(':');
          }

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C17-L85C48)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = <strong>value.map((element) =&gt; element)</strong>.join(':');
          }

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C17-L85C58)
    <pre><code class="javascript">        value = value[0];
          } else {
            value = <strong>value.map((element) =&gt; element).join(':')</strong>;
          }

    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L85C9-L85C14)
    <pre><code class="javascript">        value = value[0];
          } else {
            <strong>value</strong> = value.map((element) =&gt; element).join(':');
          }

    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C33-L104C38)
    <pre><code class="javascript">      }

          return { field, operator, <strong>value</strong> };
        });
      } catch (error) {
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C39)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter</strong>.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C45)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter.value</strong>.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C58)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter.value.slice(1, -1)</strong>.split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C33-L122C69)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = <strong>filter.value.slice(1, -1).split(',')</strong>;
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

27. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L122C19-L122C30)
    <pre><code class="javascript">        if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const <strong>arrayValues</strong> = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${val}'`)
    </code></pre>

28. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C56-L123C67)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${<strong>arrayValues</strong>
                  .map((val) =&gt; `'${val}'`)
                  .join(', ')})`;
    </code></pre>

29. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L124C21-L124C24)
    <pre><code class="javascript">            const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((<strong>val</strong>) =&gt; `'${val}'`)
                  .join(', ')})`;
              } else {
    </code></pre>

30. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L124C33-L124C36)
    <pre><code class="javascript">            const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; `'${<strong>val</strong>}'`)
                  .join(', ')})`;
              } else {
    </code></pre>

31. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L124C29-L124C39)
    <pre><code class="javascript">            const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${arrayValues
                  .map((val) =&gt; <strong>`'${val}'`</strong>)
                  .join(', ')})`;
              } else {
    </code></pre>

32. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C56-L124C40)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${<strong>arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
                  .join(', ')})`;
              } else {
    </code></pre>

33. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C56-L125C26)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return `${tableName}.${filter.field} IN (${<strong>arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')</strong>})`;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
    </code></pre>

34. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L123C20-L125C29)
    <pre><code class="javascript">          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
                const arrayValues = filter.value.slice(1, -1).split(',');
                return <strong>`${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`</strong>;
              } else {
                return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;
    </code></pre>

35. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

36. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

37. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

38. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
    <pre><code class="javascript">    const total = rowService.getCount({
          tableName,
          <strong>whereString</strong>,
          whereStringValues,
        });
    </code></pre>

39. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
    <pre><code class="javascript">
        // get total number of rows
        const total = rowService.getCount(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      whereString,</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        const nextPage =
    </code></pre>

40. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

41. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

42. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

43. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

44. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 33 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C18)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters = ''</strong>,
     } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L63C5-L63C13)
   <pre><code class="javascript">    _schema,
       _extend,
       <strong>_filters</strong> = '',
     } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C23)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters</strong>.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L79C33)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = <strong>_filters.split(re)</strong>.map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C39-L79C45)
   <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
     try {
       filters = _filters.split(re).map((<strong>filter</strong>) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = filter.split(':');
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C35)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter</strong>.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C29-L81C46)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [key, ...value] = <strong>filter.split(':')</strong>;
         if (value.length === 1) {
           value = value[0];
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C11-L81C26)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let <strong>[key, ...value]</strong> = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
   <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
         //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
         let [<strong>key</strong>, ...value] = filter.split(':');
         if (value.length === 1) {
           value = value[0];
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L81C12-L81C15)
    <pre><code class="javascript">    filters = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [<strong>key</strong>, ...value] = filter.split(':');
          if (value.length === 1) {
            value = value[0];
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C22)
    <pre><code class="javascript">      }

          let field = <strong>key</strong>.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C34)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')</strong>[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C19-L88C37)
    <pre><code class="javascript">      }

          let field = <strong>key.split('__')[0]</strong>;
          let fieldOperator = key.split('__')[1];

    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L88C11-L88C16)
    <pre><code class="javascript">      }

          let <strong>field</strong> = key.split('__')[0];
          let fieldOperator = key.split('__')[1];

    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C16-L104C21)
    <pre><code class="javascript">      }

          return { <strong>field</strong>, operator, value };
        });
      } catch (error) {
    </code></pre>

16. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L104C14-L104C40)
    <pre><code class="javascript">      }

          return <strong>{ field, operator, value }</strong>;
        });
      } catch (error) {
    </code></pre>

17. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C15-L105C7)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        filters = <strong>_filters.split(re).map((filter) =&gt; {</strong>
    <strong>      //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.</strong>
    <strong>      let [key, ...value] = filter.split(':');</strong>
    <strong>      if (value.length === 1) {</strong>
    <strong>        value = value[0];</strong>
    <strong>      } else {</strong>
    <strong>        value = value.map((element) =&gt; element).join(':');</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let field = key.split('__')[0];</strong>
    <strong>      let fieldOperator = key.split('__')[1];</strong>
    <strong></strong>
    <strong>      if (!fieldOperator) {</strong>
    <strong>        fieldOperator = 'eq';</strong>
    <strong>      } else if (!operators[fieldOperator]) {</strong>
    <strong>        throw new Error(</strong>
    <strong>          `Invalid field operator '${fieldOperator}' for field '${field}'. You can only use the following operators after the '${field}' field: __lt, __gt, __lte, __gte, __eq, __neq.`,</strong>
    <strong>        );</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      let operator = operators[fieldOperator];</strong>
    <strong>      if (['null', 'notnull'].includes(fieldOperator)) {</strong>
    <strong>        value = null;</strong>
    <strong>      }</strong>
    <strong></strong>
    <strong>      return { field, operator, value };</strong>
    <strong>    })</strong>;
      } catch (error) {
        return res.status(400).json({
    </code></pre>

18. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L79C5-L79C12)
    <pre><code class="javascript">  const re = /,(?![^[]*?\])/;
      try {
        <strong>filters</strong> = _filters.split(re).map((filter) =&gt; {
          //NOTE: When using the _filter parameter, the values are split using the ":" sign, like this (_filters=Total__eq:1). However, if the user sends a date value, such as (_filters=InvoiceDate__eq:2010-01-08 00:00:00), there will be additional colon (":") signs present.
          let [key, ...value] = filter.split(':');
    </code></pre>

19. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L118C27)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

20. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L119C13-L119C19)
    <pre><code class="javascript">    whereString += ' WHERE ';
        whereString += filters
          .map((<strong>filter</strong>) =&gt; {
            if (filter.value) {
              if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {
    </code></pre>

21. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C36-L127C42)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${<strong>filter</strong>.field} ${filter.operator} '${filter.value}'`;
              }
            } else {
    </code></pre>

22. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C36-L127C48)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return `${tableName}.${<strong>filter.field</strong>} ${filter.operator} '${filter.value}'`;
              }
            } else {
    </code></pre>

23. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L127C20-L127C87)
    <pre><code class="javascript">              .join(', ')})`;
              } else {
                return <strong>`${tableName}.${filter.field} ${filter.operator} '${filter.value}'`</strong>;
              }
            } else {
    </code></pre>

24. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L132C9)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
          .join(' AND ');
        params = `_filters=${_filters}&amp;`;
    </code></pre>

25. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C20-L133C21)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        whereString += <strong>filters</strong>
    <strong>      .map((filter) =&gt; {</strong>
    <strong>        if (filter.value) {</strong>
    <strong>          if (filter.value.startsWith('[') &amp;&amp; filter.value.endsWith(']')) {</strong>
    <strong>            const arrayValues = filter.value.slice(1, -1).split(',');</strong>
    <strong>            return `${tableName}.${filter.field} IN (${arrayValues</strong>
    <strong>              .map((val) =&gt; `'${val}'`)</strong>
    <strong>              .join(', ')})`;</strong>
    <strong>          } else {</strong>
    <strong>            return `${tableName}.${filter.field} ${filter.operator} '${filter.value}'`;</strong>
    <strong>          }</strong>
    <strong>        } else {</strong>
    <strong>          return `${tableName}.${filter.field} ${filter.operator}`;</strong>
    <strong>        }</strong>
    <strong>      })</strong>
    <strong>      .join(' AND ')</strong>;
        params = `_filters=${_filters}&amp;`;
      }
    </code></pre>

26. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L118C5-L118C16)
    <pre><code class="javascript">  if (_filters !== '') {
        whereString += ' WHERE ';
        <strong>whereString</strong> += filters
          .map((filter) =&gt; {
            if (filter.value) {
    </code></pre>

27. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L323C7-L323C18)
    <pre><code class="javascript">    const total = rowService.getCount({
          tableName,
          <strong>whereString</strong>,
          whereStringValues,
        });
    </code></pre>

28. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L321C39-L325C6)
    <pre><code class="javascript">
        // get total number of rows
        const total = rowService.getCount(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      whereString,</strong>
    <strong>      whereStringValues,</strong>
    <strong>    }</strong>);

        const nextPage =
    </code></pre>

29. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L31C14-L31C18)
    <pre><code class="javascript">    },

        getCount(<strong>data</strong>) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
    </code></pre>

30. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C76)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data</strong>.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

31. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C72-L32C88)
    <pre><code class="javascript">
        getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${<strong>data.whereString</strong>}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

32. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L32C13-L32C18)
    <pre><code class="javascript">
        getCount(data) {
          const <strong>query</strong> = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(query);
          const result = statement.get(...data.whereStringValues).total;
    </code></pre>

33. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L33C36-L33C41)
    <pre><code class="javascript">    getCount(data) {
          const query = `SELECT COUNT(*) as total FROM ${data.tableName} ${data.whereString}`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.get(...data.whereStringValues).total;
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L56C36-L56C41)

<pre><code class="javascript">
      const query = `INSERT INTO ${data.tableName} ${values}`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.run(...valuesString);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L374C11-L374C26)
   <pre><code class="javascript">  */

     const { <strong>name: tableName</strong> } = req.params;
     const { fields: queryFields } = req.body;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L374C17-L374C26)
   <pre><code class="javascript">  */

     const { name: <strong>tableName</strong> } = req.params;
     const { fields: queryFields } = req.body;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L383C36-L383C45)
   <pre><code class="javascript">
     try {
       const data = rowService.save({ <strong>tableName</strong>, fields });

       /*
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L383C34-L383C55)
   <pre><code class="javascript">
     try {
       const data = rowService.save(<strong>{ tableName, fields }</strong>);

       /*
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L38C10-L38C14)
   <pre><code class="javascript">    },

       save(<strong>data</strong>) {
         // wrap text values in quotes
         const fieldsString = Object.keys(data.fields)
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L55C36-L55C40)
   <pre><code class="javascript">      }

         const query = `INSERT INTO ${<strong>data</strong>.tableName} ${values}`;
         const statement = db.prepare(query);
         const result = statement.run(...valuesString);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L55C36-L55C50)
   <pre><code class="javascript">      }

         const query = `INSERT INTO ${<strong>data.tableName</strong>} ${values}`;
         const statement = db.prepare(query);
         const result = statement.run(...valuesString);
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L55C13-L55C18)
   <pre><code class="javascript">      }

         const <strong>query</strong> = `INSERT INTO ${data.tableName} ${values}`;
         const statement = db.prepare(query);
         const result = statement.run(...valuesString);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L56C36-L56C41)
   <pre><code class="javascript">
         const query = `INSERT INTO ${data.tableName} ${values}`;
         const statement = db.prepare(<strong>query</strong>);
         const result = statement.run(...valuesString);
         return result;
   </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.run(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 18 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L649C22-L649C30)
   <pre><code class="javascript">
     const { name: tableName, pks } = req.params;
     const { fields } = <strong>req.body</strong>;
     const { _lookup_field } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L649C9-L649C19)
   <pre><code class="javascript">
     const { name: tableName, pks } = req.params;
     const <strong>{ fields }</strong> = req.body;
     const { _lookup_field } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L649C11-L649C17)
   <pre><code class="javascript">
     const { name: tableName, pks } = req.params;
     const { <strong>fields</strong> } = req.body;
     const { _lookup_field } = req.query;

   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C36-L670C42)
   <pre><code class="javascript">
     // wrap text values in quotes
     const fieldsString = Object.keys(<strong>fields</strong>)
       .map((key) =&gt; {
         let value = fields[key];
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L672C19-L672C25)
   <pre><code class="javascript">  const fieldsString = Object.keys(fields)
       .map((key) =&gt; {
         let value = <strong>fields</strong>[key];
         if (typeof value === 'string') {
           value = `'${value}'`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L672C11-L672C16)
   <pre><code class="javascript">  const fieldsString = Object.keys(fields)
       .map((key) =&gt; {
         let <strong>value</strong> = fields[key];
         if (typeof value === 'string') {
           value = `'${value}'`;
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L676C28-L676C33)
   <pre><code class="javascript">        value = `'${value}'`;
         }
         return `'${key}' = ${<strong>value</strong>}`;
       })
       .join(', ');
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L676C14-L676C35)
   <pre><code class="javascript">        value = `'${value}'`;
         }
         return <strong>`'${key}' = ${value}`</strong>;
       })
       .join(', ');
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C24-L677C7)
   <pre><code class="javascript">
     // wrap text values in quotes
     const fieldsString = <strong>Object.keys(fields)</strong>
   <strong>    .map((key) =&gt; {</strong>
   <strong>      let value = fields[key];</strong>
   <strong>      if (typeof value === 'string') {</strong>
   <strong>        value = `'${value}'`;</strong>
   <strong>      }</strong>
   <strong>      return `'${key}' = ${value}`;</strong>
   <strong>    })</strong>
       .join(', ');

   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C24-L678C16)
    <pre><code class="javascript">
      // wrap text values in quotes
      const fieldsString = <strong>Object.keys(fields)</strong>
    <strong>    .map((key) =&gt; {</strong>
    <strong>      let value = fields[key];</strong>
    <strong>      if (typeof value === 'string') {</strong>
    <strong>        value = `'${value}'`;</strong>
    <strong>      }</strong>
    <strong>      return `'${key}' = ${value}`;</strong>
    <strong>    })</strong>
    <strong>    .join(', ')</strong>;

      if (fieldsString === '') {
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C9-L670C21)
    <pre><code class="javascript">
      // wrap text values in quotes
      const <strong>fieldsString</strong> = Object.keys(fields)
        .map((key) =&gt; {
          let value = fields[key];
    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L690C7-L690C19)
    <pre><code class="javascript">    const data = rowService.update({
          tableName,
          <strong>fieldsString</strong>,
          lookupField,
          pks,
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L688C36-L693C6)
    <pre><code class="javascript">
      try {
        const data = rowService.update(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      fieldsString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        res.json({
    </code></pre>

14. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L80C12-L80C16)
    <pre><code class="javascript">    },

        update(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

15. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C53-L83C57)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${<strong>data</strong>.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C53-L83C70)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${<strong>data.fieldsString</strong>} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C13-L83C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.run(...pks);
          return result;
    </code></pre>

</details>

<details>
<summary>Path with 20 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L649C22-L649C30)
   <pre><code class="javascript">
     const { name: tableName, pks } = req.params;
     const { fields } = <strong>req.body</strong>;
     const { _lookup_field } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L649C9-L649C19)
   <pre><code class="javascript">
     const { name: tableName, pks } = req.params;
     const <strong>{ fields }</strong> = req.body;
     const { _lookup_field } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L649C11-L649C17)
   <pre><code class="javascript">
     const { name: tableName, pks } = req.params;
     const { <strong>fields</strong> } = req.body;
     const { _lookup_field } = req.query;

   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C36-L670C42)
   <pre><code class="javascript">
     // wrap text values in quotes
     const fieldsString = Object.keys(<strong>fields</strong>)
       .map((key) =&gt; {
         let value = fields[key];
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L672C19-L672C25)
   <pre><code class="javascript">  const fieldsString = Object.keys(fields)
       .map((key) =&gt; {
         let value = <strong>fields</strong>[key];
         if (typeof value === 'string') {
           value = `'${value}'`;
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L672C11-L672C16)
   <pre><code class="javascript">  const fieldsString = Object.keys(fields)
       .map((key) =&gt; {
         let <strong>value</strong> = fields[key];
         if (typeof value === 'string') {
           value = `'${value}'`;
   </code></pre>

7. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L674C21-L674C26)
   <pre><code class="javascript">      let value = fields[key];
         if (typeof value === 'string') {
           value = `'${<strong>value</strong>}'`;
         }
         return `'${key}' = ${value}`;
   </code></pre>

8. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L674C9-L674C14)
   <pre><code class="javascript">      let value = fields[key];
         if (typeof value === 'string') {
           <strong>value</strong> = `'${value}'`;
         }
         return `'${key}' = ${value}`;
   </code></pre>

9. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L676C28-L676C33)
   <pre><code class="javascript">        value = `'${value}'`;
         }
         return `'${key}' = ${<strong>value</strong>}`;
       })
       .join(', ');
   </code></pre>

10. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L676C14-L676C35)
    <pre><code class="javascript">        value = `'${value}'`;
          }
          return <strong>`'${key}' = ${value}`</strong>;
        })
        .join(', ');
    </code></pre>

11. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C24-L677C7)
    <pre><code class="javascript">
      // wrap text values in quotes
      const fieldsString = <strong>Object.keys(fields)</strong>
    <strong>    .map((key) =&gt; {</strong>
    <strong>      let value = fields[key];</strong>
    <strong>      if (typeof value === 'string') {</strong>
    <strong>        value = `'${value}'`;</strong>
    <strong>      }</strong>
    <strong>      return `'${key}' = ${value}`;</strong>
    <strong>    })</strong>
        .join(', ');

    </code></pre>

12. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C24-L678C16)
    <pre><code class="javascript">
      // wrap text values in quotes
      const fieldsString = <strong>Object.keys(fields)</strong>
    <strong>    .map((key) =&gt; {</strong>
    <strong>      let value = fields[key];</strong>
    <strong>      if (typeof value === 'string') {</strong>
    <strong>        value = `'${value}'`;</strong>
    <strong>      }</strong>
    <strong>      return `'${key}' = ${value}`;</strong>
    <strong>    })</strong>
    <strong>    .join(', ')</strong>;

      if (fieldsString === '') {
    </code></pre>

13. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L670C9-L670C21)
    <pre><code class="javascript">
      // wrap text values in quotes
      const <strong>fieldsString</strong> = Object.keys(fields)
        .map((key) =&gt; {
          let value = fields[key];
    </code></pre>

14. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L690C7-L690C19)
    <pre><code class="javascript">    const data = rowService.update({
          tableName,
          <strong>fieldsString</strong>,
          lookupField,
          pks,
    </code></pre>

15. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L688C36-L693C6)
    <pre><code class="javascript">
      try {
        const data = rowService.update(<strong>{</strong>
    <strong>      tableName,</strong>
    <strong>      fieldsString,</strong>
    <strong>      lookupField,</strong>
    <strong>      pks,</strong>
    <strong>    }</strong>);

        res.json({
    </code></pre>

16. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L80C12-L80C16)
    <pre><code class="javascript">    },

        update(<strong>data</strong>) {
          const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
    </code></pre>

17. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C53-L83C57)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${<strong>data</strong>.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

18. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C53-L83C70)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${<strong>data.fieldsString</strong>} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

19. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C13-L83C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

20. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.run(...pks);
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.run(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L648C11-L648C26)
   <pre><code class="javascript">*/

     const { <strong>name: tableName</strong>, pks } = req.params;
     const { fields } = req.body;
     const { _lookup_field } = req.query;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L648C17-L648C26)
   <pre><code class="javascript">*/

     const { name: <strong>tableName</strong>, pks } = req.params;
     const { fields } = req.body;
     const { _lookup_field } = req.query;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L689C7-L689C16)
   <pre><code class="javascript">  try {
       const data = rowService.update({
         <strong>tableName</strong>,
         fieldsString,
         lookupField,
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L688C36-L693C6)
   <pre><code class="javascript">
     try {
       const data = rowService.update(<strong>{</strong>
   <strong>      tableName,</strong>
   <strong>      fieldsString,</strong>
   <strong>      lookupField,</strong>
   <strong>      pks,</strong>
   <strong>    }</strong>);

       res.json({
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L80C12-L80C16)
   <pre><code class="javascript">    },

       update(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C31-L83C35)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `UPDATE ${<strong>data</strong>.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C31-L83C45)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `UPDATE ${<strong>data.tableName</strong>} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C13-L83C18)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const <strong>query</strong> = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)
   <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(<strong>query</strong>);
         const result = statement.run(...pks);
         return result;
   </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.run(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L650C11-L650C24)
   <pre><code class="javascript">  const { name: tableName, pks } = req.params;
     const { fields } = req.body;
     const { <strong>_lookup_field</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L650C11-L650C24)
   <pre><code class="javascript">  const { name: tableName, pks } = req.params;
     const { fields } = req.body;
     const { <strong>_lookup_field</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L652C21-L652C34)
   <pre><code class="javascript">  const { _lookup_field } = req.query;

     let lookupField = <strong>_lookup_field</strong>;

     if (!_lookup_field) {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L652C7-L652C18)
   <pre><code class="javascript">  const { _lookup_field } = req.query;

     let <strong>lookupField</strong> = _lookup_field;

     if (!_lookup_field) {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L691C7-L691C18)
   <pre><code class="javascript">      tableName,
         fieldsString,
         <strong>lookupField</strong>,
         pks,
       });
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L688C36-L693C6)
   <pre><code class="javascript">
     try {
       const data = rowService.update(<strong>{</strong>
   <strong>      tableName,</strong>
   <strong>      fieldsString,</strong>
   <strong>      lookupField,</strong>
   <strong>      pks,</strong>
   <strong>    }</strong>);

       res.json({
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L80C12-L80C16)
   <pre><code class="javascript">    },

       update(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C80-L83C84)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${<strong>data</strong>.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C80-L83C96)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${<strong>data.lookupField</strong>} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L83C13-L83C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L84C36-L84C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `UPDATE ${data.tableName} SET ${data.fieldsString} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.run(...pks);
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L93C36-L93C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `DELETE FROM ${data.tableName} WHERE ${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.run(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 9 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L741C11-L741C26)
   <pre><code class="javascript">
     */
     const { <strong>name: tableName</strong>, pks } = req.params;
     const { _lookup_field } = req.query;

   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L741C17-L741C26)
   <pre><code class="javascript">
     */
     const { name: <strong>tableName</strong>, pks } = req.params;
     const { _lookup_field } = req.query;

   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L762C38-L762C47)
   <pre><code class="javascript">
     try {
       const data = rowService.delete({ <strong>tableName</strong>, lookupField, pks });

       if (data.changes === 0) {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L762C36-L762C67)
   <pre><code class="javascript">
     try {
       const data = rowService.delete(<strong>{ tableName, lookupField, pks }</strong>);

       if (data.changes === 0) {
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L89C12-L89C16)
   <pre><code class="javascript">    },

       delete(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L92C36-L92C40)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `DELETE FROM ${<strong>data</strong>.tableName} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L92C36-L92C50)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `DELETE FROM ${<strong>data.tableName</strong>} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L92C13-L92C18)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const <strong>query</strong> = `DELETE FROM ${data.tableName} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L93C36-L93C41)
   <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `DELETE FROM ${data.tableName} WHERE ${data.lookupField} in (${placeholders})`;
         const statement = db.prepare(<strong>query</strong>);
         const result = statement.run(...pks);
         return result;
   </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L93C36-L93C41)

<pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
      const query = `DELETE FROM ${data.tableName} WHERE ${data.lookupField} in (${placeholders})`;
      const statement = db.prepare(<strong>query</strong>);
      const result = statement.run(...pks);
      return result;
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L742C11-L742C24)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { <strong>_lookup_field</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L742C11-L742C24)
   <pre><code class="javascript">  */
     const { name: tableName, pks } = req.params;
     const { <strong>_lookup_field</strong> } = req.query;

     let lookupField = _lookup_field;
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L744C21-L744C34)
   <pre><code class="javascript">  const { _lookup_field } = req.query;

     let lookupField = <strong>_lookup_field</strong>;

     if (!_lookup_field) {
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L744C7-L744C18)
   <pre><code class="javascript">  const { _lookup_field } = req.query;

     let <strong>lookupField</strong> = _lookup_field;

     if (!_lookup_field) {
   </code></pre>

5. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L762C49-L762C60)
   <pre><code class="javascript">
     try {
       const data = rowService.delete({ tableName, <strong>lookupField</strong>, pks });

       if (data.changes === 0) {
   </code></pre>

6. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L762C36-L762C67)
   <pre><code class="javascript">
     try {
       const data = rowService.delete(<strong>{ tableName, lookupField, pks }</strong>);

       if (data.changes === 0) {
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L89C12-L89C16)
   <pre><code class="javascript">    },

       delete(<strong>data</strong>) {
         const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
   </code></pre>

8. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L92C60-L92C64)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `DELETE FROM ${data.tableName} WHERE ${<strong>data</strong>.lookupField} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

9. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L92C60-L92C76)
   <pre><code class="javascript">      const pks = data.pks.split(',');
         const placeholders = pks.map(() =&gt; '?').join(',');
         const query = `DELETE FROM ${data.tableName} WHERE ${<strong>data.lookupField</strong>} in (${placeholders})`;
         const statement = db.prepare(query);
         const result = statement.run(...pks);
   </code></pre>

10. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L92C13-L92C18)
    <pre><code class="javascript">      const pks = data.pks.split(',');
          const placeholders = pks.map(() =&gt; '?').join(',');
          const <strong>query</strong> = `DELETE FROM ${data.tableName} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(query);
          const result = statement.run(...pks);
    </code></pre>

11. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L93C36-L93C41)
    <pre><code class="javascript">      const placeholders = pks.map(() =&gt; '?').join(',');
          const query = `DELETE FROM ${data.tableName} WHERE ${data.lookupField} in (${placeholders})`;
          const statement = db.prepare(<strong>query</strong>);
          const result = statement.run(...pks);
          return result;
    </code></pre>

</details>

----------------------------------------

[src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C18-L100C57)

<pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
      const foreignKey = db
        .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
        .all()
        .find((fk) =&gt; fk.from === field);
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 6 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L180C38-L180C47)
   <pre><code class="javascript">
         const { foreignKey, joinedTableName, joinedTableFields } =
           rowService.getForeignKeyInfo(<strong>tableName</strong>, relation);

         extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${relation}`;
   </code></pre>

4. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L98C23-L98C32)
   <pre><code class="javascript">    },

       getForeignKeyInfo(<strong>tableName</strong>, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${tableName})`)
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C45-L100C54)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C18-L100C57)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

</details>

<details>
<summary>Path with 6 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L252C13-L252C22)
   <pre><code class="javascript">        } else {
             const foreignKeyInfo = rowService.getForeignKeyInfo(
               <strong>tableName</strong>,
               extendedField,
             );
   </code></pre>

4. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L98C23-L98C32)
   <pre><code class="javascript">    },

       getForeignKeyInfo(<strong>tableName</strong>, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${tableName})`)
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C45-L100C54)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C18-L100C57)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

</details>

<details>
<summary>Path with 7 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L148C54-L148C63)
   <pre><code class="javascript">    try {
         // get all fields of the table
         const fields = db.prepare(`PRAGMA table_info(${<strong>tableName</strong>})`).all();
         whereString += '(';
         whereString += fields
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L180C38-L180C47)
   <pre><code class="javascript">
         const { foreignKey, joinedTableName, joinedTableFields } =
           rowService.getForeignKeyInfo(<strong>tableName</strong>, relation);

         extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${tableName}.${relation}`;
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L98C23-L98C32)
   <pre><code class="javascript">    },

       getForeignKeyInfo(<strong>tableName</strong>, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${tableName})`)
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C45-L100C54)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C18-L100C57)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

</details>

<details>
<summary>Path with 7 steps</summary>

1. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C11-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { <strong>name: tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

2. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L55C17-L55C26)
   <pre><code class="javascript">  */
     let params = '';
     const { name: <strong>tableName</strong> } = req.params;
     const {
       _page = 1,
   </code></pre>

3. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L182C97-L182C106)
   <pre><code class="javascript">        rowService.getForeignKeyInfo(tableName, relation);

         extendString += ` LEFT JOIN ${joinedTableName} ON ${joinedTableName}.${foreignKey.to} = ${<strong>tableName</strong>}.${relation}`;
         joins[relation] = { foreignKey, joinedTableName, joinedTableFields };
         orderString += ` ORDER BY ${joinedTableName}.${field} ${
   </code></pre>

4. [src/controllers/rows.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/controllers/rows.js#L252C13-L252C22)
   <pre><code class="javascript">        } else {
             const foreignKeyInfo = rowService.getForeignKeyInfo(
               <strong>tableName</strong>,
               extendedField,
             );
   </code></pre>

5. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L98C23-L98C32)
   <pre><code class="javascript">    },

       getForeignKeyInfo(<strong>tableName</strong>, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${tableName})`)
   </code></pre>

6. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C45-L100C54)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(`PRAGMA foreign_key_list(${<strong>tableName</strong>})`)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

7. [src/services/rowService.js](https://github.com/thevahidal/soul/blob/371c69858b783099158fd58a236c2826385b0273/src/services/rowService.js#L100C18-L100C57)
   <pre><code class="javascript">    getForeignKeyInfo(tableName, field) {
         const foreignKey = db
           .prepare(<strong>`PRAGMA foreign_key_list(${tableName})`</strong>)
           .all()
           .find((fk) =&gt; fk.from === field);
   </code></pre>

</details>

----------------------------------------

|  | source | sink |  |
| --- | --- | --- | --- |
| `query` | `req.body` | `query` | `User-controlled data flows into raw SQL query.` |
| `indicesString` | `req.body` | `indicesString` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `req.body` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `name: tableName` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `name: tableName` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `name: tableName` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `name: tableName` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `name: tableName` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_search` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_ordering` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_schema` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_extend` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_filters = ''` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_lookup_field` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_schema` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_extend` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_search` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_filters = ''` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `req.body` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_lookup_field` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `name: tableName` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `_lookup_field` | `query` | `User-controlled data flows into raw SQL query.` |
| ``PRAGMA ... Name})`` | `name: tableName` | ``PRAGMA ... Name})`` | `User-controlled data flows into raw SQL query.` |