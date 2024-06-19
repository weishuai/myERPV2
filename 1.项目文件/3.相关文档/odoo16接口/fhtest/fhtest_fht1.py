# -*- encoding: utf-8 -*-
from datetime import datetime, timedelta
from odoo import SUPERUSER_ID
from odoo import api, fields, models, _
from odoo.exceptions import UserError
from odoo.tools import float_is_zero, float_compare, DEFAULT_SERVER_DATETIME_FORMAT
class fhtest_fht1(models.Model):
    _name = 'fhtest.fht1'
    _description = u'fht1'
    #_rec_name='FClass'
    _order = 'id desc'      
		
    fhname=fields.Char(u'fhname',readonly=False,required=False,translate=False)
    fhF1=fields.Integer(u'fhF1',readonly=False,required=False,translate=False)
    fhF2=fields.Float(u'fhF2',readonly=False,required=False,translate=False)
    fhF3=fields.Selection([('0',u'项目一'),('1',u'项目二')],u'fhF3',readonly=False,required=False,translate=False)
    fhF4=fields.Date(u'fhF4',readonly=False,required=False,translate=False)
    fhF5=fields.Many2one('product.product',u'fhF5',readonly=False,required=False,translate=False)
    fhF6=fields.Many2many('product.product','many2man_fhtest_fht1_fhf6_rel', 'uid', 'gid', u'fhF6',)
    fhF7=fields.One2many('fhtest.fht1fhf7','pay_id',string=u'fhF7',readonly=False,required=False,translate=False)
    def action_draft(self):
        print("self:" + str(self))
        return "ok"
    @api.model
    def mycreate001(self, vals):
        print("self:" + str(self))
        print("vals:"+ str(vals))
        return "ok"
    @api.model
    def mycreate002(self, vals):
        print("self:" + str(self))
        print("vals:"+ str(vals))
        return {
            'type': 'ir.actions.act_url',
            'url': "http://www.baidu.com",
            'target': 'main',
            'res_id': self.id,
        }
        # return "ok"

    def do_action_html(self):
        return {
            'type': 'ir.actions.act_url',
            'url': "http://www.baidu.com",
            'target': 'main',
            'res_id': self.id,
        }

    @api.model
    def mycreate003(self, vals):
        print("self:" + str(self))
        print("vals:" + str(vals))
        domain = []
        context = {}
        return {
            'name': "ok",
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'domain': domain,
            'context': context,
            'view_mode': 'tree,form',
            'res_model': 'account.account',
            'res_id': 2,
        }
    def action_read_account(self):
        self.ensure_one()
        domain = []
        context = {}
        return {
            'name': self.display_name,
            'type': 'ir.actions.act_window',
            'view_type': 'form',
            'view_mode': 'form',
            'domain': domain,
            'context': context,
            'view_mode': 'form',
            'res_model': 'account.account',
            'res_id': self.id,
        }

    @api.model		
    def create(self, vals):
        result = super(fhtest_fht1, self).create(vals)	
        return result

    def write(self, values):
	    
        result = super(fhtest_fht1, self).write(values)		
		
        return result

    def unlink(self):
	
        return super(fhtest_fht1, self).unlink()

    def copy(self, default=None):
        return super(fhtest_fht1, self).copy(default)

    def search(self, args, offset=0, limit=None, order=None, context=None, count=False):
        domain =None		
        domain = [('state', '=', '0')]		
        return super(fhtest_fht1, self).search(args, offset=offset, limit=limit, order=order, count=count)		
# fhtest_fht1() #对象定义结束
class fhtest_fht1fhF7(models.Model):
    _name = 'fhtest.fht1fhf7'
    _description = u'测试子表'
    pay_id=fields.Many2one('fhtest.fht1',u'fht1',required=True, ondelete='cascade', index=True, copy=False)
    fhname=fields.Char(u'fhname',readonly=False,required=False,translate=False)
    fhF1=fields.Integer(u'fhF1',readonly=False,required=False,translate=False)
    fhF2=fields.Float(u'fhF2',readonly=False,required=False,translate=False)
    fhF3=fields.Selection([('0',u'项目一'),('1',u'项目二')],u'fhF3',readonly=False,required=False,translate=False)
# fhtest_fht1fhF7()
