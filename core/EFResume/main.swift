//
//  main.swift
//  EyreFree
//
//  Created by EyreFree on 2017/9/13.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  This file is part of EFResume.
//
//  EFResume is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  EFResume is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.

import Foundation

func main() {
    // 打开模板文件
    var templete = EFTemplete(path: EFPath.templete)

    // 填入内容
    input(templete: &templete)

    // 打开生成的简历文件
    let resume = EFFile(path: EFPath.resume)
    // 应用所填入的信息
    resume.content = templete.apply()
    // 保存
    resume.save()
}

func input(templete: inout EFTemplete) {
    // 资源路径
    templete.basePath.set("https://joneze.github.io/myResume/")

    // 页面属性
    templete.pageTitle.set("我的简历")
    templete.pageDescription.set("曾辉 的个人简历")

    // 基本信息
    templete.name.set("曾辉")
    templete.description.set("高级 iOS 开发")
    templete.basicInfo.set(
        [
            "基本信息": [
                "年龄：28",
                "性别：男",
                "城市：杭州"
            ],
            "联系方式": [
                "QQ：258720897",
                "邮箱：zenghui64@qq.com",
                "手机：13065701520"
            ],
            "社交账号": [
                "微博：" + "@小灰是蜗牛君".a(link: "https://weibo.com/snailroom"),
                "GitHub：" + "Joneze".a(link: "https://github.com/Joneze")
            ]
        ]
    )

    // 个人简介
    templete.information.set(
        [
            "目前就职于杭州聚米金融信息服务有限公司，主要负责\("聚米众筹".a(link: "https://itunes.apple.com/cn/app/聚米众筹/id1189019945?mt=8"))的开发、维护及小组管理工作，同时也负责\("影视头条".a(link: "https://itunes.apple.com/cn/app/影视头条/id932324391?mt=8") )的日常维护",
            "自 2014 年开始接触 iOS 开发，至今已有 3 年时间，熟练掌握 Objective-C 代码的编写，最近在尝试使用Swift来编写项目。熟悉大部分 iOS 开发与调试工具，理解 iOS App 结构与运行机制，注重代码质量与执行效率。",
            "了解常见移动 App 架构，长期使用 Objective-C 进行开发，熟悉各类常用第三方库的使用，目前正在尝试使用swift进行项目开发。",
            "熟悉 iOS 的开发与发布，了解怎样利用 CocoaPods 进行打包与集成。",
            "熟悉 Git Flow 工作流程，有较好的 Git 使用习惯。有良好的代码风格与清晰的文档结构，遵循团队开发规范。",
            "当前主要学习 Swift 语言，也会写一些简单的前端静态页面。",
            "寻觅一份 iOS 开发的全职正式工作。".strong()
        ]
    )

    // 技能专长
    templete.specialities.set(
        [
            "Swift": 20,
            "Objective-C": 70
        ]
    )

    // 技能评价
    templete.skillsList.set(
        [
            "iOS": 7,
            "Swift": 2,
            "Objective-C": 7,
            "HTML & CSS": 3,
            "Javascript": 3,
            "Markdown": 3,
            "Photoshop":5
        ]
    )
    templete.skillsDescription.set(
        [
            "有良好的代码编写规范，",
            "对应用工作机制较熟悉，",
            "有良好的程序开发能力，",
            "积攒了丰富的调试经验，",
            "热衷于用代码解决问题，",
            "熟练使用版本控制工具，",
            "关注科技行业前沿技术。"
        ]
    )

    // 社区经验
    templete.GitHubID.set("Joneze")
    templete.community.set(
        [
            "iOS": "开发、维护和推广 \("GitHub".a(link: "https://github.com/Joneze")) 上的 iOS 开源库。",
        ]
    )

    // 个人经验
    templete.experience.set(
        [
            "3": [
                "3 年 iOS 开发经验；",
                "了解移动开发原理;",
                "热衷 iOS 应用开发。"
            ],
            "4": [
                "4 工作经验；",
                "长期进行各种开发;",
                "熟悉各类开发工具调试的使用。"
            ]
        ]
    )

    // 项目经历
    templete.project.set(
        [
            [
                "category": "杭州聚米金融信息服务有限公司（2015.9 — 至今）",
                "pro_name": "iOS 团队开发和小组管理经验：聚米众筹",
                "pro_desc": [
                    "从聚米APP 1.0.0 上架 AppStore 开发和维护工作至今，从0开始，主要完成了新模块的开发、部分旧模块的重构、以及线上优化bug等工作；",
                    "作为聚米众筹 iOS 端小组负责人参与日常技术方案选型、业务迭代排期、线上异常监控、BUG 修复等工作；"
                ]
            ],
            [
                "category": "杭州仙豆科技有限公司（2014.05 — 2015.9）",
                "pro_name": "iOS 独立开发经验：瞬间-分享夜生活的吃喝玩乐社区APP，投否-面向风险投资用户，提供最前端优质创业团队信息服务APP",
                "pro_desc": [
                    "使用 Objective-C 完成整个 App 从无到有的开发、上架以及后续的升级维护工作，基本实现了一个信息分享 App 功能；"
                ]
            ],
            [
                "category": "杭州乐卓商贸有限公司（2013.09 — 2014.02）",
                "pro_name": "从事阿里巴巴国际站、速卖通、eBay国际电商业务员工作。",
                "pro_desc": [
                    "主要负责日常业务订单的处理、售前、售后的邮件回复",
                    "利用业余时间接触了iOS开发从此一发不可收拾。确定了未来职业发展方向 "
                ]
            ]
        ]
    )

    // 开源项目
    templete.openSource.set(
        [
            [
                "name": "Banner",
                "title": "ZHScrollView",
                "description": "ZHScrollView 是一个轻量级的、用来制作Banner 库，支持本地、网络图片设置，低耦合，使用简单。",
                "link": "https://github.com/Joneze/ZHScrollView"
            ]
        ]
    )

    // 扩展技能
    templete.interests.set(
        [
            "摄影": "fi-camera",
            "前端": "fi-html5",
            "PS": "fi-paint-bucket",
            "桌面": "fi-folder"
        ]
    )
}

main()
