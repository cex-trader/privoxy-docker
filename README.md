# Privoxy Docker

基于 Alpine 的轻量级 Privoxy HTTP/SOCKS5 代理 Docker 容器。

## 快速开始

1. 复制环境变量模板并修改：

```bash
cp .env.example .env
```

2. 编辑 `.env` 文件，设置你的代理地址：

```env
LISTEN_ADDRESS=0.0.0.0:8118
FORWARD_SOCKS5=your-socks5-proxy:1080
```

3. 启动：

```bash
docker compose up -d
```

## 环境变量

| 变量名 | 说明 | 默认值 |
|--------|------|--------|
| `LISTEN_ADDRESS` | 监听地址和端口 | `0.0.0.0:8118` |
| `FORWARD_SOCKS5` | 上游 SOCKS5 代理地址 | `192.168.1.2:1080` |

## 使用示例

构建完成后，其他服务可通过 `privoxy:8118` 使用 HTTP 代理。

## License

MIT
