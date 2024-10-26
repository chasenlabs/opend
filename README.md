# Futu OpenD

using docker to run Futu OpenD

- [OpenAPI](https://www.futunn.com/OpenAPI)


```shell
docker pull ghcr.io/chasenlabs/futu-opend:latest
```

## Configuration

run command in docker container, or see [Futu API](https://openapi.futunn.com/futu-api-doc/opend/opend-cmd.html#8799)

```shell
cat FutuOpend.xml
```

md5 your password

```shell
md5 -s <your_password>
```

## Example

**Using docker-compose start**

启动之前请配置运行参数[docker-compose.yml](docker-compose.yml)

start before config [docker-compose.yml](docker-compose.yml)

```shell
docker-compose up
```

**输入手机验证码/Enter mobile phone verification code**, [docs is here](https://openapi.futunn.com/futu-api-doc/opend/opend-operate.html#815)
```shell
docker exec -it futu-opend bash
# syntax: telnet <addr> <telnet port>
telnet 127.0.0.1 22222
input_phone_verify_code -code=<code>
```

**Prepare**
```shell
pip install -r requirements.txt
# if you located in China, you can use aliyun mirror to speed up
pip install -r requirements.txt  -i https://mirrors.aliyun.com/pypi/simple/
```

**get data with main.py**
```shell
python main.py --addr <futu opend ip>
```

## Support

If you like this project, please consider supporting me for coffee ☕️

[![Buy Me A Coffee](https://img.shields.io/badge/buy%20me%20-coffee-%2322BC18.svg)](https://www.buymeacoffee.com/chasengao) [![get youtself link](https://img.shields.io/badge/get%20youtself%20link-buymeacoffee-orange.svg)](https://www.buymeacoffee.com/invite/chasengao)
