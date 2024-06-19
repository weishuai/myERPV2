# -*- coding: utf-8 -*-
import logging
from odoo import http
from odoo.api import call_kw, Environment
from odoo.http import content_disposition, dispatch_rpc, request, serialize_exception as _serialize_exception, Response
import json

import datetime
_logger = logging.getLogger(__name__)

# class DataSet(http.Controller):
#     def get_responseIDB(self, data=None):
#         response = request.make_response(data, [
#             ('Content-Type', 'application/x-www-form-urlencoded'),
#             ('Access-Control-Allow-Origin', '*'),
#             ('Access-Control-Max-Age', '1000'),
#         ])
#         return response
#     # @http.route('/web/dataset/exec_workflow', type='json', auth="user")
#     # def exec_workflow(self, model, id, signal):
#     #     return fhok
#     def _call_kw(self, model, method, args, kwargs):
#         #check_method_name(method)
#         return call_kw(request.env[model].sudo(), method, args, kwargs)
#     @http.route('/myweb/dataset/call_kw', csrf=False, type='http',auth="public", methods=['POST'],)
#     def call_kw(self,**post):
#         #print("mypost:")
#         fhpost=str(post)
#         fhok=fhpost[2:(len(fhpost) - 6)]
#         #print(fhok)
#         fhjosn=eval(fhok);
#         model=fhjosn.get("model")
#         method=fhjosn.get("method")
#         args=fhjosn.get("args")[0]
#         kwargs=fhjosn.get("kwargs")
#         kwargs =['name']
#         #print("ok:")
#         #print(model)
#         #print(method)
#         #print(args)
#         #print(kwargs)
#         # model= "fhtest.fht1"
#         # method= "mycreate003"
#         # args= [2]
#         kwargs={'context': {'lang': 'zh_CN', 'tz': 'Asia/Shanghai','uid':1,'params': {}}}
#         # #print("FHmodel:"+str(model))
#         # #print("FHkwargs:" + str(kwargs))
#         data=self._call_kw(model, method, args, kwargs)
#         response = self.get_responseIDB(data)
#         return response
# class Session(http.Controller):
#     def get_responseIDB(self, data=None):
#         response = request.make_response(data, [
#             ('Content-Type', 'application/x-www-form-urlencoded'),
#             ('Access-Control-Allow-Origin', '*'),
#             ('Access-Control-Max-Age', '1000'),
#         ])
#         return response
#     @http.route('/myweb/session/get_session_info', type='http', csrf=False,  auth="public",methods=['POST'],)
#     def get_session_info(self):
#         request.session.check_security()
#         request.uid = request.session.uid
#         request.disable_db = False
#         return request.env['ir.http'].session_info()
#
#     @http.route('/myweb/session/authenticate', type='http', csrf=False,  auth="public",methods=['POST'],)
#     def authenticate(self, **post):
#         db="FHERPodoo14_00002"
#         login= "admin"
#         password="admin"
#         request.session.authenticate(db, login, password)
#         response = self.get_responseIDB(request.env['ir.http'].session_info())
#         return response

