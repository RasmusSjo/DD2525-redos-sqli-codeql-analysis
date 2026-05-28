### yzua/sqlite-online

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L175C36-L175C41)

<pre><code class="javascript">
    if (params.length &gt; 0) {
      const stmt = this.db.prepare(<strong>query</strong>);
      stmt.bind(params);
      stmt.step();
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 21 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L111C67-L111C74)
   <pre><code class="javascript">      case "refresh":
         case "getTableData": {
           const { currentTable, limit, offset, filters, sorters } = <strong>payload</strong>;

           const [results, maxSize] = instance.getTableData(
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L111C15-L111C64)
   <pre><code class="javascript">      case "refresh":
         case "getTableData": {
           const <strong>{ currentTable, limit, offset, filters, sorters }</strong> = payload;

           const [results, maxSize] = instance.getTableData(
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L111C17-L111C29)
   <pre><code class="javascript">      case "refresh":
         case "getTableData": {
           const { <strong>currentTable</strong>, limit, offset, filters, sorters } = payload;

           const [results, maxSize] = instance.getTableData(
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L114C11-L114C23)
   <pre><code class="javascript">
           const [results, maxSize] = instance.getTableData(
             <strong>currentTable</strong>,
             limit,
             offset,
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L191C5-L191C10)
   <pre><code class="javascript">  // Applies filters and sorters to the data
     public getTableData(
       <strong>table</strong>: string,
       limit: number,
       offset: number,
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L250C44-L250C49)
    <pre><code class="javascript">    if (results.length === 0) return [[], 0] as const;

        const maxSize = this.getMaxSizeOfTable(<strong>table</strong>, filters);
        const result = [results, maxSize] as const;

    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L168C29-L168C38)
    <pre><code class="javascript">  // Get the max size of the requested table
      // Used for pagination
      private getMaxSizeOfTable(<strong>tableName</strong>: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = sanitizeColumnName(tableName);
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C48-L170C57)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = sanitizeColumnName(<strong>tableName</strong>);

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C29-L170C58)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = <strong>sanitizeColumnName(tableName)</strong>;

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C11-L170C26)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const <strong>quotedTableName</strong> = sanitizeColumnName(tableName);

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L172C43-L172C58)
    <pre><code class="javascript">    const quotedTableName = sanitizeColumnName(tableName);

        const query = `SELECT COUNT(*) FROM ${<strong>quotedTableName</strong>} ${clause}`;

        if (params.length &gt; 0) {
    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L172C11-L172C16)
    <pre><code class="javascript">    const quotedTableName = sanitizeColumnName(tableName);

        const <strong>query</strong> = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;

        if (params.length &gt; 0) {
    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L175C36-L175C41)
    <pre><code class="javascript">
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          stmt.step();
    </code></pre>

</details>

<details>
<summary>Path with 21 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L134C13-L134C20)
   <pre><code class="javascript">        try {
             const { query, currentTable, limit, offset, filters, sorters } =
               <strong>payload</strong>;

             const [results, doTablesChanged] = instance.exec(query);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L133C17-L133C73)
   <pre><code class="javascript">      case "exec": {
           try {
             const <strong>{ query, currentTable, limit, offset, filters, sorters }</strong> =
               payload;

   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L133C26-L133C38)
   <pre><code class="javascript">      case "exec": {
           try {
             const { query, <strong>currentTable</strong>, limit, offset, filters, sorters } =
               payload;

   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L161C15-L161C27)
   <pre><code class="javascript">            // If not, return the table data (Insert, Update, Delete, ...)
               const [tableResults, maxSize] = instance.getTableData(
                 <strong>currentTable</strong>,
                 limit,
                 offset,
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L191C5-L191C10)
   <pre><code class="javascript">  // Applies filters and sorters to the data
     public getTableData(
       <strong>table</strong>: string,
       limit: number,
       offset: number,
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L250C44-L250C49)
    <pre><code class="javascript">    if (results.length === 0) return [[], 0] as const;

        const maxSize = this.getMaxSizeOfTable(<strong>table</strong>, filters);
        const result = [results, maxSize] as const;

    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L168C29-L168C38)
    <pre><code class="javascript">  // Get the max size of the requested table
      // Used for pagination
      private getMaxSizeOfTable(<strong>tableName</strong>: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = sanitizeColumnName(tableName);
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C48-L170C57)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = sanitizeColumnName(<strong>tableName</strong>);

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C29-L170C58)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = <strong>sanitizeColumnName(tableName)</strong>;

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C11-L170C26)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const <strong>quotedTableName</strong> = sanitizeColumnName(tableName);

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L172C43-L172C58)
    <pre><code class="javascript">    const quotedTableName = sanitizeColumnName(tableName);

        const query = `SELECT COUNT(*) FROM ${<strong>quotedTableName</strong>} ${clause}`;

        if (params.length &gt; 0) {
    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L172C11-L172C16)
    <pre><code class="javascript">    const quotedTableName = sanitizeColumnName(tableName);

        const <strong>query</strong> = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;

        if (params.length &gt; 0) {
    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L175C36-L175C41)
    <pre><code class="javascript">
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          stmt.step();
    </code></pre>

</details>

