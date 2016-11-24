<?php

return [
    /*
    |--------------------------------------------------------------------------
    | 会员中心头部合相关左侧菜单
    | 一级：会员类型；二级：顶部菜单；三级：顶部菜单的左侧菜单
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 短信配置
    |
    */
    'media' => [
        'center' => [
            'name' => '个人中心',
            'url'  => 'member.index.index',
            'child' => [
                '0' => [
                    'name' => '基本信息',
                    'url' => 'member.index.index',
                ],
                '1' => [
                    'name' => '修改密码',
                    'url' => 'member.index.password',
                ],
            ],
        ],
        'order' => [
            'name' => '活动订单',
            'url' => 'member.index.index',
            'child' => [
                '0' => [
                    'name' => '基本信息',
                    'url' => 'member.index.index',
                ],
                '1' => [
                    'name' => '修改密码',
                    'url' => 'member.index.index',
                ],
            ],
        ],
        'account' => [
            'name' => '账户查询',
            'url' => 'member.account.index',
            'child' => [
                '0' => [
                    'name' => '我的账户',
                    'url' => 'member.account.index',
                ],
                '1' => [
                    'name' => '收支记录',
                    'url' => 'member.account.records',
                ],
                '2' => [
                    'name' => '提现记录',
                    'url' => 'member.account.notes',
                ],
            ],
        ],
        'star' => [
            'name' => '资源管理',
            'url' => 'member.index.index',
            'child' => [
                '0' => [
                    'name' => '新增媒体',
                    'url' => 'member.index.index',
                ],
                '1' => [
                    'name' => '媒体管理',
                    'url' => 'member.index.index',
                ],
            ],
        ],

    ],
    'ads' => [
        'center' => [
            'name' => '个人中心',
            'url'  => 'member.index.index',
            'child' => [
                '0' => [
                    'name' => '基本信息',
                    'url' => 'member.index.index',
                ],
                '1' => [
                    'name' => '修改密码',
                    'url' => 'member.index.password',
                ],
            ],
        ],
        'order' => [
            'name' => '活动订单',
            'url' => 'member.index.index',
            'child' => [
                '0' => [
                    'name' => '基本信息',
                    'url' => 'member.index.index',
                ],
                '1' => [
                    'name' => '修改密码',
                    'url' => 'member.index.index',
                ],
            ],
        ],
        'task' => [
            'name' => '派单大厅',
            'url' => 'member.task.index',
            'child' => [
                '0' => [
                    'name' => '新增派单',
                    'url' => 'member.task.create',
                ],
                '1' => [
                    'name' => '我的派单',
                    'url' => 'member.task.index',
                ],
            ],
        ],
        'account' => [
            'name' => '账户查询',
            'url' => 'member.account.index',
            'child' => [
                '0' => [
                    'name' => '我的账户',
                    'url' => 'member.account.index',
                ],
                '1' => [
                    'name' => '收支记录',
                    'url' => 'member.account.records',
                ],
                '2' => [
                    'name' => '提现记录',
                    'url' => 'member.account.notes',
                ],
            ],
        ],
    ],


];
