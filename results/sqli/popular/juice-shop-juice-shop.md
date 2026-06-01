### juice-shop/juice-shop

[routes/login.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/login.ts#L34C28-L34C170)

<pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
    verifyPreLoginChallenges(req) // vuln-code-snippet hide-line
    models.sequelize.query(<strong>`SELECT * FROM Users WHERE email = '${req.body.email || ''}' AND password = '${security.hash(req.body.password || '')}' AND deletedAt IS NULL`</strong>, { model: UserModel, plain: true }) // vuln-code-snippet vuln-line loginAdminChallenge loginBenderChallenge loginJimChallenge
      .then((authenticatedUser) =&gt; { // vuln-code-snippet neutral-line loginAdminChallenge loginBenderChallenge loginJimChallenge
        const user = utils.queryResultToJson(authenticatedUser)
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 2 steps</summary>

1. [routes/login.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/login.ts#L34C66-L34C74)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       verifyPreLoginChallenges(req) // vuln-code-snippet hide-line
       models.sequelize.query(`SELECT * FROM Users WHERE email = '${<strong>req.body</strong>.email || ''}' AND password = '${security.hash(req.body.password || '')}' AND deletedAt IS NULL`, { model: UserModel, plain: true }) // vuln-code-snippet vuln-line loginAdminChallenge loginBenderChallenge loginJimChallenge
         .then((authenticatedUser) =&gt; { // vuln-code-snippet neutral-line loginAdminChallenge loginBenderChallenge loginJimChallenge
           const user = utils.queryResultToJson(authenticatedUser)
   </code></pre>

2. [routes/login.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/login.ts#L34C28-L34C170)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       verifyPreLoginChallenges(req) // vuln-code-snippet hide-line
       models.sequelize.query(<strong>`SELECT * FROM Users WHERE email = '${req.body.email || ''}' AND password = '${security.hash(req.body.password || '')}' AND deletedAt IS NULL`</strong>, { model: UserModel, plain: true }) // vuln-code-snippet vuln-line loginAdminChallenge loginBenderChallenge loginJimChallenge
         .then((authenticatedUser) =&gt; { // vuln-code-snippet neutral-line loginAdminChallenge loginBenderChallenge loginJimChallenge
           const user = utils.queryResultToJson(authenticatedUser)
   </code></pre>

</details>

----------------------------------------

[routes/login.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/login.ts#L34C28-L34C170)

<pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
    verifyPreLoginChallenges(req) // vuln-code-snippet hide-line
    models.sequelize.query(<strong>`SELECT * FROM Users WHERE email = '${req.body.email || ''}' AND password = '${security.hash(req.body.password || '')}' AND deletedAt IS NULL`</strong>, { model: UserModel, plain: true }) // vuln-code-snippet vuln-line loginAdminChallenge loginBenderChallenge loginJimChallenge
      .then((authenticatedUser) =&gt; { // vuln-code-snippet neutral-line loginAdminChallenge loginBenderChallenge loginJimChallenge
        const user = utils.queryResultToJson(authenticatedUser)
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 4 steps</summary>

1. [server.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/server.ts#L323C31-L323C39)
   <pre><code class="javascript">      }
         if (req.body !== Object(req.body)) { // Expensive workaround for 500 errors during Frisby test run (see #640)
           req.body = JSON.parse(<strong>req.body</strong>)
         }
       }
   </code></pre>

2. [server.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/server.ts#L323C20-L323C40)
   <pre><code class="javascript">      }
         if (req.body !== Object(req.body)) { // Expensive workaround for 500 errors during Frisby test run (see #640)
           req.body = <strong>JSON.parse(req.body)</strong>
         }
       }
   </code></pre>

3. [routes/login.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/login.ts#L34C66-L34C74)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       verifyPreLoginChallenges(req) // vuln-code-snippet hide-line
       models.sequelize.query(`SELECT * FROM Users WHERE email = '${<strong>req.body</strong>.email || ''}' AND password = '${security.hash(req.body.password || '')}' AND deletedAt IS NULL`, { model: UserModel, plain: true }) // vuln-code-snippet vuln-line loginAdminChallenge loginBenderChallenge loginJimChallenge
         .then((authenticatedUser) =&gt; { // vuln-code-snippet neutral-line loginAdminChallenge loginBenderChallenge loginJimChallenge
           const user = utils.queryResultToJson(authenticatedUser)
   </code></pre>

4. [routes/login.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/login.ts#L34C28-L34C170)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       verifyPreLoginChallenges(req) // vuln-code-snippet hide-line
       models.sequelize.query(<strong>`SELECT * FROM Users WHERE email = '${req.body.email || ''}' AND password = '${security.hash(req.body.password || '')}' AND deletedAt IS NULL`</strong>, { model: UserModel, plain: true }) // vuln-code-snippet vuln-line loginAdminChallenge loginBenderChallenge loginJimChallenge
         .then((authenticatedUser) =&gt; { // vuln-code-snippet neutral-line loginAdminChallenge loginBenderChallenge loginJimChallenge
           const user = utils.queryResultToJson(authenticatedUser)
   </code></pre>

</details>

----------------------------------------

[routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L23C28-L23C160)

<pre><code class="javascript">    let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
    criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
    models.sequelize.query(<strong>`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`</strong>) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
      .then(([products]: any) =&gt; {
        const dataString = JSON.stringify(products)
</code></pre>

*User-controlled data flows into raw SQL query.*

#### Paths

<details>
<summary>Path with 6 steps</summary>

1. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L21C60-L21C71)
   <pre><code class="javascript">export function searchProducts () {
     return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : <strong>req.query.q</strong> ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
   </code></pre>

2. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L21C9-L21C17)
   <pre><code class="javascript">export function searchProducts () {
     return (req: Request, res: Response, next: NextFunction) =&gt; {
       let <strong>criteria</strong>: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
   </code></pre>

3. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L22C43-L22C51)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? <strong>criteria</strong> : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
   </code></pre>

4. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L22C5-L22C13)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       <strong>criteria</strong> = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
   </code></pre>

5. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L23C74-L23C82)
   <pre><code class="javascript">    let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${<strong>criteria</strong>}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
           const dataString = JSON.stringify(products)
   </code></pre>

6. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L23C28-L23C160)
   <pre><code class="javascript">    let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(<strong>`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`</strong>) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
           const dataString = JSON.stringify(products)
   </code></pre>

</details>

<details>
<summary>Path with 7 steps</summary>

1. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L21C60-L21C71)
   <pre><code class="javascript">export function searchProducts () {
     return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : <strong>req.query.q</strong> ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
   </code></pre>

2. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L21C9-L21C17)
   <pre><code class="javascript">export function searchProducts () {
     return (req: Request, res: Response, next: NextFunction) =&gt; {
       let <strong>criteria</strong>: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
   </code></pre>

3. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L22C54-L22C62)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : <strong>criteria</strong>.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
   </code></pre>

4. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L22C54-L22C80)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : <strong>criteria.substring(0, 200)</strong>
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
   </code></pre>

5. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L22C5-L22C13)
   <pre><code class="javascript">  return (req: Request, res: Response, next: NextFunction) =&gt; {
       let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       <strong>criteria</strong> = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
   </code></pre>

6. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L23C110-L23C118)
   <pre><code class="javascript">    let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${<strong>criteria</strong>}%') AND deletedAt IS NULL) ORDER BY name`) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
           const dataString = JSON.stringify(products)
   </code></pre>

7. [routes/search.ts](https://github.com/juice-shop/juice-shop/blob/6244c59a47ba4436cb00e9ad9c565bb2056582ec/routes/search.ts#L23C28-L23C160)
   <pre><code class="javascript">    let criteria: any = req.query.q === 'undefined' ? '' : req.query.q ?? ''
       criteria = (criteria.length &lt;= 200) ? criteria : criteria.substring(0, 200)
       models.sequelize.query(<strong>`SELECT * FROM Products WHERE ((name LIKE '%${criteria}%' OR description LIKE '%${criteria}%') AND deletedAt IS NULL) ORDER BY name`</strong>) // vuln-code-snippet vuln-line unionSqlInjectionChallenge dbSchemaChallenge
         .then(([products]: any) =&gt; {
           const dataString = JSON.stringify(products)
   </code></pre>

</details>

----------------------------------------

|  | source | sink |  |
| --- | --- | --- | --- |
| ``SELECT ... S NULL`` | `req.body` | ``SELECT ... S NULL`` | `User-controlled data flows into raw SQL query.` |
| ``SELECT ... S NULL`` | `req.body` | ``SELECT ... S NULL`` | `User-controlled data flows into raw SQL query.` |
| ``SELECT ... Y name`` | `req.query.q` | ``SELECT ... Y name`` | `User-controlled data flows into raw SQL query.` |