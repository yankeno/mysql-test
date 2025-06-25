# MySQL テスト用リポジトリ

## MySQL Shell チートシート(JS モード)

### 起動

```bash
> mysqlsh
```

### サーバ接続

```bash
mysql-js> \connect user@host:port
```

### データベース選択

```bash
mysql-js> \use database_name
```

### データベース一覧を表示

```bash
mysql-js> session.getSchemas()
```

### テーブル一覧を表示

```bash
mysql-js> db.getTables();
```

### SQL を実行

```bash
mysql-js> session.sql('SELECT * FROM table_name').execute()
```

### ダンプ取得

```bash
mysql-js> util.dumpInstance(outputUrl[, options])
mysql-js> util.dumpSchemas(schemas, outputUrl[, options])
mysql-js> util.dumpTables(schema, tables, outputUrl[, options])
```

### ダンプ時に使いそうなオプション

- threads
- all

util.loadDump で以下のエラーが発生した場合

```
ERROR: The 'local_infile' global system variable must be set to ON in the target server, after the server is verified to be trusted.
```

local_infile を ON にしてやる

```bash
mysql-sql> SET GLOBAL local_infile=on;
```

### ステータス確認

```bash
mysql-js> shell.status()
```

### モード切り替え

```bash
mysql-js> \sql    // SQLモード
mysql-js> \py     // Pythonモード
mysql-js> \js     // JSモード
```