class WebSettingsDashboard002 (http.Controller):

    def get_responseIDB(self, data=None):
        response = request.make_response(data, [
            ('Content-Type', 'application/x-www-form-urlencoded'),
            ('Access-Control-Allow-Origin', '*'),
            ('Access-Control-Max-Age', '1000'),
        ])
        return response
    def _call_kw(self, model, method, args, kwargs):
        return call_kw(request.env[model].sudo(), method, args, kwargs)

    @http.route('/Account/Accountlogin',  type='http',csrf=False,  auth="public", methods=['POST'], )
    def Accountlogin(self,**post):
        lself = http.request.env["mybase.fhtab_user"].sudo().search([("fhname","=",post.get("name")),("fhnpassword","=",post.get("password"))])
        lself_list= lself.sudo().read(["id"])
        data=str(lself_list)
        #print(data)
        response =self.get_responseIDB(data)
        return response

    @http.route('/myapi/model/mycall_kw', type='http', csrf=False, auth="public", methods=['POST'])
    def mycall_kw(self):
        model= "fhtest.fht1"
        method= "action_draft"
        args= [2]
        kwargs={'context': {'lang': 'zh_CN', 'tz': 'Asia/Shanghai','params': {}}}
        data=self._call_kw(model, method, args, kwargs)
        return str(data)

    @http.route('/myapi/model/search', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_search(self,**post):
        model = post.get("model")
        domain= post.get("domain")
        fields=post.get("fields")
        model= "fhtest.fht1"
        lself = http.request.env[model].sudo().search([("id","=",2)])
        # lself_list = lself.sudo().read(fields)
        data = str(lself)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        response = self.get_responseIDB(data)
        return response

    @http.route('/myapi/model/read', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_read(self,**post):
        model=post.get("model")
        domain = post.get("domain")
        domain=eval(domain)
        #print("myParams0" + str(post))
        pageIndex=int(post.get("Params[pageIndex]"))
        pageSize=int(post.get("Params[pageSize]"))
        recordIndex = int(post.get("Params[recordIndex]"))
        search = post.get("Params[search]")
        offset=recordIndex
        limit=pageSize
        domain=domain+[("fhname","ilike",search)]
        #print("offset"+str(offset))
        #print("limit" + str(limit))
        lself = http.request.env[model].sudo().search(domain,offset=offset,limit=limit,count=False,order="id desc")
        res1 = lself.read()

        for item in res1:
            for myitem in item:
                mytype=str(type(item[myitem]))
                if(mytype.find("datetime.date")>-1):
                    if(mytype.find("datetime.datetime")>-1):
                        item[myitem] = item[myitem].strftime('%Y-%m-%d %H:%M:%S')
                    else:
                        item[myitem]=item[myitem].strftime('%Y-%m-%d')
                if(mytype.find("tuple")>-1):
                    item[myitem] = {"id":item[myitem][0],"name":str(item[myitem][1])}

            pass

        data =str(res1)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        lself_count = http.request.env[model].sudo().search_count(domain)
        # print('{"count":lself_count,"mydata":data}')
        # print(str({"mylist":{"count":lself_count,"mydata":data}}))
        response = self.get_responseIDB(str({"mylist":{"count":lself_count,"mydata":data}}))
        return response
    @http.route('/myapi/model/read_count', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_read_count(self,**post):
        model=post.get("model")
        domain = post.get("domain")
        domain=eval(domain)
        search = post.get("Params[search]")
        domain=domain+[("fhname","ilike",search)]
        lself_count = http.request.env[model].sudo().search_count(domain)
        data =str(lself_count)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        #print("data")
        #print(data)
        response = self.get_responseIDB(data)
        return response
    @http.route('/myapi/model/read_byID', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_read_byID(self,**post):
        model=post.get("model")
        domain = post.get("domain")
        domain=eval(domain)

        lself = http.request.env[model].sudo().search(domain,count=False,order="id desc")
        res1 = lself.read()

        for item in res1:
            for myitem in item:
                mytype=str(type(item[myitem]))
                if(mytype.find("datetime.date")>-1):
                    if(mytype.find("datetime.datetime")>-1):
                        item[myitem] = item[myitem].strftime('%Y-%m-%d %H:%M:%S')
                    else:
                        item[myitem]=item[myitem].strftime('%Y-%m-%d')
                if(mytype.find("tuple")>-1):
                    # print("item[myitem]")
                    # print(item[myitem])
                    item[myitem] = {"id":item[myitem][0],"name":str(item[myitem][1])}

            pass
        #print("res1")
        #print(res1)
        data = str(res1)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        response = self.get_responseIDB(data)
        return response




    @http.route('/myapi/model/readTOP5', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_readTOP5(self,**post):
        model=post.get("model")
        domain = post.get("domain")
        domain=eval(domain)
        lself = http.request.env[model].sudo().search(domain,limit=10,order="id desc")
        res1 = lself.read()
        for item in res1:
            for myitem in item:
                mytype=str(type(item[myitem]))
                if(mytype.find("datetime.date")>-1):
                    if(mytype.find("datetime.datetime")>-1):
                        item[myitem] = item[myitem].strftime('%Y-%m-%d %H:%M:%S')
                    else:
                        item[myitem]=item[myitem].strftime('%Y-%m-%d')
                if(mytype.find("tuple")>-1):
                    item[myitem] = {"id":item[myitem][0],"name":str(item[myitem][1])}

        #print(res1)
        data = str(res1)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        response = self.get_responseIDB(data)
        return response

    @http.route('/myapi/model/create', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_create(self, **post):
        model = post.get("model")
        values= post.get("values")
        values=eval(values)
        lself = http.request.env[model].sudo().create(values)
        data = str(lself)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        response = self.get_responseIDB(data)
        return response


    @http.route('/myapi/model/update', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_update(self,**post):
        model = post.get("model")
        domain = post.get("domain")
        values = post.get("values")
        domain=eval(domain)
        values=eval(values)
        lself = http.request.env[model].sudo().search(domain,limit=1,order="id desc")
        lself_list=lself.write(values)
        data = str(lself_list)
        response = self.get_responseIDB(data)
        return response

    @http.route('/myapi/model/unlink', type='http', csrf=False, auth="public", methods=['POST'], )
    def fh_model_unlink(self,**post):
        model = post.get("model")
        domain = post.get("domain")
        domain=eval(domain)
        lself = http.request.env[model].sudo().search(domain)
        lself_list = lself.sudo().unlink()
        data = str(lself_list)
        data = data.replace("False", "false")
        data = data.replace("True", "true")
        response = self.get_responseIDB(data)
        return response
    @http.route('/myapi/model/product_product', type='http',csrf=False,  auth="public", methods=['POST'])
    def myapi_model_product_product(self,**post):

        fhsql1='select  tb1.id as id, tb2.name as name,tb1.default_code as default_code from product_product as tb1 left join product_template as tb2  on  tb1.product_tmpl_id=tb2.id'
        http.request._cr.execute(fhsql1)
        fhsqlok = http.request._cr.fetchall()
        http.request._cr.commit()
        data='['
        for item in fhsqlok:
            data=data+'{"id":"'+str(item[0])+'","name":"'+str(item[1])+'"},'
        data =data[0:len(data)-1]+']'
        #print(data)
        response = self.get_responseIDB(data)
        return response