import click
from futu import *


@click.command()
@click.option('--addr', default='127.0.0.1', type=str)
@click.option('--port','-p', default=11111,  type=int)
@click.option("--ticket", '-t', default='HK.00700')
def main(addr: str, port: int, ticket: str):
    quote_ctx = OpenQuoteContext(host=addr, port=port)  # 创建行情对象
    print(quote_ctx.get_market_snapshot(ticket))  # 获取港股 HK.00700 的快照数据
    quote_ctx.close() # 关闭对象，防止连接条数用尽


if __name__ == '__main__':
    main()
