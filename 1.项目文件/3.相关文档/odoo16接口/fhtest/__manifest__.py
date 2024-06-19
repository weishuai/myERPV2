# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.

{
    'name': '秋风流云',
    'version': '1.1',
    'summary': 'Inventory, Logistics, Warehousing',
    'description': """
	秋风流云(154363268)
    """,
    'website': '',
    'depends': ["base","hr"],
    'category': '秋风流云(154363268)',
    'sequence': 13,
    'demo': [

    ],
    'data': [
	    #'wizard/tb_ceshi001_ceshi_view.xml',	
        'fhtest_fht1.xml',
        #'TB_workflow.xml',		
    ],
    'test': [
    ],
    'installable': True,
    'application': True,
    'auto_install': False,
}
