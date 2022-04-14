# samの環境変数テスト

## 前準備

- このリポジトリをcloneする

```sh
git clone git@github.com:n9d/sam-environment-test.git
cd sam-environment-test
```

## ホストマシンで実験（通常のsam)

```sh
sam build
FOO_COMPOSE=set_console sam local start-api -n env.json
```

- 別ターミナルで

```sh
curl http://localhost:3000/hello
```

## dockerで実験

```sh
docker-compose up
```

- 別ターミナルで

```sh
curl http://localhost:3000/hello
```

- samの動作しているdockerで実行するときには

```sh
docker-compose exec sam curl http://localhost:3000/hello
```