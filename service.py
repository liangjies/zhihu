# coding:utf-8
import flask, json
from flask import request
from flask import Flask, Response
import pymysql
import requests
from bs4 import BeautifulSoup
import re

'''
flask： web框架，通过flask提供的装饰器@server.route()将普通函数转换为服务
'''
# 创建一个服务，把当前这个python文件当做一个服务
server = flask.Flask(__name__)
# server.config['JSON_AS_ASCII'] = False
# @server.route()可以将普通函数转变为服务 登录接口的路径、请求方式
def get(url):
	# Referer
	referer = "http://www.zhihu.com/"
	# 浏览器及版本
	user_agent = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'

	# 将cookie转为字典
	def get_cookie():
		with open("cookie.txt") as f:
			cookies = {}
			for line in f.read().split(';'):
				name, value = line.strip().split('=', 1)
				cookies[name] = value
			return cookies

	# 配置Session的参数
	session = requests.Session()
	session.headers['User-Agent'] = user_agent
	session.headers['Referer'] = referer
	session.cookies = requests.utils.cookiejar_from_dict(get_cookie())
	response = session.get(url)
	
	return response

def processing(question, answer, url):
	response = get(url)
	soup = BeautifulSoup(response.text, 'html.parser')
	title = soup.title.string
	try:
		main = soup.main
		content = str(main)
		imgs = main.find_all(name="img", attrs={"data-actualsrc":re.compile(r"http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+")})
		for img in imgs:
			content = content.replace(str(img), "");
		
		 
		content = content.replace("<noscript>", "");
		content = content.replace("</noscript>", "");
	except:
		return False
	
	return insert_data(question, answer, title, content)


def insert_data(question, answer, title, content):
	# 连接database
	conn = pymysql.connect(
		host="127.0.0.1",
		user="zhihu",
		password="123456",
		database="zhihu",
		charset="utf8")
	 
	# 得到一个可以执行SQL语句的光标对象
	cursor = conn.cursor()  # 执行完毕返回的结果集默认以元组显示
	# 得到一个可以执行SQL语句并且将结果作为字典返回的游标
	#cursor = conn.cursor(cursor=pymysql.cursors.DictCursor)
	 
	# 定义要执行的SQL语句
	sql = "insert into zhihu.zhihu(question, answer, title, content) values (%s, %s, %s, %s)"
	try:
		# 执行SQL语句
		rows = cursor.execute(sql, [question, answer, title, content])
		# 执行sql语句
		conn.commit()
	except:
		# 发生错误时回滚
		conn.rollback()
	# 关闭光标对象
	cursor.close()
	 
	# 关闭数据库连接
	conn.close()
	if rows:
		return True
	else:
		return False
	
@server.route('/spyder', methods=['get', 'post'])
def accept():
    # 获取通过url请求传参的数据
    question = request.values.get('question')
    answer = request.values.get('answer')
    url = request.values.get('url')
    # 判断url不为空，如果不传url为None
    print(answer,question,url)
    if url and question and answer:
        if processing(question, answer, url):
            resu = {'code': 200, 'message': '更新成功'}
            return Response(json.dumps(resu, ensure_ascii=False), content_type='application/json')
        else:
            resu = {'code': -1, 'message': '更新失败'}
            return Response(json.dumps(resu, ensure_ascii=False), content_type='application/json')
    else:
        resu = {'code': 10001, 'message': '参数不能为空！'}
        return Response(json.dumps(resu, ensure_ascii=False), content_type='application/json')
		
 
if __name__ == '__main__':
    server.run(debug=True, port=8102, host='0.0.0.0')# 指定端口、host,0.0.0.0代表不管几个网卡，任何ip都可以访问