<details>
<summary>Path with 21 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L188C13-L188C20)
   <pre><code class="javascript">        try {
             const { queries, currentTable, limit, offset, filters, sorters } =
               <strong>payload</strong>;

             let hasTablesChanged = false;
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L187C17-L187C75)
   <pre><code class="javascript">      case "execBatch": {
           try {
             const <strong>{ queries, currentTable, limit, offset, filters, sorters }</strong> =
               payload;

   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L187C28-L187C40)
   <pre><code class="javascript">      case "execBatch": {
           try {
             const { queries, <strong>currentTable</strong>, limit, offset, filters, sorters } =
               payload;

   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L230C15-L230C27)
   <pre><code class="javascript">            // If not, return the table data
               const [tableResults, maxSize] = instance.getTableData(
                 <strong>currentTable</strong>,
                 limit,
                 offset,
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L191C5-L191C10)
   <pre><code class="javascript">  // Applies filters and sorters to the data
     public getTableData(
       <strong>table</strong>: string,
       limit: number,
       offset: number,
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L250C44-L250C49)
    <pre><code class="javascript">    if (results.length === 0) return [[], 0] as const;

        const maxSize = this.getMaxSizeOfTable(<strong>table</strong>, filters);
        const result = [results, maxSize] as const;

    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L168C29-L168C38)
    <pre><code class="javascript">  // Get the max size of the requested table
      // Used for pagination
      private getMaxSizeOfTable(<strong>tableName</strong>: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = sanitizeColumnName(tableName);
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C48-L170C57)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = sanitizeColumnName(<strong>tableName</strong>);

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C29-L170C58)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const quotedTableName = <strong>sanitizeColumnName(tableName)</strong>;

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L170C11-L170C26)
    <pre><code class="javascript">  private getMaxSizeOfTable(tableName: string, filters?: Filters) {
        const { clause, params } = buildWhereClause(filters);
        const <strong>quotedTableName</strong> = sanitizeColumnName(tableName);

        const query = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L172C43-L172C58)
    <pre><code class="javascript">    const quotedTableName = sanitizeColumnName(tableName);

        const query = `SELECT COUNT(*) FROM ${<strong>quotedTableName</strong>} ${clause}`;

        if (params.length &gt; 0) {
    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L172C11-L172C16)
    <pre><code class="javascript">    const quotedTableName = sanitizeColumnName(tableName);

        const <strong>query</strong> = `SELECT COUNT(*) FROM ${quotedTableName} ${clause}`;

        if (params.length &gt; 0) {
    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L175C36-L175C41)
    <pre><code class="javascript">
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          stmt.step();
    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L235C36-L235C41)

<pre><code class="javascript">    let results;
    if (params.length &gt; 0) {
      const stmt = this.db.prepare(<strong>query</strong>);
      stmt.bind(params);
      const values: SqlValue[][] = [];
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 19 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L111C67-L111C74)
   <pre><code class="javascript">      case "refresh":
         case "getTableData": {
           const { currentTable, limit, offset, filters, sorters } = <strong>payload</strong>;

           const [results, maxSize] = instance.getTableData(
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L111C15-L111C64)
   <pre><code class="javascript">      case "refresh":
         case "getTableData": {
           const <strong>{ currentTable, limit, offset, filters, sorters }</strong> = payload;

           const [results, maxSize] = instance.getTableData(
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L111C17-L111C29)
   <pre><code class="javascript">      case "refresh":
         case "getTableData": {
           const { <strong>currentTable</strong>, limit, offset, filters, sorters } = payload;

           const [results, maxSize] = instance.getTableData(
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L114C11-L114C23)
   <pre><code class="javascript">
           const [results, maxSize] = instance.getTableData(
             <strong>currentTable</strong>,
             limit,
             offset,
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L191C5-L191C10)
   <pre><code class="javascript">  // Applies filters and sorters to the data
     public getTableData(
       <strong>table</strong>: string,
       limit: number,
       offset: number,
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C44-L218C49)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const quotedTable = sanitizeColumnName(<strong>table</strong>);
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C25-L218C50)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const quotedTable = <strong>sanitizeColumnName(table)</strong>;
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C11-L218C22)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const <strong>quotedTable</strong> = sanitizeColumnName(table);
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L227C37-L227C48)
    <pre><code class="javascript">
        const query = `
          SELECT ${selectClause} FROM ${<strong>quotedTable</strong>}
          ${whereClause}
          ${orderByClause}
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L226C11-L226C16)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        const <strong>query</strong> = `
          SELECT ${selectClause} FROM ${quotedTable}
          ${whereClause}
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L235C36-L235C41)
    <pre><code class="javascript">    let results;
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          const values: SqlValue[][] = [];
    </code></pre>

</details>

<details>
<summary>Path with 19 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L134C13-L134C20)
   <pre><code class="javascript">        try {
             const { query, currentTable, limit, offset, filters, sorters } =
               <strong>payload</strong>;

             const [results, doTablesChanged] = instance.exec(query);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L133C17-L133C73)
   <pre><code class="javascript">      case "exec": {
           try {
             const <strong>{ query, currentTable, limit, offset, filters, sorters }</strong> =
               payload;

   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L133C26-L133C38)
   <pre><code class="javascript">      case "exec": {
           try {
             const { query, <strong>currentTable</strong>, limit, offset, filters, sorters } =
               payload;

   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L161C15-L161C27)
   <pre><code class="javascript">            // If not, return the table data (Insert, Update, Delete, ...)
               const [tableResults, maxSize] = instance.getTableData(
                 <strong>currentTable</strong>,
                 limit,
                 offset,
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L191C5-L191C10)
   <pre><code class="javascript">  // Applies filters and sorters to the data
     public getTableData(
       <strong>table</strong>: string,
       limit: number,
       offset: number,
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C44-L218C49)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const quotedTable = sanitizeColumnName(<strong>table</strong>);
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C25-L218C50)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const quotedTable = <strong>sanitizeColumnName(table)</strong>;
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C11-L218C22)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const <strong>quotedTable</strong> = sanitizeColumnName(table);
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L227C37-L227C48)
    <pre><code class="javascript">
        const query = `
          SELECT ${selectClause} FROM ${<strong>quotedTable</strong>}
          ${whereClause}
          ${orderByClause}
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L226C11-L226C16)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        const <strong>query</strong> = `
          SELECT ${selectClause} FROM ${quotedTable}
          ${whereClause}
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L235C36-L235C41)
    <pre><code class="javascript">    let results;
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          const values: SqlValue[][] = [];
    </code></pre>

