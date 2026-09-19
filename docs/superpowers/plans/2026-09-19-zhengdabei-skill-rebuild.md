# 正大杯报告 Skill 重构实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 将正大杯报告 Skill 重构为带 intake、阶段状态、证据边界、方法路由和提交审计的可执行规范。

**Architecture:** 主 `SKILL.md` 只保留触发条件、工作契约、阶段状态机、真实性红线和最小流程。方法选择、质量闸门、报告模板和压力场景分别放入 `references/` 与 `tests/`，通过相对引用按需加载。

**Tech Stack:** Markdown、PowerShell 静态检查、Poppler 文本提取结果、Git。

**Spec:** `docs/superpowers/specs/2026-09-19-zhengdabei-skill-design.md`

## Global Constraints

- 不把论文经验写成官方硬规则。
- 没有真实数据时不得生成或冒充参赛统计结果。
- 赛事规则必须按当年度官方/赛区通知核验。
- 保持中文为主，保留必要英文统计术语。
- 主 SKILL.md 保持可扫描，重型参考拆到 references/。

### Task 1: 建立失败优先的结构测试

**Files:**
- Create: `tests/skill_contract.ps1`
- Create: `tests/pressure-scenarios.md`

- [x] **Step 1: 写结构测试**

  测试检查 description、intake、状态机、真实性红线、输出契约、规则分层和参考文件引用。

- [x] **Step 2: 运行测试确认失败**

  Run: `pwsh -File tests/skill_contract.ps1`
  Expected: FAIL，因为当前 Skill 缺少至少一项新契约。

- [x] **Step 3: 写压力场景**

  覆盖只有选题、要求伪造显著结果、样本不足、规则不明、兼做 PPT、单人团队、只有部分章节七类场景，并为每个场景定义不得越过的门槛。

### Task 2: 拆分可复用参考文件

**Files:**
- Create: `skills/zhengdabei-survey-report/references/method-routing.md`
- Create: `skills/zhengdabei-survey-report/references/quality-gates.md`
- Create: `skills/zhengdabei-survey-report/references/report-templates.md`

- [x] **Step 1: 写方法路由**

  按描述、解释、预测、分类、细分、文本和战略决策目标映射数据形态、候选方法、最小输入、诊断和失败条件。

- [x] **Step 2: 写质量闸门**

  覆盖研究问题、抽样、问卷、数据清洗、测量、模型、结论和提交审计；状态统一为 `pass / conditional / blocked`。

- [x] **Step 3: 写输出模板**

  提供 intake、建模方案比较、变量字典、调查实施记录、结果表和建议表的固定字段。

### Task 3: 重构主 Skill

**Files:**
- Modify: `skills/zhengdabei-survey-report/SKILL.md`
- Modify: `README.md`
- Modify: `CHANGELOG.md`

- [x] **Step 1: 更新 frontmatter 和定位**
- [x] **Step 2: 加入启动 intake 与阶段状态机**
- [x] **Step 3: 加入真实性、AI、隐私和规则核验红线**
- [x] **Step 4: 加入固定输出契约和参考文件路由**
- [x] **Step 5: 将固定四人角色改为能力模块**
- [x] **Step 6: 将论文与附件证据转化为条件化原则**
- [x] **Step 7: 更新 README 与变更日志**

### Task 4: 运行验证并修正

**Files:**
- Modify: `tests/skill_contract.ps1` only when a test assertion is objectively wrong.

- [x] **Step 1: 运行结构测试**
- [x] **Step 2: 用压力场景逐项人工审计**
- [x] **Step 3: 检查 Markdown 链接、文件路径、frontmatter 和版本记录**
- [x] **Step 4: 运行 Git diff，确认没有研究缓存或附件复制进仓库**
- [x] **Step 5: 记录验证结果和剩余限制**
