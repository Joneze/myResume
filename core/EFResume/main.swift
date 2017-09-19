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
    templete.pageTitle.set("普通的简历")
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
            "熟悉 iOS 的开发与发布，了解怎样利用 CocoaPods 进行打包与集成，业余时间热爱编写开源代码。",
            "熟悉 Git Flow 工作流程，有较好的 Git 使用习惯。有良好的代码风格与清晰的文档结构，遵循团队开发规范。",
            "当前主要学习 Swift 语言，也会写一些简单的前端静态页面。",
            "寻觅一份 iOS 开发的全职正式工作。".strong()
        ]
    )

    // 技能专长
    templete.specialities.set(
        [
            "Swift": 30,
            "Objective-C": 70
        ]
    )

    // 技能评价
    templete.skillsList.set(
        [
            "iOS": 7,
            "Swift": 1,
            "Objective-C": 7,
            "HTML & CSS": 3,
            "Javascript": 3,
            "Markdown": 3
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
            "倾力于开源与技术分享，",
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
                "了解移动开发原理；",
                "热衷 iOS 应用开发。"
            ],
            "4": [
                "4 工作经验；",
                "长期进行各种开发；",
                "熟悉各类开发工具调试的使用。"
            ]
        ]
    )

    // 项目经历
    templete.project.set(
        [
            [
                "category": "聚米众筹（2016.9 — 至今）",
                "pro_name": "iOS 团队开发和小组管理经验：聚米众筹",
                "pro_desc": [
                    "从 1.0.0 上架 AppStore 开始参与开发和维护工作至今，主要完成了新模块的开发、部分旧模块的重构等工作；",
                    "作为聚米众筹 iOS 端小组负责人参与日常技术方案选型、业务迭代排期、线上异常监控、BUG 修复等工作；",
                    "维护物流 iOS 开发组 GitHub 组织，同时维护开发组技术博客。"
                ]
            ],
            [
                "category": "上海极塔客信息科技有限公司（2016.05 — 2016.12）",
                "pro_name": "iOS 独立开发经验：玛沙多拉-动漫周边代购商城，玛沙娘-表情包",
                "pro_desc": [
                    "使用 Swift 2.3 完成整个 App 从无到有的开发、上架以及后续的升级维护工作，基本实现了一个电商 App 功能；",
                    "研究 iOS 10 新特性，尝试开发了 iOS 表情包 App 并向公司提出建议，然后上架。"
                ]
            ],
            [
                "category": "无锡乐骐科技有限公司（2015.03 — 2016.05）",
                "pro_name": "iOS 维护和重构经验：智能证件照，KeepCap-人物相机，多来美发",
                "pro_desc": [
                    "从加入公司开始学习 iOS 开发，积累了一定的 iOS 开发和维护经验；",
                    "利用 Swift 2.3 独立对原有 App 进行了重构并完成上架。"
                ]
            ],
            [
                "category": "无锡力捷丰科技有限公司（2014.09 — 2015.01）",
                "pro_name": "VC 业务迭代和维护经验：力捷丰高速编程器/烧录器 PC 控制软件，力捷丰科技官方网站",
                "pro_desc": [
                    "利用 VS 等开发工具维护基于 MFC 的上位机控制软件；",
                    "利用 PS 等工具制作公司宣传单和其他材料；",
                    "利用 WordPress 搭建公司网站。"
                ]
            ]
        ]
    )

    // 开源项目
    templete.openSource.set(
        [
            [
                "name": "二维码",
                "title": "EFQRCode（1800+ Star）",
                "description": "EFQRCode 是一个轻量级的、用来生成和识别二维码的纯 Swift 库，可根据输入的水印图和图标产生艺术二维码，基于 CoreImage 进行开发。EFQRCode 为你提供了一种更好的在你的 App 中操作二维码的方式。",
                "link": "https://github.com/EyreFree/EFQRCode"
            ]
        ]
    )

    // 扩展技能
    templete.interests.set(
        [
            "翻译": "fi-pencil",
            "前端": "fi-html5",
            "设计": "fi-paint-bucket",
            "桌面": "fi-folder"
        ]
    )
}

main()
