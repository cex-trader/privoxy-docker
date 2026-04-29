# Privoxy Docker

基于 Alpine 的轻量级 Privoxy HTTP/SOCKS5 代理 Docker 容器。

## 快速开始

### 构建并启动

```bash
docker compose up -d
```

### 构建镜像

```bash
docker build -t privoxy .
```

## 环境变量

| 变量名 | 说明 | 默认值 |
|--------|------|--------|
| `LISTEN_ADDRESS` | 监听地址和端口 | `0.0.0.0:8118` |
| `FORWARD_SOCKS5` | 上游 SOCKS5 代理地址 | `192.168.1.2:1080` |

### 自定义环境变量

#### 方式一：修改 docker-compose.yml

```yaml
environment:
  - LISTEN_ADDRESS=0.0.0.0:8118
  - FORWARD_SOCKS5=your-proxy:1080
```

#### 方式二：使用 .env 文件

创建 `.env` 文件：

```env
LISTEN_ADDRESS=0.0.0.0:8118
FORWARD_SOCKS5=your-proxy:1080
```

#### 方式三：直接传参

```bash
docker run -e FORWARD_SOCKS5=your-proxy:1080 -p 8118:8118 privoxy
```

## 访问控制

默认允许所有 IP 访问：

```
permit-access 0.0.0.0/0
```

如需限制访问，可修改 `privoxy.conf.template` 中的 `permit-access` 配置。

## 使用示例

构建完成后，其他服务可通过 `privoxy:8118` 使用 HTTP 代理。

## License

MIT
