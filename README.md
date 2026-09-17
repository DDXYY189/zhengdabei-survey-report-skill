# zhengdabei-survey-report

一个面向「正大杯」全国大学生市场调查与分析大赛的 **AI 写作 Skill**。基于四人团队角色分工，在**已提供选题**的前提下，帮助完成从研究设计到成文的整篇参赛报告（论文），涵盖建模方案多选、问卷人工收集、信效度质量判定、报告集成与终审合规等完整流程。

> 本 Skill **不含** PPT 制作与答辩环节（由配套的其它 Skill 负责）；选题开发由独立的选题 Skill 负责。

## 功能特性

- 🧑‍🤝‍🧑 **四人角色分工**：编程数据求解、建模套用、排版美工、文稿润色，各司其职又相互协作。
- 🏆 **对齐国赛获奖规律**：研读 10+ 篇国赛获奖/优秀报告，内置标准章节结构模板、建模方法库映射、加分规律。
- 🎯 **建模方案多选**：Agent 根据选题自动给出 3~5 套建模方案，说明适用前提、数据形态、求解软件与检验判据，供队伍权衡选择。
- 📚 **统计建模方法库**：覆盖 SEM、PLS-PM、Logit、聚类、IPA、模糊综合评价、AHP、灰色关联、随机森林、LDA 文本挖掘，以及联合分析、KANO、NPS、RFM、DEA、BP 神经网络、Heckman 等差异化方法，各自解决什么问题与适用数据形态。
- 📋 **问卷质量判定**：问卷收集须人工执行；收集后执行信效度检验（Cronbach's α、KMO、Bartlett、因子载荷、模型拟合指标），并给出合格/临界/不合格的明确结论与修正建议。
- ✅ **合规红线内置**：匿名要求、字数/页数上限、查重、中国标准地图、正文/附录分开提交等。

## 目录结构

```
zhengdabei-survey-skill/
├── skills/
│   └── zhengdabei-survey-report/
│       └── SKILL.md          # Skill 本体（安装时使用）
├── docs/
│   └── CONTRIBUTING.md       # 贡献指南
├── assets/                   # 示例/图片资源占位
├── README.md                 # 本文件
├── LICENSE                   # MIT License
├── CHANGELOG.md              # 版本变更记录
├── .gitignore
├── .gitattributes
└── .trae/skills/...          # （可选）TRAE 本地安装路径
```

## 开始使用

### 前提

- 使用支持 **Skills / MCP** 机制的 AI 环境（如 TRAE 等）。
- 参赛团队已确定选题（本 Skill 不做选题开发）。

### 安装

将仓库中的 `skills/zhengdabei-survey-report/SKILL.md` 复制到你的 Skill 目录：

```bash
# 示例（TRAE 工作区）
mkdir -p .trae/skills/zhengdabei-survey-report
cp skills/zhengdabei-survey-report/SKILL.md .trae/skills/zhengdabei-survey-report/
```

不同平台/脚手架的 Skill 目录可能不同，请以你所用的工具为准。

### 使用

提供选题后，向 AI 发起请求即可，例如：

> 我们的选题是「……」，请按团队四人分工与九步流程，完成参赛报告的【研究设计与建模方案】部分，并给出 3~5 套建模方案。

## 报告九步流程

1. 方案规划（确定问题、分工、大框架）
2. 文献与文案研究（理论框架、创新点、多数据源规划、技术路线图）
3. 研究设计 + 建模方案多选 + 问卷设计
4. 问卷收集（人工执行）
5. 信度效度检验与问卷质量判定（Cronbach α、KMO、Bartlett、模型拟合指标）
6. 数据分析与建模（描述统计 → 模型实证，每类数据单独成章）
7. 结论与建议（分主体、对应结论）
8. 报告集成与格式（标准章节结构模板、三线表、路径图）
9. 终审与提交（匿名/查重/页数合规）

## License

[MIT](LICENSE) © 正大杯 survey skill 团队

## 版本

当前：**v1.2.0**（研读 10+ 篇国赛论文 + 18 篇补充论文后的实战升级版）。文件为可演进版本，后续将持续迭代。