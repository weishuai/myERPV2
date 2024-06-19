# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.

from odoo import tools
from odoo import api, fields, models


class myappbase_fhtab_subject_view2(models.Model):
    _name = "myappbase.fhtab_subject_view2"
    _description = "科目"
    _auto = False
    _rec_name = 'complete_name'
    _order = 'id asc'
    id=fields.Integer(u'图片',readonly=False,required=False,translate=False)
    fhname=fields.Char(u'名称',readonly=False,required=False,translate=False)
    parent_id=fields.Many2one('myappbase.fhtab_subject_view2',u'上级科目',readonly=False,required=False,translate=False)
    fhmajor =fields.Many2one('mybase.fhtab_major',u'专业', readonly=False, required=False, translate=False)
    complete_name = fields.Char('名称', compute='_compute_complete_name')
    @api.depends('fhname', 'parent_id.complete_name')
    def _compute_complete_name(self):
        for subject in self:
            if subject.parent_id:
                subject.complete_name = '%s / %s' % (subject.parent_id.complete_name, subject.fhname)
            else:
                subject.complete_name = subject.fhname

    def name_get(self):
        if not self.env.context.get('hierarchical_naming', True):
            return [(record.id, record.fhname) for record in self]
        return super(myappbase_fhtab_subject_view2, self).name_get()

    @api.model
    def name_create(self, name):
        return self.create({'fhname': name}).name_get()[0]
    #@api.model_cr
    def init(self):
        tools.drop_view_if_exists(self.env.cr, self._table)
        self.env.cr.execute("""CREATE or REPLACE VIEW %s as (
                   SELECT 10000+s."id" as "id",
                    s."fhname" as "fhname",
                    s."fhsuperior" as "parent_id",				
                    NULL as "fhmajor"  FROM mybase_fhtab_major as s       
                    union all
                    SELECT l."id" as "id",
                    l."fhname" as "fhname",
                    CASE WHEN l."fhsuperior" IS NOT NULL THEN l."fhsuperior" ELSE 10000+l."fhmajor" END  as "parent_id",				
                    l."fhmajor" as "fhmajor"  FROM mybase_fhtab_subject2 as l  
                    GROUP BY "id"					
            )""" % (self._table))
