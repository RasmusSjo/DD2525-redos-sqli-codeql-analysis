### nalgeon/sqlime

[js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L148C41-L148C44)

<pre><code class="javascript">        ui.status.info(MESSAGES.executing);
        timeit.start();
        const result = database.execute(<strong>sql</strong>);
        const elapsed = timeit.finish();
        showResult(result, elapsed);
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 37 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

32. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

33. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L136C18-L136C21)
    <pre><code class="javascript">// execute runs SQL query on the database
    // and shows results
    function execute(<strong>sql</strong>) {
        sql = sql.trim();
        storage.set(database.name, sql);
    </code></pre>

34. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C14)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql</strong>.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C21)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql.trim()</strong>;
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C5-L137C8)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        <strong>sql</strong> = sql.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L148C41-L148C44)
    <pre><code class="javascript">        ui.status.info(MESSAGES.executing);
            timeit.start();
            const result = database.execute(<strong>sql</strong>);
            const elapsed = timeit.finish();
            showResult(result, elapsed);
    </code></pre>

</details>

<details>
<summary>Path with 46 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C58-L206C66)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await manager.save(gister, <strong>database</strong>, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

32. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L151C29-L151C37)
    <pre><code class="javascript">
    // save saves the database to the cloud.
    async function save(gister, <strong>database</strong>, query) {
        if (!gister) {
            return Promise.reject("Saving to the cloud is not supported");
    </code></pre>

33. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L174C36-L174C44)
    <pre><code class="javascript">        // do not update gist if nothing has changed
            if (database.hashcode == oldHashcode) {
                return Promise.resolve(<strong>database</strong>);
            }
            promise = gister.update(database.id, database.name, schema, database.query);
    </code></pre>

34. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L174C20-L174C45)
    <pre><code class="javascript">        // do not update gist if nothing has changed
            if (database.hashcode == oldHashcode) {
                return <strong>Promise.resolve(database)</strong>;
            }
            promise = gister.update(database.id, database.name, schema, database.query);
    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C37-L206C74)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await <strong>manager.save(gister, database, query)</strong>;
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C31-L206C74)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = <strong>await manager.save(gister, database, query)</strong>;
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C15-L206C28)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const <strong>savedDatabase</strong> = await manager.save(gister, database, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

38. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C20-L211C33)
    <pre><code class="javascript">            return Promise.reject();
            }
            database = <strong>savedDatabase</strong>;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

39. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C9-L211C17)
    <pre><code class="javascript">            return Promise.reject();
            }
            <strong>database</strong> = savedDatabase;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

40. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

41. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

42. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L136C18-L136C21)
    <pre><code class="javascript">// execute runs SQL query on the database
    // and shows results
    function execute(<strong>sql</strong>) {
        sql = sql.trim();
        storage.set(database.name, sql);
    </code></pre>

43. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C14)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql</strong>.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

44. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C21)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql.trim()</strong>;
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

45. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C5-L137C8)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        <strong>sql</strong> = sql.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

46. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L148C41-L148C44)
    <pre><code class="javascript">        ui.status.info(MESSAGES.executing);
            timeit.start();
            const result = database.execute(<strong>sql</strong>);
            const elapsed = timeit.finish();
            showResult(result, elapsed);
    </code></pre>

</details>

<details>
<summary>Path with 50 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L228C23-L228C31)
    <pre><code class="javascript">    storage.remove(database.name);
        database.name = name;
        storage.set(name, <strong>database</strong>.query);
        ui.name.value = name;
        document.title = name;
    </code></pre>

32. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L228C23-L228C37)
    <pre><code class="javascript">    storage.remove(database.name);
        database.name = name;
        storage.set(name, <strong>database.query</strong>);
        ui.name.value = name;
        document.title = name;
    </code></pre>

33. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L228C5-L228C12)
    <pre><code class="javascript">    storage.remove(database.name);
        database.name = name;
        <strong>storage</strong>.set(name, database.query);
        ui.name.value = name;
        document.title = name;
    </code></pre>

34. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L6C8-L6C15)
    <pre><code class="javascript">import locator from "./locator.js";
    import manager from "./sqlite/manager.js";
    import <strong>storage</strong> from "./storage.js";
    import timeit from "./timeit.js";

    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L6C8-L6C15)
    <pre><code class="javascript">import locator from "./locator.js";
    import manager from "./sqlite/manager.js";
    import <strong>storage</strong> from "./storage.js";
    import timeit from "./timeit.js";

    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C40-L118C47)
    <pre><code class="javascript">    }

        database.query = database.query || <strong>storage</strong>.get(database.name);

        document.title = database.meaningfulName || document.title;
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C40-L118C66)
    <pre><code class="javascript">    }

        database.query = database.query || <strong>storage.get(database.name)</strong>;

        document.title = database.meaningfulName || document.title;
    </code></pre>

38. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C22-L118C66)
    <pre><code class="javascript">    }

        database.query = <strong>database.query || storage.get(database.name)</strong>;

        document.title = database.meaningfulName || document.title;
    </code></pre>

39. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C5-L118C13)
    <pre><code class="javascript">    }

        <strong>database</strong>.query = database.query || storage.get(database.name);

        document.title = database.meaningfulName || document.title;
    </code></pre>

40. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

41. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

42. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

43. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

44. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

45. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

46. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L136C18-L136C21)
    <pre><code class="javascript">// execute runs SQL query on the database
    // and shows results
    function execute(<strong>sql</strong>) {
        sql = sql.trim();
        storage.set(database.name, sql);
    </code></pre>

47. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C14)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql</strong>.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

48. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C21)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql.trim()</strong>;
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

49. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C5-L137C8)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        <strong>sql</strong> = sql.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

50. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L148C41-L148C44)
    <pre><code class="javascript">        ui.status.info(MESSAGES.executing);
            timeit.start();
            const result = database.execute(<strong>sql</strong>);
            const elapsed = timeit.finish();
            showResult(result, elapsed);
    </code></pre>

</details>

<details>
<summary>Path with 58 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C23-L123C31)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        ui.editor.value = <strong>database</strong>.query;
        ui.editor.focus();

    </code></pre>

32. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C23-L123C37)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        ui.editor.value = <strong>database.query</strong>;
        ui.editor.focus();

    </code></pre>

33. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C5-L123C14)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        <strong>ui.editor</strong>.value = database.query;
        ui.editor.focus();

    </code></pre>

34. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C5-L123C7)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        <strong>ui</strong>.editor.value = database.query;
        ui.editor.focus();

    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L16C12-L29C2)
    <pre><code class="javascript">import { OpenAI } from "./cloud/openai.js";

    const ui = <strong>{</strong>
    <strong>    buttons: {</strong>
    <strong>        reset: document.querySelector("#reset"),</strong>
    <strong>        execute: document.querySelector("#execute"),</strong>
    <strong>        save: document.querySelector("#save"),</strong>
    <strong>        showTables: document.querySelector("#show-tables"),</strong>
    <strong>    },</strong>
    <strong>    name: document.querySelector("#db-name"),</strong>
    <strong>    toolbar: document.querySelector("#toolbar"),</strong>
    <strong>    commandbar: document.querySelector("#commandbar"),</strong>
    <strong>    editor: document.querySelector("#editor"),</strong>
    <strong>    status: document.querySelector("#status"),</strong>
    <strong>    result: document.querySelector("#result"),</strong>
    <strong>}</strong>;

    const actions = {
    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L16C7-L16C9)
    <pre><code class="javascript">import { OpenAI } from "./cloud/openai.js";

    const <strong>ui</strong> = {
        buttons: {
            reset: document.querySelector("#reset"),
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C21)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui</strong>.editor.value.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

38. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C28)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui.editor</strong>.value.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

39. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C34)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui.editor.value</strong>.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

40. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C41)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui.editor.value.trim()</strong>;
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

41. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C11-L197C16)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const <strong>query</strong> = ui.editor.value.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

42. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C68-L206C73)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await manager.save(gister, database, <strong>query</strong>);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

43. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L151C39-L151C44)
    <pre><code class="javascript">
    // save saves the database to the cloud.
    async function save(gister, database, <strong>query</strong>) {
        if (!gister) {
            return Promise.reject("Saving to the cloud is not supported");
    </code></pre>

44. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L157C22-L157C27)
    <pre><code class="javascript">    console.debug(`Saving database to gist...`);
        const schema = dumper.toSql(database, query);
        database.query = <strong>query</strong>;
        if (!schema &amp;&amp; !query) {
            return Promise.resolve(null);
    </code></pre>

45. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L157C5-L157C13)
    <pre><code class="javascript">    console.debug(`Saving database to gist...`);
        const schema = dumper.toSql(database, query);
        <strong>database</strong>.query = query;
        if (!schema &amp;&amp; !query) {
            return Promise.resolve(null);
    </code></pre>

46. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L151C29-L151C37)
    <pre><code class="javascript">
    // save saves the database to the cloud.
    async function save(gister, <strong>database</strong>, query) {
        if (!gister) {
            return Promise.reject("Saving to the cloud is not supported");
    </code></pre>

47. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C58-L206C66)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await manager.save(gister, <strong>database</strong>, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

48. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C31-L206C74)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = <strong>await manager.save(gister, database, query)</strong>;
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

49. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C15-L206C28)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const <strong>savedDatabase</strong> = await manager.save(gister, database, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

50. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C20-L211C33)
    <pre><code class="javascript">            return Promise.reject();
            }
            database = <strong>savedDatabase</strong>;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

51. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C9-L211C17)
    <pre><code class="javascript">            return Promise.reject();
            }
            <strong>database</strong> = savedDatabase;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

52. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

53. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

54. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L136C18-L136C21)
    <pre><code class="javascript">// execute runs SQL query on the database
    // and shows results
    function execute(<strong>sql</strong>) {
        sql = sql.trim();
        storage.set(database.name, sql);
    </code></pre>

55. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C14)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql</strong>.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

56. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C11-L137C21)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        sql = <strong>sql.trim()</strong>;
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

57. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L137C5-L137C8)
    <pre><code class="javascript">// and shows results
    function execute(sql) {
        <strong>sql</strong> = sql.trim();
        storage.set(database.name, sql);
        if (!sql) {
    </code></pre>

58. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L148C41-L148C44)
    <pre><code class="javascript">        ui.status.info(MESSAGES.executing);
            timeit.start();
            const result = database.execute(<strong>sql</strong>);
            const elapsed = timeit.finish();
            showResult(result, elapsed);
    </code></pre>

</details>

----------------------------------------

[js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)

<pre><code class="javascript">function showStarted() {
    if (database.query) {
        execute(<strong>database.query</strong>);
        enableCommandBar();
    } else if (database.tables.length) {
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 32 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

32. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

</details>

<details>
<summary>Path with 41 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C58-L206C66)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await manager.save(gister, <strong>database</strong>, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

32. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L151C29-L151C37)
    <pre><code class="javascript">
    // save saves the database to the cloud.
    async function save(gister, <strong>database</strong>, query) {
        if (!gister) {
            return Promise.reject("Saving to the cloud is not supported");
    </code></pre>

33. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L174C36-L174C44)
    <pre><code class="javascript">        // do not update gist if nothing has changed
            if (database.hashcode == oldHashcode) {
                return Promise.resolve(<strong>database</strong>);
            }
            promise = gister.update(database.id, database.name, schema, database.query);
    </code></pre>

34. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L174C20-L174C45)
    <pre><code class="javascript">        // do not update gist if nothing has changed
            if (database.hashcode == oldHashcode) {
                return <strong>Promise.resolve(database)</strong>;
            }
            promise = gister.update(database.id, database.name, schema, database.query);
    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C37-L206C74)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await <strong>manager.save(gister, database, query)</strong>;
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C31-L206C74)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = <strong>await manager.save(gister, database, query)</strong>;
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C15-L206C28)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const <strong>savedDatabase</strong> = await manager.save(gister, database, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

38. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C20-L211C33)
    <pre><code class="javascript">            return Promise.reject();
            }
            database = <strong>savedDatabase</strong>;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

39. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C9-L211C17)
    <pre><code class="javascript">            return Promise.reject();
            }
            <strong>database</strong> = savedDatabase;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

40. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

41. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

</details>

<details>
<summary>Path with 45 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L228C23-L228C31)
    <pre><code class="javascript">    storage.remove(database.name);
        database.name = name;
        storage.set(name, <strong>database</strong>.query);
        ui.name.value = name;
        document.title = name;
    </code></pre>

32. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L228C23-L228C37)
    <pre><code class="javascript">    storage.remove(database.name);
        database.name = name;
        storage.set(name, <strong>database.query</strong>);
        ui.name.value = name;
        document.title = name;
    </code></pre>

33. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L228C5-L228C12)
    <pre><code class="javascript">    storage.remove(database.name);
        database.name = name;
        <strong>storage</strong>.set(name, database.query);
        ui.name.value = name;
        document.title = name;
    </code></pre>

34. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L6C8-L6C15)
    <pre><code class="javascript">import locator from "./locator.js";
    import manager from "./sqlite/manager.js";
    import <strong>storage</strong> from "./storage.js";
    import timeit from "./timeit.js";

    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L6C8-L6C15)
    <pre><code class="javascript">import locator from "./locator.js";
    import manager from "./sqlite/manager.js";
    import <strong>storage</strong> from "./storage.js";
    import timeit from "./timeit.js";

    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C40-L118C47)
    <pre><code class="javascript">    }

        database.query = database.query || <strong>storage</strong>.get(database.name);

        document.title = database.meaningfulName || document.title;
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C40-L118C66)
    <pre><code class="javascript">    }

        database.query = database.query || <strong>storage.get(database.name)</strong>;

        document.title = database.meaningfulName || document.title;
    </code></pre>

38. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C22-L118C66)
    <pre><code class="javascript">    }

        database.query = <strong>database.query || storage.get(database.name)</strong>;

        document.title = database.meaningfulName || document.title;
    </code></pre>

39. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L118C5-L118C13)
    <pre><code class="javascript">    }

        <strong>database</strong>.query = database.query || storage.get(database.name);

        document.title = database.meaningfulName || document.title;
    </code></pre>

40. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

41. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

42. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

43. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

44. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

45. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

</details>

<details>
<summary>Path with 53 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

19. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L51C13-L51C16)
    <pre><code class="javascript">    // execute runs one ore more sql queries
        // and returns the last result.
        execute(<strong>sql</strong>) {
            if (!sql) {
                // sqlite api fails when trying to execute an empty query
    </code></pre>

20. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C22-L56C25)
    <pre><code class="javascript">            return null;
            }
            this.query = <strong>sql</strong>;
            let rows = [];
            this.db.exec({
    </code></pre>

21. [js/sqlite/db.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/db.js#L56C9-L56C13)
    <pre><code class="javascript">            return null;
            }
            <strong>this</strong>.query = sql;
            let rows = [];
            this.db.exec({
    </code></pre>

22. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C5-L73C13)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        <strong>database</strong>.execute(sql);
        database.gatherTables();
        database.query = "";
    </code></pre>

23. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L76C12-L76C20)
    <pre><code class="javascript">    database.gatherTables();
        database.query = "";
        return <strong>database</strong>;
    }

    </code></pre>

24. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C22-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await <strong>loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

25. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C16-L37C47)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return <strong>await loadSqlScript(name, path)</strong>;
        }
        if (path.type == "id") {
    </code></pre>

26. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C38-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await <strong>manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

27. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C32-L106C70)
    <pre><code class="javascript">
        try {
            const loadedDatabase = <strong>await manager.init(gister, name, path)</strong>;
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

28. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C15-L106C29)
    <pre><code class="javascript">
        try {
            const <strong>loadedDatabase</strong> = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

29. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C20-L108C34)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            database = <strong>loadedDatabase</strong>;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

30. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L108C9-L108C17)
    <pre><code class="javascript">        const loadedDatabase = await manager.init(gister, name, path);
            console.debug(loadedDatabase);
            <strong>database</strong> = loadedDatabase;
            if (!loadedDatabase) {
                ui.status.error(`Failed to load database from ${path}`);
    </code></pre>

31. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C23-L123C31)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        ui.editor.value = <strong>database</strong>.query;
        ui.editor.focus();

    </code></pre>

32. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C23-L123C37)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        ui.editor.value = <strong>database.query</strong>;
        ui.editor.focus();

    </code></pre>

33. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C5-L123C14)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        <strong>ui.editor</strong>.value = database.query;
        ui.editor.focus();

    </code></pre>

34. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L123C5-L123C7)
    <pre><code class="javascript">    ui.name.ready(database.name);
        ui.status.info(MESSAGES.invite);
        <strong>ui</strong>.editor.value = database.query;
        ui.editor.focus();

    </code></pre>

35. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L16C12-L29C2)
    <pre><code class="javascript">import { OpenAI } from "./cloud/openai.js";

    const ui = <strong>{</strong>
    <strong>    buttons: {</strong>
    <strong>        reset: document.querySelector("#reset"),</strong>
    <strong>        execute: document.querySelector("#execute"),</strong>
    <strong>        save: document.querySelector("#save"),</strong>
    <strong>        showTables: document.querySelector("#show-tables"),</strong>
    <strong>    },</strong>
    <strong>    name: document.querySelector("#db-name"),</strong>
    <strong>    toolbar: document.querySelector("#toolbar"),</strong>
    <strong>    commandbar: document.querySelector("#commandbar"),</strong>
    <strong>    editor: document.querySelector("#editor"),</strong>
    <strong>    status: document.querySelector("#status"),</strong>
    <strong>    result: document.querySelector("#result"),</strong>
    <strong>}</strong>;

    const actions = {
    </code></pre>

36. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L16C7-L16C9)
    <pre><code class="javascript">import { OpenAI } from "./cloud/openai.js";

    const <strong>ui</strong> = {
        buttons: {
            reset: document.querySelector("#reset"),
    </code></pre>

37. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C21)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui</strong>.editor.value.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

38. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C28)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui.editor</strong>.value.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

39. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C34)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui.editor.value</strong>.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

40. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C19-L197C41)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const query = <strong>ui.editor.value.trim()</strong>;
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

41. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L197C11-L197C16)
    <pre><code class="javascript">// to remote storage
    async function save() {
        const <strong>query</strong> = ui.editor.value.trim();
        storage.set(database.name, query);
        gister.reload();
    </code></pre>

42. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C68-L206C73)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await manager.save(gister, database, <strong>query</strong>);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

43. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L151C39-L151C44)
    <pre><code class="javascript">
    // save saves the database to the cloud.
    async function save(gister, database, <strong>query</strong>) {
        if (!gister) {
            return Promise.reject("Saving to the cloud is not supported");
    </code></pre>

44. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L157C22-L157C27)
    <pre><code class="javascript">    console.debug(`Saving database to gist...`);
        const schema = dumper.toSql(database, query);
        database.query = <strong>query</strong>;
        if (!schema &amp;&amp; !query) {
            return Promise.resolve(null);
    </code></pre>

45. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L157C5-L157C13)
    <pre><code class="javascript">    console.debug(`Saving database to gist...`);
        const schema = dumper.toSql(database, query);
        <strong>database</strong>.query = query;
        if (!schema &amp;&amp; !query) {
            return Promise.resolve(null);
    </code></pre>

46. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L151C29-L151C37)
    <pre><code class="javascript">
    // save saves the database to the cloud.
    async function save(gister, <strong>database</strong>, query) {
        if (!gister) {
            return Promise.reject("Saving to the cloud is not supported");
    </code></pre>

47. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C58-L206C66)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = await manager.save(gister, <strong>database</strong>, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

48. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C31-L206C74)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const savedDatabase = <strong>await manager.save(gister, database, query)</strong>;
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

49. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L206C15-L206C28)
    <pre><code class="javascript">    ui.result.clear();
        try {
            const <strong>savedDatabase</strong> = await manager.save(gister, database, query);
            if (!savedDatabase) {
                ui.status.error(`Failed to save database to ${gister.name}`);
    </code></pre>

50. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C20-L211C33)
    <pre><code class="javascript">            return Promise.reject();
            }
            database = <strong>savedDatabase</strong>;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

51. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L211C9-L211C17)
    <pre><code class="javascript">            return Promise.reject();
            }
            <strong>database</strong> = savedDatabase;
        } catch (exc) {
            showError(`Failed to save database to ${gister.name}: ${exc}`);
    </code></pre>

52. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C25)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database</strong>.query);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

53. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L236C17-L236C31)
    <pre><code class="javascript">function showStarted() {
        if (database.query) {
            execute(<strong>database.query</strong>);
            enableCommandBar();
        } else if (database.tables.length) {
    </code></pre>

</details>

----------------------------------------

[js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)

<pre><code class="javascript">    const db = new sqlite3.oo1.DB();
    const database = new SQLite(name, path, sqlite3.capi, db);
    database.execute(<strong>sql</strong>);
    database.gatherTables();
    database.query = "";
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 18 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

</details>

<details>
<summary>Path with 18 steps</summary>

1. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C49)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash</strong>.slice(1));
   }

   </code></pre>

2. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C29-L7C58)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return new DatabasePath(<strong>window.location.hash.slice(1)</strong>);
   }

   </code></pre>

3. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L12C17-L12C22)
   <pre><code class="javascript">
   class DatabasePath {
       constructor(<strong>value</strong>, type = null) {
           this.value = value;
           this.type = type || this.inferType(value);
   </code></pre>

4. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C22-L13C27)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           this.value = <strong>value</strong>;
           this.type = type || this.inferType(value);
       }
   </code></pre>

5. [js/db-path.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/db-path.js#L13C9-L13C13)
   <pre><code class="javascript">class DatabasePath {
       constructor(value, type = null) {
           <strong>this</strong>.value = value;
           this.type = type || this.inferType(value);
       }
   </code></pre>

6. [js/locator.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/locator.js#L7C12-L7C59)
   <pre><code class="javascript">// path creates a database path from the window location.
   function path() {
       return <strong>new DatabasePath(window.location.hash.slice(1))</strong>;
   }

   </code></pre>

7. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C18-L64C32)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const path = <strong>locator.path()</strong>;
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

8. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L64C11-L64C15)
   <pre><code class="javascript">// using current window location as database path
   async function startFromCurrentUrl() {
       const <strong>path</strong> = locator.path();
       const name = path.extractName();
       const success = await start(name, path);
   </code></pre>

9. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L66C39-L66C43)
   <pre><code class="javascript">    const path = locator.path();
       const name = path.extractName();
       const success = await start(name, <strong>path</strong>);
       if (!success) {
           return;
   </code></pre>

10. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L101C28-L101C32)
    <pre><code class="javascript">// start loads existing database or creates a new one
    // using specified database path
    async function start(name, <strong>path</strong>) {
        ui.result.clear();
        ui.status.info(MESSAGES.loading);
    </code></pre>

11. [js/index.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/index.js#L106C65-L106C69)
    <pre><code class="javascript">
        try {
            const loadedDatabase = await manager.init(gister, name, <strong>path</strong>);
            console.debug(loadedDatabase);
            database = loadedDatabase;
    </code></pre>

12. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L17C35-L17C39)
    <pre><code class="javascript">// init loads a database from the specified path
    // using the SQLite WASM API.
    async function init(gister, name, <strong>path</strong>) {
        if (sqlite3 === "loading") {
            return Promise.reject(Error("loading"));
    </code></pre>

13. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L37C42-L37C46)
    <pre><code class="javascript">    }
        if (path.type == "sql") {
            return await loadSqlScript(name, <strong>path</strong>);
        }
        if (path.type == "id") {
    </code></pre>

14. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L64C36-L64C40)
    <pre><code class="javascript">
    // loadSqlScript loads a database from a plain text SQL script.
    async function loadSqlScript(name, <strong>path</strong>) {
        console.debug(`Loading SQL from script...`);
        const sql = path.value;
    </code></pre>

15. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C21)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path</strong>.value;
        if (!sql) {
            return null;
    </code></pre>

16. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C17-L66C27)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const sql = <strong>path.value</strong>;
        if (!sql) {
            return null;
    </code></pre>

17. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L66C11-L66C14)
    <pre><code class="javascript">async function loadSqlScript(name, path) {
        console.debug(`Loading SQL from script...`);
        const <strong>sql</strong> = path.value;
        if (!sql) {
            return null;
    </code></pre>

18. [js/sqlite/manager.js](https://github.com/nalgeon/sqlime/blob/7c06bfbb403f549b2fbae112177aaf20785459f6/js/sqlite/manager.js#L73C22-L73C25)
    <pre><code class="javascript">    const db = new sqlite3.oo1.DB();
        const database = new SQLite(name, path, sqlite3.capi, db);
        database.execute(<strong>sql</strong>);
        database.gatherTables();
        database.query = "";
    </code></pre>

</details>

----------------------------------------

|  | source | sink |  |
| --- | --- | --- | --- |
| `sql` | `window.location.hash` | `sql` | `User-controlled data flows into raw SQL query.` |
| `database.query` | `window.location.hash` | `database.query` | `User-controlled data flows into raw SQL query.` |
| `sql` | `window.location.hash` | `sql` | `User-controlled data flows into raw SQL query.` |