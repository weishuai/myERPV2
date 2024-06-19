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
        # 'security/ir.model.access.csv',
        # 'security/fh_security.xml',
        # 'mybase_fhtab_subject.xml',
        # 'mybase_fhtab_subject2.xml',
        # 'mybase_fhtab_major.xml',
        # 'mybase_fhtab_role.xml',
        'mybase_fhtab_user.xml',
        # 'myappbase_fhitems.xml',
        'menuitems.xml',
    ],
    'test': [
    ],
    'installable': True,
    'application': True,
    'auto_install': False,
}
