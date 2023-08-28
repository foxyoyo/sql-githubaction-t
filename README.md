
# sql-review.yaml sample
- ref : https://github.com/marketplace/actions/sql-review

About parameters
database-type: Required. The database type, should be one of MYSQL, POSTGRES or TIDB.
override-file-path: Optional. Your SQL review rules configuration file path. You can configure and generate this file in Bytebase SQL Review Guide page. You can ignore this parameter and only provide the template-id if you don't want to customize rules.
template-id: Optional. The SQL Review rule template id, should be one of bb.sql-review.prod or bb.sql-review.dev. You can ignore this parameter if you provide the override-file-path parameter.
file-pattern: Optional. The file path regex pattern for your SQL files. Defaults ^.*\.sql$. For example, if you only want to subscribe to the SQL file changes in the db folder, you can set this parameter to ^db/.*\.sql$.

```yaml
on: [pull_request]

jobs:
  sql-review:
    runs-on: ubuntu-latest
    name: SQL Review
    steps:
      - uses: actions/checkout@v3
      - name: Check SQL
        # You can change it to a specific version like bytebase/sql-review-action@0.0.4
        # We suggest using the latest version through the tag. Check it at https://github.com/Bytebase/sql-review-action/tags
        uses: bytebase/sql-review-action@main
        with:
          override-file-path: "<Your SQL review rules configuration file path>"
          template-id: "<SQL review rule template id>"
          database-type: "<The database type>"
          file-pattern: "<The file pattern for your SQL files>"

```
