## Install database

You need Postgres and Ruby with Bundler.

    bundle install
    bundle exec sem-apply --url postgresql://postgres@localhost/currencies --password

## Export data to JSON

```sql
SELECT export_currencies_to_json();
```
