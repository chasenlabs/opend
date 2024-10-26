# Futu OpenD

using docker to run Futu OpenD

- [OpenAPI](https://www.futunn.com/OpenAPI)

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

**prepare**
```shell
pip install -r requirements.txt
# if you located in China, you can use aliyun mirror to speed up
pip install -r requirements.txt  -i https://mirrors.aliyun.com/pypi/simple/
```

**输入手机验证码/Enter mobile phone verification code**, [docs is here](https://openapi.futunn.com/futu-api-doc/opend/opend-operate.html#815)
```shell
telnet <addr> <telnet port>
input_phone_verify_code -code=<code>
```

**get data with main.py**
```shell
python main.py --addr <futu oepnd ip>
```

## Support

If you like this project, please consider supporting me for coffee ☕️

[![Buy Me A Coffee](https://img.shields.io/badge/buy%20me%20-coffee-%2322BC18.svg)](https://www.buymeacoffee.com/chasengao) [![get youtself link](https://img.shields.io/badge/get%20youtself%20link-buymeacoffee-orange.svg)](https://www.buymeacoffee.com/invite/chasengao)