</details>

<details>
<summary>Path with 19 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L188C13-L188C20)
   <pre><code class="javascript">        try {
             const { queries, currentTable, limit, offset, filters, sorters } =
               <strong>payload</strong>;

             let hasTablesChanged = false;
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L187C17-L187C75)
   <pre><code class="javascript">      case "execBatch": {
           try {
             const <strong>{ queries, currentTable, limit, offset, filters, sorters }</strong> =
               payload;

   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L187C28-L187C40)
   <pre><code class="javascript">      case "execBatch": {
           try {
             const { queries, <strong>currentTable</strong>, limit, offset, filters, sorters } =
               payload;

   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L230C15-L230C27)
   <pre><code class="javascript">            // If not, return the table data
               const [tableResults, maxSize] = instance.getTableData(
                 <strong>currentTable</strong>,
                 limit,
                 offset,
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L191C5-L191C10)
   <pre><code class="javascript">  // Applies filters and sorters to the data
     public getTableData(
       <strong>table</strong>: string,
       limit: number,
       offset: number,
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C44-L218C49)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const quotedTable = sanitizeColumnName(<strong>table</strong>);
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C25-L218C50)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const quotedTable = <strong>sanitizeColumnName(table)</strong>;
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L218C11-L218C22)
    <pre><code class="javascript">
        const primaryKey = this.getPrimaryKey(table);
        const <strong>quotedTable</strong> = sanitizeColumnName(table);
        const selectClause = primaryKey
          ? `${sanitizeColumnName(primaryKey)}, *`
    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L227C37-L227C48)
    <pre><code class="javascript">
        const query = `
          SELECT ${selectClause} FROM ${<strong>quotedTable</strong>}
          ${whereClause}
          ${orderByClause}
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L226C11-L226C16)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        const <strong>query</strong> = `
          SELECT ${selectClause} FROM ${quotedTable}
          ${whereClause}
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L235C36-L235C41)
    <pre><code class="javascript">    let results;
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          const values: SqlValue[][] = [];
    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L294C36-L294C41)

<pre><code class="javascript">
      // Prepare and execute the query
      const stmt = this.db.prepare(<strong>query</strong>);
      stmt.run([...values, id]); // Primary key is the last parameter
      stmt.free();
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 12 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C58-L266C65)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, columns, values, primaryValue } = <strong>payload</strong>;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C15-L266C55)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const <strong>{ table, columns, values, primaryValue }</strong> = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C17-L266C22)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { <strong>table</strong>, columns, values, primaryValue } = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L268C25-L268C30)
   <pre><code class="javascript">        const { table, columns, values, primaryValue } = payload;

           instance.update(<strong>table</strong>, columns, values, primaryValue);

           // Send the update response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L271C5-L271C10)
   <pre><code class="javascript">  // Update a row in a table
     public update(
       <strong>table</strong>: string,
       columns: string[],
       values: SqlValue[],
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L288C32-L288C37)
    <pre><code class="javascript">
          // The WHERE clause is based on the primary key
          const query = `UPDATE "${<strong>table</strong>}" SET ${setClause} WHERE "${primaryKey}" = ?`;

          // Update values make '' -&gt; NULL
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L288C13-L288C18)
    <pre><code class="javascript">
          // The WHERE clause is based on the primary key
          const <strong>query</strong> = `UPDATE "${table}" SET ${setClause} WHERE "${primaryKey}" = ?`;

          // Update values make '' -&gt; NULL
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L294C36-L294C41)
    <pre><code class="javascript">
          // Prepare and execute the query
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.run([...values, id]); // Primary key is the last parameter
          stmt.free();
    </code></pre>

</details>

<details>
<summary>Path with 19 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C58-L266C65)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, columns, values, primaryValue } = <strong>payload</strong>;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C15-L266C55)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const <strong>{ table, columns, values, primaryValue }</strong> = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C24-L266C31)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, <strong>columns</strong>, values, primaryValue } = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L268C32-L268C39)
   <pre><code class="javascript">        const { table, columns, values, primaryValue } = payload;

           instance.update(table, <strong>columns</strong>, values, primaryValue);

           // Send the update response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L272C5-L272C12)
   <pre><code class="javascript">  public update(
       table: string,
       <strong>columns</strong>: string[],
       values: SqlValue[],
       id: SqlValue
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C25-L285C32)
    <pre><code class="javascript">
          // Construct the SET clause
          const setClause = <strong>columns</strong>.map((column) =&gt; `"${column}" = ?`).join(", ");

          // The WHERE clause is based on the primary key
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C38-L285C44)
    <pre><code class="javascript">
          // Construct the SET clause
          const setClause = columns.map((<strong>column</strong>) =&gt; `"${column}" = ?`).join(", ");

          // The WHERE clause is based on the primary key
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C53-L285C59)
    <pre><code class="javascript">
          // Construct the SET clause
          const setClause = columns.map((column) =&gt; `"${<strong>column</strong>}" = ?`).join(", ");

          // The WHERE clause is based on the primary key
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C49-L285C66)
    <pre><code class="javascript">
          // Construct the SET clause
          const setClause = columns.map((column) =&gt; <strong>`"${column}" = ?`</strong>).join(", ");

          // The WHERE clause is based on the primary key
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C25-L285C67)
    <pre><code class="javascript">
          // Construct the SET clause
          const setClause = <strong>columns.map((column) =&gt; `"${column}" = ?`)</strong>.join(", ");

          // The WHERE clause is based on the primary key
    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C25-L285C78)
    <pre><code class="javascript">
          // Construct the SET clause
          const setClause = <strong>columns.map((column) =&gt; `"${column}" = ?`).join(", ")</strong>;

          // The WHERE clause is based on the primary key
    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L285C13-L285C22)
    <pre><code class="javascript">
          // Construct the SET clause
          const <strong>setClause</strong> = columns.map((column) =&gt; `"${column}" = ?`).join(", ");

          // The WHERE clause is based on the primary key
    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L288C46-L288C55)
    <pre><code class="javascript">
          // The WHERE clause is based on the primary key
          const query = `UPDATE "${table}" SET ${<strong>setClause</strong>} WHERE "${primaryKey}" = ?`;

          // Update values make '' -&gt; NULL
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L288C13-L288C18)
    <pre><code class="javascript">
          // The WHERE clause is based on the primary key
          const <strong>query</strong> = `UPDATE "${table}" SET ${setClause} WHERE "${primaryKey}" = ?`;

          // Update values make '' -&gt; NULL
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L294C36-L294C41)
    <pre><code class="javascript">
          // Prepare and execute the query
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.run([...values, id]); // Primary key is the last parameter
          stmt.free();
    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L295C16-L295C31)

