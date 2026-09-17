# 贡献指南 (Contributing)

感谢你愿意为 `zhengdabei-survey-report` Skill 贡献改进！本文档说明如何参与。

## 贡献方式

- 🐛 **报告问题**：在 Issues 中说明问题现象、复现步骤与环境。
- 💡 **建议功能**：说明使用场景、期望行为与当前痛点。
- 🔧 **提交改进**：修改后发起 Pull Request。

## 开发分支与版本

- 主分支：`main`，始终保持可发布状态。
- 功能分支：`feature/<描述>`，开发中。
- 版本标签：遵循 `vMAJOR.MINOR.PATCH`（见 [CHANGELOG](./CHANGELOG.md)）。

## 本地流程

1. Fork 本仓库并 clone 到本地。
2. 新建功能分支。
3. 修改 `skills/zhengdabei-survey-report/SKILL.md`，遵循其自身结构（frontmatter `name`/`description`、角色、流程、边界说明）。
4. 若改动影响使用说明，同步更新 `README.md` 与 `CHANGELOG.md`。
5. 提交并发起 PR，说明改动原因与验证方式。

## 规范约定

- description 需同时说明"做什么"与"何时调用"，控制在合理长度。
- 内容保持**可复用、不含敏感数据**（不得出现真实问卷数据、用户隐私、密钥）。
- 保持中文为主要语言，术语可保留英文原词。

## 行为准则

友善、尊重、建设性的交流；针对代码/内容，而非针对人。