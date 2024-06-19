# -*- encoding: utf-8 -*- 
from itertools import groupby
from datetime import datetime, timedelta
from odoo import api, fields, models, _
from odoo.exceptions import UserError
from odoo.tools import float_is_zero, float_compare, DEFAULT_SERVER_DATETIME_FORMAT
from odoo.tools.misc import formatLang
class mybase_fhtab_user(models.Model):
    _name = 'mybase.fhtab_user'
    _description = u'用户表'
    _rec_name='fhname'
    _order = 'id desc'    
	
    fhname=fields.Char(u'名称',readonly=False,required=False,translate=False)
    fhnpassword=fields.Char(u'密码',readonly=False,required=False,translate=False)
    fhmobile =fields.Char(u'手机号',readonly=False,required=False,translate=False)
    fhtype=fields.Selection([("0","启用"),("1","禁用")],u'状态',readonly=False,required=False,translate=False)
    # fhid =fields.Char(u'ID',readonly=False,required=False,translate=False)
    #
    # #fhrole = fields.Char(u'密码', readonly=False, required=False, translate=False)
    # #fhrole=fields.Many2many('mybase.fhtab_role',u'角色',readonly=False,required=False,translate=False)
    # fhrole=fields.Many2many('mybase.fhtab_role', 'mybase_fhtab_user_role_rel', 'user_id', 'role_id',string=u'角色', copy=False, readonly=False)
    #
    # fhmajor = fields.Many2one('mybase.fhtab_major', u'专业', readonly=False, required=False, translate=False)
    # fhgold_coin = fields.Float(u'金币', readonly=False, required=False, translate=False)
    # fhintegral = fields.Float(u'积分', readonly=False, required=False, translate=False)
    # fhanswer=fields.One2many('mybase.fhtab_subjectfhanswer','pay_id',string=u'选项',readonly=False,required=False,translate=False)
    @api.model
    def create(self, vals):
        result = super(mybase_fhtab_user, self).create(vals)	
        return result

    def write(self, values):
	    
        result = super(mybase_fhtab_user, self).write(values)		
		
        return result

    def unlink(self):
	
        return super(mybase_fhtab_user, self).unlink()

    def copy(self, default=None):
        return super(mybase_fhtab_user, self).copy(default)

    def search(self, args, offset=0, limit=None, order=None, context=None, count=False):
        domain =None		
        domain = [('state', '=', '0')]		
        return super(mybase_fhtab_user, self).search(args, offset=offset, limit=limit, order=order, count=count)

		
# mybase_fhtab_user() #对象定义结束
# class mybase_fhtab_subject_list(models.Model):
#     _name = 'mybase.fhtab_subjectfhanswer'
#     _description = u'题目笔记'
#     # _rec_name='FClass'
#     _order = 'id desc'
#     pay_id=fields.Many2one('mybase.fhtab_user',u'题目',readonly=False,required=False,translate=False)
#     fhitems=fields.Many2one('myappbase.fhitems',u'项目',readonly=False,required=False,translate=False)
#     fhitems_code =fields.Char(u'项目编码',related="fhitems.fhcoe",readonly=False,required=False,translate=False)
#     fhtime1 =fields.Datetime(u'开始时间',readonly=False,required=False,translate=False)
#     fhtime2 =fields.Datetime(u'结束时间',readonly=False,required=False,translate=False)
#     fhtype=fields.Selection([("0","启用"),("1","禁用")],u'状态',readonly=False,required=False,translate=False)
#     fhtype2=fields.Selection([("0","否"),("1","是")],u'是否永久',readonly=False,required=False,translate=False)
#     fhnote = fields.Text(u'备注', readonly=False, required=False, translate=False)
#     fhanswer_fhitem=fields.One2many('mybase.fhtab_subjectfhanswer_fhitem','pay_id',string=u'选项',readonly=False,required=False,translate=False)
#     @api.model
#     def fhcreate1(self,vals):
#         print("self.id:"+str(self.id))
#         print("vals:" + str(vals))
#         myproduct_fhtabrefund_audit=self.search([("id","=",vals[0])],limit=1)
#         result = myproduct_fhtabrefund_audit.write({"fhtype":'0'})
#         return result
#     @api.model
#     def fhcreate2(self,vals):
#         print("self.id:"+str(self.id))
#         print("vals:" + str(vals))
#         myproduct_fhtabrefund_audit=self.search([("id","=",vals[0])],limit=1)
#         result = myproduct_fhtabrefund_audit.write({"fhtype":'1'})
#         return result
# mybase_fhtab_subject_list()  # 对象定义结束
#
# class mybase_fhtab_subject_fhitem_list(models.Model):
#     _name = 'mybase.fhtab_subjectfhanswer_fhitem'
#     _description = u'题目笔记'
#     # _rec_name='FClass'
#     _order = 'id desc'
#     pay_id=fields.Many2one('mybase.fhtab_subjectfhanswer',u'题目',readonly=False,required=False,translate=False)
#     fhitems=fields.Many2one('myappbase.fhitems',u'项目',readonly=False,required=False,translate=False)
#     fhitems_code =fields.Char(u'项目编码',related="fhitems.fhcoe",readonly=False,required=False,translate=False)
#     fhtime1 =fields.Datetime(u'开始时间',readonly=False,required=False,translate=False)
#     fhtime2 =fields.Datetime(u'结束时间',readonly=False,required=False,translate=False)
#     fhtype=fields.Selection([("0","启用"),("1","禁用")],u'状态',readonly=False,required=False,translate=False)
#     fhtype2=fields.Selection([("0","否"),("1","是")],u'是否永久',readonly=False,required=False,translate=False)
#     fhnote = fields.Text(u'备注', readonly=False, required=False, translate=False)
#     @api.model
#     def fhcreate1(self,vals):
#         print("self.id:"+str(self.id))
#         print("vals:" + str(vals))
#         myproduct_fhtabrefund_audit=self.search([("id","=",vals[0])],limit=1)
#         result = myproduct_fhtabrefund_audit.write({"fhtype":'0'})
#         return result
#     @api.model
#     def fhcreate2(self,vals):
#         print("self.id:"+str(self.id))
#         print("vals:" + str(vals))
#         myproduct_fhtabrefund_audit=self.search([("id","=",vals[0])],limit=1)
#         result = myproduct_fhtabrefund_audit.write({"fhtype":'1'})
#         return result
# mybase_fhtab_subject_fhitem_list()  # 对象定义结束