<pre><code class="javascript">      // Prepare and execute the query
      const stmt = this.db.prepare(query);
      stmt.run(<strong>[...values, id]</strong>); // Primary key is the last parameter
      stmt.free();

</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C58-L266C65)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, columns, values, primaryValue } = <strong>payload</strong>;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C15-L266C55)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const <strong>{ table, columns, values, primaryValue }</strong> = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C41-L266C53)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, columns, values, <strong>primaryValue</strong> } = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L268C49-L268C61)
   <pre><code class="javascript">        const { table, columns, values, primaryValue } = payload;

           instance.update(table, columns, values, <strong>primaryValue</strong>);

           // Send the update response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L274C5-L274C7)
   <pre><code class="javascript">    columns: string[],
       values: SqlValue[],
       <strong>id</strong>: SqlValue
     ) {
       try {
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L295C28-L295C30)
    <pre><code class="javascript">      // Prepare and execute the query
          const stmt = this.db.prepare(query);
          stmt.run([...values, <strong>id</strong>]); // Primary key is the last parameter
          stmt.free();

    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L295C16-L295C31)
    <pre><code class="javascript">      // Prepare and execute the query
          const stmt = this.db.prepare(query);
          stmt.run(<strong>[...values, id]</strong>); // Primary key is the last parameter
          stmt.free();

    </code></pre>

</details>

<details>
<summary>Path with 18 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C58-L266C65)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, columns, values, primaryValue } = <strong>payload</strong>;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C15-L266C55)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const <strong>{ table, columns, values, primaryValue }</strong> = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L266C33-L266C39)
   <pre><code class="javascript">      // Updates the values of a row in a table
         case "update": {
           const { table, columns, <strong>values</strong>, primaryValue } = payload;

           instance.update(table, columns, values, primaryValue);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L268C41-L268C47)
   <pre><code class="javascript">        const { table, columns, values, primaryValue } = payload;

           instance.update(table, columns, <strong>values</strong>, primaryValue);

           // Send the update response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L273C5-L273C11)
   <pre><code class="javascript">    table: string,
       columns: string[],
       <strong>values</strong>: SqlValue[],
       id: SqlValue
     ) {
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L291C16-L291C22)
    <pre><code class="javascript">
          // Update values make '' -&gt; NULL
          values = <strong>values</strong>.map((value) =&gt; (value === "" ? null : value));

          // Prepare and execute the query
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L291C28-L291C33)
    <pre><code class="javascript">
          // Update values make '' -&gt; NULL
          values = values.map((<strong>value</strong>) =&gt; (value === "" ? null : value));

          // Prepare and execute the query
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L291C61-L291C66)
    <pre><code class="javascript">
          // Update values make '' -&gt; NULL
          values = values.map((value) =&gt; (value === "" ? null : <strong>value</strong>));

          // Prepare and execute the query
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L291C38-L291C67)
    <pre><code class="javascript">
          // Update values make '' -&gt; NULL
          values = values.map((value) =&gt; <strong>(value === "" ? null : value)</strong>);

          // Prepare and execute the query
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L291C16-L291C68)
    <pre><code class="javascript">
          // Update values make '' -&gt; NULL
          values = <strong>values.map((value) =&gt; (value === "" ? null : value))</strong>;

          // Prepare and execute the query
    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L291C7-L291C13)
    <pre><code class="javascript">
          // Update values make '' -&gt; NULL
          <strong>values</strong> = values.map((value) =&gt; (value === "" ? null : value));

          // Prepare and execute the query
    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L295C20-L295C26)
    <pre><code class="javascript">      // Prepare and execute the query
          const stmt = this.db.prepare(query);
          stmt.run([...<strong>values</strong>, id]); // Primary key is the last parameter
          stmt.free();

    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L295C17-L295C26)
    <pre><code class="javascript">      // Prepare and execute the query
          const stmt = this.db.prepare(query);
          stmt.run([<strong>...values</strong>, id]); // Primary key is the last parameter
          stmt.free();

    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L295C16-L295C31)
    <pre><code class="javascript">      // Prepare and execute the query
          const stmt = this.db.prepare(query);
          stmt.run(<strong>[...values, id]</strong>); // Primary key is the last parameter
          stmt.free();

    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L323C36-L323C41)

