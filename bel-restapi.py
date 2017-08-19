from flask import Flask, request
from flask_restful import Resource, Api
import pymysql
import json

#Open database connection
db = pymysql.connect("localhost","netdatanms","Netd4t@2017","netdatanms")

#Database cursor
cursor = db.cursor()
 
app = Flask(__name__)
api = Api(app)


class HostGroup(Resource):
	def get(self):
		cursor.execute('SELECT DISTINCT(`group`) FROM `inventory`')
		group_query = [i[0] for i in cursor.fetchall()]
		groups = {}
		for group in group_query:
			cursor.execute("SELECT `host` FROM `inventory` WHERE `group`='%s'" % (group))
			host = [n[0] for n in cursor.fetchall()] 
			groups[group] = {"hosts":host}
						
		return(groups)

class HostVars(Resource):
	def get(self):
		cursor.execute('SELECT DISTINCT(`host`) FROM `inventory`')		
		host_query = [h[0] for h in cursor.fetchall()]
		hosts = {}
		for host in host_query:
			cursor.execute("SELECT `username` FROM `inventory` WHERE `host`='%s'" % (host))
			user_query = [u[0] for u in cursor.fetchall()]
			cursor.execute("SELECT `password` FROM `inventory` WHERE `host`='%s'" % (host))
			pass_query = [p[0] for p in cursor.fetchall()]
			cursor.execute("SELECT `hostname` FROM `inventory` WHERE `host`='%s'" % (host))
			ip_query = [a[0] for a in cursor.fetchall()]

			hosts[host] = {
			"ansible_ssh_user": user_query,
			"ansible_ssh_pass": pass_query,
			"ansible_ssh_host": ip_query 
			}

		return(hosts)


api.add_resource(HostGroup, '/hostgroup')
api.add_resource(HostVars, '/hostvars')

if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0', port=8443)