<pre><code class="javascript">      const query = `DELETE FROM "${table}" WHERE "${primaryKey}" = ?`;

      const stmt = this.db.prepare(<strong>query</strong>);
      stmt.run([id]);
      stmt.free();
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 12 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L280C41-L280C48)
   <pre><code class="javascript">      // Deletes a row from a table
         case "delete": {
           const { table, primaryValue } = <strong>payload</strong>;

           instance.delete(table, primaryValue);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L280C15-L280C38)
   <pre><code class="javascript">      // Deletes a row from a table
         case "delete": {
           const <strong>{ table, primaryValue }</strong> = payload;

           instance.delete(table, primaryValue);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L280C17-L280C22)
   <pre><code class="javascript">      // Deletes a row from a table
         case "delete": {
           const { <strong>table</strong>, primaryValue } = payload;

           instance.delete(table, primaryValue);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L282C25-L282C30)
   <pre><code class="javascript">        const { table, primaryValue } = payload;

           instance.delete(<strong>table</strong>, primaryValue);

           // Send the delete response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L312C17-L312C22)
   <pre><code class="javascript">
     // Delete a row from a table
     public delete(<strong>table</strong>: string, id: SqlValue) {
       try {
         const primaryKey = this.getPrimaryKey(table);
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L321C37-L321C42)
    <pre><code class="javascript">      }

          const query = `DELETE FROM "${<strong>table</strong>}" WHERE "${primaryKey}" = ?`;

          const stmt = this.db.prepare(query);
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L321C13-L321C18)
    <pre><code class="javascript">      }

          const <strong>query</strong> = `DELETE FROM "${table}" WHERE "${primaryKey}" = ?`;

          const stmt = this.db.prepare(query);
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L323C36-L323C41)
    <pre><code class="javascript">      const query = `DELETE FROM "${table}" WHERE "${primaryKey}" = ?`;

          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.run([id]);
          stmt.free();
    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L324C16-L324C20)

<pre><code class="javascript">
      const stmt = this.db.prepare(query);
      stmt.run(<strong>[id]</strong>);
      stmt.free();

</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 11 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L280C41-L280C48)
   <pre><code class="javascript">      // Deletes a row from a table
         case "delete": {
           const { table, primaryValue } = <strong>payload</strong>;

           instance.delete(table, primaryValue);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L280C15-L280C38)
   <pre><code class="javascript">      // Deletes a row from a table
         case "delete": {
           const <strong>{ table, primaryValue }</strong> = payload;

           instance.delete(table, primaryValue);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L280C24-L280C36)
   <pre><code class="javascript">      // Deletes a row from a table
         case "delete": {
           const { table, <strong>primaryValue</strong> } = payload;

           instance.delete(table, primaryValue);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L282C32-L282C44)
   <pre><code class="javascript">        const { table, primaryValue } = payload;

           instance.delete(table, <strong>primaryValue</strong>);

           // Send the delete response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L312C32-L312C34)
   <pre><code class="javascript">
     // Delete a row from a table
     public delete(table: string, <strong>id</strong>: SqlValue) {
       try {
         const primaryKey = this.getPrimaryKey(table);
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L324C17-L324C19)
    <pre><code class="javascript">
          const stmt = this.db.prepare(query);
          stmt.run([<strong>id</strong>]);
          stmt.free();

    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L324C16-L324C20)
    <pre><code class="javascript">
          const stmt = this.db.prepare(query);
          stmt.run(<strong>[id]</strong>);
          stmt.free();

    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L358C36-L358C41)

<pre><code class="javascript">      const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

      const stmt = this.db.prepare(<strong>query</strong>);
      stmt.run([...filteredValues]);
      stmt.free();
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 12 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C44-L294C51)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const { table, columns, values } = <strong>payload</strong>;

           instance.insert(table, columns, values);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C15-L294C41)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const <strong>{ table, columns, values }</strong> = payload;

           instance.insert(table, columns, values);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C17-L294C22)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const { <strong>table</strong>, columns, values } = payload;

           instance.insert(table, columns, values);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L296C25-L296C30)
   <pre><code class="javascript">        const { table, columns, values } = payload;

           instance.insert(<strong>table</strong>, columns, values);

           // Send the insert response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L341C17-L341C22)
   <pre><code class="javascript">
     // Insert a row into a table
     public insert(<strong>table</strong>: string, columns: string[], values: SqlValue[]) {
       try {
         // Filter out empty values and their corresponding columns
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L356C37-L356C42)
    <pre><code class="javascript">      const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

          const query = `INSERT INTO "${<strong>table</strong>}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(query);
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L356C13-L356C18)
    <pre><code class="javascript">      const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

          const <strong>query</strong> = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(query);
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L358C36-L358C41)
    <pre><code class="javascript">      const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.run([...filteredValues]);
          stmt.free();
    </code></pre>

</details>

<details>
<summary>Path with 27 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C44-L294C51)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const { table, columns, values } = <strong>payload</strong>;

           instance.insert(table, columns, values);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C15-L294C41)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const <strong>{ table, columns, values }</strong> = payload;

           instance.insert(table, columns, values);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C24-L294C31)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const { table, <strong>columns</strong>, values } = payload;

           instance.insert(table, columns, values);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L296C32-L296C39)
   <pre><code class="javascript">        const { table, columns, values } = payload;

           instance.insert(table, <strong>columns</strong>, values);

           // Send the insert response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L341C32-L341C39)
   <pre><code class="javascript">
     // Insert a row into a table
     public insert(table: string, <strong>columns</strong>: string[], values: SqlValue[]) {
       try {
         // Filter out empty values and their corresponding columns
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C31-L344C38)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const filteredEntries = <strong>columns</strong>
            .map((col, index) =&gt; ({ col, val: values[index] }))
            .filter((entry) =&gt; entry.val !== "");
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C15-L345C18)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((<strong>col</strong>, index) =&gt; ({ col, val: values[index] }))
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C33-L345C36)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; ({ <strong>col</strong>, val: values[index] }))
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C31-L345C58)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; (<strong>{ col, val: values[index] }</strong>))
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C30-L345C59)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; <strong>({ col, val: values[index] })</strong>)
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C31-L345C60)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const filteredEntries = <strong>columns</strong>
    <strong>        .map((col, index) =&gt; ({ col, val: values[index] }))</strong>
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C31-L346C45)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const filteredEntries = <strong>columns</strong>
    <strong>        .map((col, index) =&gt; ({ col, val: values[index] }))</strong>
    <strong>        .filter((entry) =&gt; entry.val !== "")</strong>;

          // If there are no valid columns/values, avoid executing an empty INSERT
    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C13-L344C28)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const <strong>filteredEntries</strong> = columns
            .map((col, index) =&gt; ({ col, val: values[index] }))
            .filter((entry) =&gt; entry.val !== "");
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L353C31-L353C46)
    <pre><code class="javascript">      }

          const filteredColumns = <strong>filteredEntries</strong>.map((entry) =&gt; entry.col);
          const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L353C52-L353C57)
    <pre><code class="javascript">      }

          const filteredColumns = filteredEntries.map((<strong>entry</strong>) =&gt; entry.col);
          const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L353C62-L353C67)
    <pre><code class="javascript">      }

          const filteredColumns = filteredEntries.map((entry) =&gt; <strong>entry</strong>.col);
          const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L353C62-L353C71)
    <pre><code class="javascript">      }

          const filteredColumns = filteredEntries.map((entry) =&gt; <strong>entry.col</strong>);
          const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

    </code></pre>

22. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L353C31-L353C72)
    <pre><code class="javascript">      }

          const filteredColumns = <strong>filteredEntries.map((entry) =&gt; entry.col)</strong>;
          const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

    </code></pre>

23. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L353C13-L353C28)
    <pre><code class="javascript">      }

          const <strong>filteredColumns</strong> = filteredEntries.map((entry) =&gt; entry.col);
          const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

    </code></pre>

24. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L356C48-L356C63)
    <pre><code class="javascript">      const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

          const query = `INSERT INTO "${table}" (${<strong>filteredColumns</strong>.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(query);
    </code></pre>

25. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L356C48-L356C74)
    <pre><code class="javascript">      const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

          const query = `INSERT INTO "${table}" (${<strong>filteredColumns.join(", ")</strong>}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(query);
    </code></pre>

26. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L356C13-L356C18)
    <pre><code class="javascript">      const filteredValues = filteredEntries.map((entry) =&gt; entry.val);

          const <strong>query</strong> = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(query);
    </code></pre>

27. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L358C36-L358C41)
    <pre><code class="javascript">      const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;

          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.run([...filteredValues]);
          stmt.free();
    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L359C16-L359C35)

<pre><code class="javascript">
      const stmt = this.db.prepare(query);
      stmt.run(<strong>[...filteredValues]</strong>);
      stmt.free();

</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 25 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C44-L294C51)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const { table, columns, values } = <strong>payload</strong>;

           instance.insert(table, columns, values);
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C15-L294C41)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const <strong>{ table, columns, values }</strong> = payload;

           instance.insert(table, columns, values);
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L294C33-L294C39)
   <pre><code class="javascript">      // Inserts a row into a table
         case "insert": {
           const { table, columns, <strong>values</strong> } = payload;

           instance.insert(table, columns, values);
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L296C41-L296C47)
   <pre><code class="javascript">        const { table, columns, values } = payload;

           instance.insert(table, columns, <strong>values</strong>);

           // Send the insert response to the main thread
   </code></pre>

9. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L341C51-L341C57)
   <pre><code class="javascript">
     // Insert a row into a table
     public insert(table: string, columns: string[], <strong>values</strong>: SqlValue[]) {
       try {
         // Filter out empty values and their corresponding columns
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C43-L345C49)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; ({ col, val: <strong>values</strong>[index] }))
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C43-L345C56)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; ({ col, val: <strong>values[index]</strong> }))
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C31-L345C58)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; (<strong>{ col, val: values[index] }</strong>))
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L345C30-L345C59)
    <pre><code class="javascript">      // Filter out empty values and their corresponding columns
          const filteredEntries = columns
            .map((col, index) =&gt; <strong>({ col, val: values[index] })</strong>)
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C31-L345C60)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const filteredEntries = <strong>columns</strong>
    <strong>        .map((col, index) =&gt; ({ col, val: values[index] }))</strong>
            .filter((entry) =&gt; entry.val !== "");

    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C31-L346C45)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const filteredEntries = <strong>columns</strong>
    <strong>        .map((col, index) =&gt; ({ col, val: values[index] }))</strong>
    <strong>        .filter((entry) =&gt; entry.val !== "")</strong>;

          // If there are no valid columns/values, avoid executing an empty INSERT
    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L344C13-L344C28)
    <pre><code class="javascript">    try {
          // Filter out empty values and their corresponding columns
          const <strong>filteredEntries</strong> = columns
            .map((col, index) =&gt; ({ col, val: values[index] }))
            .filter((entry) =&gt; entry.val !== "");
    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L354C30-L354C45)
    <pre><code class="javascript">
          const filteredColumns = filteredEntries.map((entry) =&gt; entry.col);
          const filteredValues = <strong>filteredEntries</strong>.map((entry) =&gt; entry.val);

          const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;
    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L354C51-L354C56)
    <pre><code class="javascript">
          const filteredColumns = filteredEntries.map((entry) =&gt; entry.col);
          const filteredValues = filteredEntries.map((<strong>entry</strong>) =&gt; entry.val);

          const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L354C61-L354C66)
    <pre><code class="javascript">
          const filteredColumns = filteredEntries.map((entry) =&gt; entry.col);
          const filteredValues = filteredEntries.map((entry) =&gt; <strong>entry</strong>.val);

          const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;
    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L354C61-L354C70)
    <pre><code class="javascript">
          const filteredColumns = filteredEntries.map((entry) =&gt; entry.col);
          const filteredValues = filteredEntries.map((entry) =&gt; <strong>entry.val</strong>);

          const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;
    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L354C30-L354C71)
    <pre><code class="javascript">
          const filteredColumns = filteredEntries.map((entry) =&gt; entry.col);
          const filteredValues = <strong>filteredEntries.map((entry) =&gt; entry.val)</strong>;

          const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;
    </code></pre>

22. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L354C13-L354C27)
    <pre><code class="javascript">
          const filteredColumns = filteredEntries.map((entry) =&gt; entry.col);
          const <strong>filteredValues</strong> = filteredEntries.map((entry) =&gt; entry.val);

          const query = `INSERT INTO "${table}" (${filteredColumns.join(", ")}) VALUES (${filteredColumns.map(() =&gt; "?").join(", ")})`;
    </code></pre>

23. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L359C20-L359C34)
    <pre><code class="javascript">
          const stmt = this.db.prepare(query);
          stmt.run([...<strong>filteredValues</strong>]);
          stmt.free();

    </code></pre>

24. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L359C17-L359C34)
    <pre><code class="javascript">
          const stmt = this.db.prepare(query);
          stmt.run([<strong>...filteredValues</strong>]);
          stmt.free();

    </code></pre>

25. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L359C16-L359C35)
    <pre><code class="javascript">
          const stmt = this.db.prepare(query);
          stmt.run(<strong>[...filteredValues]</strong>);
          stmt.free();

    </code></pre>

</details>

----------------------------------------

[src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L410C36-L410C41)

<pre><code class="javascript">
    if (params.length &gt; 0) {
      const stmt = this.db.prepare(<strong>query</strong>);
      stmt.bind(params);
      const values: SqlValue[][] = [];
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 22 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L317C13-L317C20)
   <pre><code class="javascript">          exportType,
             customQuery
           } = <strong>payload</strong>;

           let results: QueryExecResult[];
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L309C15-L317C10)
   <pre><code class="javascript">      // Current data is the current page of data
         case "export": {
           const <strong>{</strong>
   <strong>          table,</strong>
   <strong>          filters,</strong>
   <strong>          sorters,</strong>
   <strong>          limit,</strong>
   <strong>          offset,</strong>
   <strong>          exportType,</strong>
   <strong>          customQuery</strong>
   <strong>        }</strong> = payload;

           let results: QueryExecResult[];
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L310C11-L310C16)
   <pre><code class="javascript">      case "export": {
           const {
             <strong>table</strong>,
             filters,
             sorters,
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L321C39-L321C44)
   <pre><code class="javascript">        let results: QueryExecResult[];
           if (exportType === "table") {
             results = instance.export({ <strong>table</strong> });
           } else if (exportType === "current") {
             results = instance.export({ table, limit, offset, filters, sorters });
   </code></pre>

9. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L321C37-L321C46)
   <pre><code class="javascript">        let results: QueryExecResult[];
           if (exportType === "table") {
             results = instance.export(<strong>{ table }</strong>);
           } else if (exportType === "current") {
             results = instance.export({ table, limit, offset, filters, sorters });
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L370C17-L377C4)
    <pre><code class="javascript">
      // Used for exporting data as CSV
      public export(<strong>{</strong>
    <strong>    table,</strong>
    <strong>    offset,</strong>
    <strong>    limit,</strong>
    <strong>    filters,</strong>
    <strong>    sorters,</strong>
    <strong>    customQuery</strong>
    <strong>  }</strong>: {
        table?: string;
        offset?: number;
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L371C5-L371C10)
    <pre><code class="javascript">  // Used for exporting data as CSV
      public export({
        <strong>table</strong>,
        offset,
        limit,
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L371C5-L371C10)
    <pre><code class="javascript">  // Used for exporting data as CSV
      public export({
        <strong>table</strong>,
        offset,
        limit,
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L394C44-L394C49)
    <pre><code class="javascript">    }

        const quotedTable = sanitizeColumnName(<strong>table</strong>);
        const { clause: whereClause, params } = buildWhereClause(filters);
        const orderByClause = buildOrderByClause(sorters);
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L394C25-L394C50)
    <pre><code class="javascript">    }

        const quotedTable = <strong>sanitizeColumnName(table)</strong>;
        const { clause: whereClause, params } = buildWhereClause(filters);
        const orderByClause = buildOrderByClause(sorters);
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L394C11-L394C22)
    <pre><code class="javascript">    }

        const <strong>quotedTable</strong> = sanitizeColumnName(table);
        const { clause: whereClause, params } = buildWhereClause(filters);
        const orderByClause = buildOrderByClause(sorters);
    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L398C34-L398C45)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        let query = `SELECT * FROM ${<strong>quotedTable</strong>} ${whereClause} ${orderByClause}`;

        if (offset &amp;&amp; limit) {
    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L398C9-L398C14)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        let <strong>query</strong> = `SELECT * FROM ${quotedTable} ${whereClause} ${orderByClause}`;

        if (offset &amp;&amp; limit) {
    </code></pre>

22. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L410C36-L410C41)
    <pre><code class="javascript">
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          const values: SqlValue[][] = [];
    </code></pre>

</details>

<details>
<summary>Path with 24 steps</summary>

1. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L29C25-L29C30)
   <pre><code class="javascript">self.addEventListener("unload", cleanup);

   self.onmessage = async (<strong>event</strong>: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = event.data;

   </code></pre>

2. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C31-L30C36)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, payload } = <strong>event</strong>.data;

     // Create a new database instance
   </code></pre>

3. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C9-L30C28)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const <strong>{ action, payload }</strong> = event.data;

     // Create a new database instance
   </code></pre>

4. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L30C19-L30C26)
   <pre><code class="javascript">
   self.onmessage = async (event: MessageEvent&lt;WorkerEvent&gt;) =&gt; {
     const { action, <strong>payload</strong> } = event.data;

     // Create a new database instance
   </code></pre>

5. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L317C13-L317C20)
   <pre><code class="javascript">          exportType,
             customQuery
           } = <strong>payload</strong>;

           let results: QueryExecResult[];
   </code></pre>

6. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L309C15-L317C10)
   <pre><code class="javascript">      // Current data is the current page of data
         case "export": {
           const <strong>{</strong>
   <strong>          table,</strong>
   <strong>          filters,</strong>
   <strong>          sorters,</strong>
   <strong>          limit,</strong>
   <strong>          offset,</strong>
   <strong>          exportType,</strong>
   <strong>          customQuery</strong>
   <strong>        }</strong> = payload;

           let results: QueryExecResult[];
   </code></pre>

7. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L310C11-L310C16)
   <pre><code class="javascript">      case "export": {
           const {
             <strong>table</strong>,
             filters,
             sorters,
   </code></pre>

8. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L323C39-L323C44)
   <pre><code class="javascript">          results = instance.export({ table });
           } else if (exportType === "current") {
             results = instance.export({ <strong>table</strong>, limit, offset, filters, sorters });
           } else if (exportType === "custom") {
             results = instance.export({ customQuery });
   </code></pre>

9. [src/sqlite/sqliteWorker.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/sqliteWorker.ts#L323C37-L323C79)
   <pre><code class="javascript">          results = instance.export({ table });
           } else if (exportType === "current") {
             results = instance.export(<strong>{ table, limit, offset, filters, sorters }</strong>);
           } else if (exportType === "custom") {
             results = instance.export({ customQuery });
   </code></pre>

10. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L370C17-L377C4)
    <pre><code class="javascript">
      // Used for exporting data as CSV
      public export(<strong>{</strong>
    <strong>    table,</strong>
    <strong>    offset,</strong>
    <strong>    limit,</strong>
    <strong>    filters,</strong>
    <strong>    sorters,</strong>
    <strong>    customQuery</strong>
    <strong>  }</strong>: {
        table?: string;
        offset?: number;
    </code></pre>

11. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L371C5-L371C10)
    <pre><code class="javascript">  // Used for exporting data as CSV
      public export({
        <strong>table</strong>,
        offset,
        limit,
    </code></pre>

12. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L371C5-L371C10)
    <pre><code class="javascript">  // Used for exporting data as CSV
      public export({
        <strong>table</strong>,
        offset,
        limit,
    </code></pre>

13. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L394C44-L394C49)
    <pre><code class="javascript">    }

        const quotedTable = sanitizeColumnName(<strong>table</strong>);
        const { clause: whereClause, params } = buildWhereClause(filters);
        const orderByClause = buildOrderByClause(sorters);
    </code></pre>

14. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L433C29-L433C39)
    <pre><code class="javascript">
    // Simple column name quoting for SQL
    function sanitizeColumnName(<strong>columnName</strong>: string): string {
      return `"${columnName.replace(/"/g, '""')}"`;
    }
    </code></pre>

15. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C24)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName</strong>.replace(/"/g, '""')}"`;
    }

    </code></pre>

16. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C14-L434C44)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return `"${<strong>columnName.replace(/"/g, '""')</strong>}"`;
    }

    </code></pre>

17. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L434C10-L434C47)
    <pre><code class="javascript">// Simple column name quoting for SQL
    function sanitizeColumnName(columnName: string): string {
      return <strong>`"${columnName.replace(/"/g, '""')}"`</strong>;
    }

    </code></pre>

18. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L394C25-L394C50)
    <pre><code class="javascript">    }

        const quotedTable = <strong>sanitizeColumnName(table)</strong>;
        const { clause: whereClause, params } = buildWhereClause(filters);
        const orderByClause = buildOrderByClause(sorters);
    </code></pre>

19. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L394C11-L394C22)
    <pre><code class="javascript">    }

        const <strong>quotedTable</strong> = sanitizeColumnName(table);
        const { clause: whereClause, params } = buildWhereClause(filters);
        const orderByClause = buildOrderByClause(sorters);
    </code></pre>

20. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L398C34-L398C45)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        let query = `SELECT * FROM ${<strong>quotedTable</strong>} ${whereClause} ${orderByClause}`;

        if (offset &amp;&amp; limit) {
    </code></pre>

21. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L398C9-L398C14)
    <pre><code class="javascript">    const orderByClause = buildOrderByClause(sorters);

        let <strong>query</strong> = `SELECT * FROM ${quotedTable} ${whereClause} ${orderByClause}`;

        if (offset &amp;&amp; limit) {
    </code></pre>

22. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L406C7-L406C12)
    <pre><code class="javascript">      );
          const safeOffset = Math.max(0, Math.floor(Number(offset)));
          <strong>query</strong> += ` LIMIT ${safeLimit} OFFSET ${safeOffset}`;
        }

    </code></pre>

23. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L406C7-L406C12)
    <pre><code class="javascript">      );
          const safeOffset = Math.max(0, Math.floor(Number(offset)));
          <strong>query</strong> += ` LIMIT ${safeLimit} OFFSET ${safeOffset}`;
        }

    </code></pre>

24. [src/sqlite/core.ts](https://github.com/yzua/sqlite-online/blob/228031629fb50bf512e3f0e6c988cb773207d5d6/src/sqlite/core.ts#L410C36-L410C41)
    <pre><code class="javascript">
        if (params.length &gt; 0) {
          const stmt = this.db.prepare(<strong>query</strong>);
          stmt.bind(params);
          const values: SqlValue[][] = [];
    </code></pre>

</details>

----------------------------------------

|  | source | sink |  |
| --- | --- | --- | --- |
| `query` | `event` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `event` | `query` | `User-controlled data flows into raw SQL query.` |
| `query` | `event` | `query` | `User-controlled data flows into raw SQL query.` |
| `[...values, id]` | `event` | `[...values, id]` | `User-controlled data flows into raw SQL query.` |
| `query` | `event` | `query` | `User-controlled data flows into raw SQL query.` |
| `[id]` | `event` | `[id]` | `User-controlled data flows into raw SQL query.` |
| `query` | `event` | `query` | `User-controlled data flows into raw SQL query.` |
| `[...filteredValues]` | `event` | `[...filteredValues]` | `User-controlled data flows into raw SQL query.` |
| `query` | `event` | `query` | `User-controlled data flows into raw SQL query.` |