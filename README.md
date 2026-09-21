# 正大杯市场调查与分析报告 Skill

这是一个面向“正大杯”全国大学生市场调查与分析大赛的研究报告 Skill。它把研究问题、调查设计、真实数据、统计方法、结论建议和提交审计串成一个可追溯工作流。

它适合用于：

- 已确定选题后的市场调查报告、论文和研究方案；
- 问卷、抽样、访谈、评论文本和二手数据设计；
- 数据清洗、方法选择、统计建模和结果解释；
- 报告正文、附录、AI 使用说明和赛前质量审计。

它不默认负责选题开发、PPT、答辩稿或答辩视频。需要这些内容时，应另行启动相应的演示或答辩工作流。

## 1. 快速开始

### 安装方式 A：从 GitHub 克隆

```powershell
git clone https://github.com/DDXYY189/zhengdabei-survey-report-skill.git
```

进入仓库后，Skill 主文件位于：

```text
skills/zhengdabei-survey-report/SKILL.md
```

### 安装方式 B：复制到 Codex Skill 目录

如果运行环境不会自动扫描当前仓库，请将整个目录复制到用户 Skill 目录。Windows PowerShell 示例：

```powershell
$target = Join-Path $env:USERPROFILE '.codex\skills\zhengdabei-survey-report'
New-Item -ItemType Directory -Force $target | Out-Null
Copy-Item -Recurse -Force `
  '.\skills\zhengdabei-survey-report\*' `
  $target
```

安装后应至少存在：

```text
<skill-root>/zhengdabei-survey-report/SKILL.md
<skill-root>/zhengdabei-survey-report/references/method-routing.md
<skill-root>/zhengdabei-survey-report/references/quality-gates.md
<skill-root>/zhengdabei-survey-report/references/report-templates.md
<skill-root>/zhengdabei-survey-report/references/text-analysis.md
<skill-root>/zhengdabei-survey-report/references/visualization-guide.md
```

兼容其他 Agent 运行时时，使用其文档规定的用户 Skill 目录；不要只复制 `SKILL.md`，否则参考文件链接会失效。

### 安装后检查

```powershell
$p = Join-Path $env:USERPROFILE '.codex\skills\zhengdabei-survey-report\SKILL.md'
Test-Path $p
Get-Content -TotalCount 8 $p
```

检查结果应满足：

- 文件存在且可以读取；
- frontmatter 含 `name: zhengdabei-survey-report`；
- `description` 以 `Use when...` 开头；
- `references/` 与主文件位于同一 Skill 目录；
- 新会话中能够按“正大杯报告、市场调查论文、问卷建模、调查报告审计”等关键词发现它。

本项目不需要安装 Python、Node、SPSS 或 Stata 才能加载 Skill。它们只在实际分析数据时按所选方法和团队环境单独准备。

## 2. 如何启动

首次使用时，不要只说“帮我写一篇正大杯论文”。请至少提供选题、对象和当前阶段，让 Skill 先建立 Intake。

### 最小启动示例

```text
请使用 zhengdabei-survey-report Skill。

选题：大学生对预制菜的购买意愿与风险认知
研究对象：武汉市在校大学生
当前阶段：只有初步想法，没有问卷和数据
比赛年份/组别/赛区：待确认
希望本轮完成：研究问题、变量框架和 3 套可选建模方案
```

### 完整启动模板

```text
选题：
研究对象/总体：
地域与时间：
比赛年份/组别/赛区：
截止时间：
当前阶段：方案 / 问卷 / 预调查 / 正式调查 / 清洗 / 分析 / 写作 / 提交审计
已有数据与来源：
计划获取的数据：
团队人数与能力模块：
已核验的官方规则链接或文件：
本轮希望交付：
```

如果选题、研究对象或当前阶段缺失，Skill 应先提问，不应直接生成正式报告或统计结果。

## 3. 工作流和阶段

Skill 使用以下阶段状态机：

```text
intake
  → question_design
  → evidence_review
  → instrument_sampling
  → pilot_quality
  → fieldwork
  → cleaning
  → analysis
  → synthesis
  → report_qa
  → submission_qa
```

每轮响应都应说明：

1. 已确认事实；
2. 缺失证据；
3. 本轮交付物；
4. 下一道质量闸门；
5. 当前不能越过的限制。

没有真实数据时，最多推进到问卷、抽样和分析计划；可以生成代码骨架或模拟示例，但必须标注“示例/模拟，不得作为参赛结果”。

已有问卷、数据或部分章节时，应从当前阶段继续，先做审计和补缺，不要覆盖用户已有成果。

## 4. 建议准备哪些材料

### 研究材料

- 选题说明、研究背景和目标对象；
- 当年度组委会通知、赛区通知和提交模板；
- 已找到的论文、政策文件、行业报告和企业资料；
- 研究问题、假设或初步变量表。

### 调查材料

- 问卷草稿和题目来源；
- 抽样框、渠道、配额和样本量计划；
- 访谈提纲、焦点小组方案或观察记录表；
- 预调查记录、调查员培训说明和调查进度。

### 数据材料

- 原始或脱敏数据；
- 数据字典和变量编码表；
- 缺失值、重复、异常值和无效问卷处理规则；
- 分析脚本、软件版本和已有输出表；
- 评论文本的来源、时间范围、采集方式和授权/合规说明。

如果只有 PDF、PPT、问卷或报告草稿，也可以先要求“材料审计”，不必一次提供全部数据。

## 5. 输出会是什么样

### 建模方案

每个方案都应包含：

```text
方案名称：
回答的研究问题：
因变量与自变量：
所需题项/数据形态：
样本与抽样前提：
分析步骤与软件：
诊断与稳健性检查：
失败条件与降级方案：
结果如何转成行动：
推荐等级：主方案 / 备选 / 暂不采用
```

### 质量状态

所有关键环节使用三种状态：

- `pass`：证据充分，可以进入下一阶段；
- `conditional`：可以探索性使用，但必须写限制、敏感性或降级方案；
- `blocked`：关键证据或规则缺失，不能生成正式结论。

### 结论和建议

结论采用：`研究问题 + 数据/表图 + 结果 + 限制`。

建议采用：`证据 → 责任主体 → 具体动作 → 资源/前提 → 时间 → 衡量指标`。

“加强宣传”“提升质量”“扩大投入”这类没有对象、步骤和指标的句子不能作为最终建议。

## 6. 方法选择原则

方法不是越多越好。先确定目标，再看数据和资源，最后选择能够回答问题且可解释的方法。

常见目标与方法包括：

| 目标 | 方法示例 |
|---|---|
| 描述现状 | 频数、比例、均值/中位数、交叉分析、可视化 |
| 解释影响因素 | 相关、线性回归、Logit、有序模型 |
| 比较或细分人群 | t/ANOVA、非参数检验、聚类、对应分析 |
| 测量潜变量和作用路径 | EFA、CFA、SEM、PLS-PM |
| 分析文本 | 内容分析、词频/TF-IDF、情感、LDA、共现网络 |
| 产品和服务优化 | IPA、KANO、联合分析、NPS、漏斗、关联规则 |
| 产业和战略决策 | SWOT/PEST、情景分析、DEA、时间序列 |

具体的输入要求、诊断方法和失败条件见 [方法路由](skills/zhengdabei-survey-report/references/method-routing.md)。

### 文本分析和词云是条件能力

不是所有选题都需要词云。只有在存在真实、相关、可追溯且合规的开放题回答、访谈记录、评论或其他文本语料时，才启用文本分析；只有结构化问卷而没有文本字段时，应明确记录“词云不适用”，不要为了增加图表而制作词云。

启用后应按“来源与授权 → 抽样与去重 → 清洗分词 → 词频/TF-IDF/n-gram → 词云入口图 → 主题/情感/共现分析 → 分群比较 → 问卷或访谈验证 → 行动建议”推进。词云只能说明高频或高权重词，不能单独证明需求强度、情绪、因果关系或策略优先级。每张词云都要写明语料来源、时间范围、有效文本数、清洗规则、分词/词典、停用词和权重口径。

完整判断表和报告字段见 [文本分析指南](skills/zhengdabei-survey-report/references/text-analysis.md)；图表类型选择、图号和来源标注、坐标轴及可读性检查见 [可视化指南](skills/zhengdabei-survey-report/references/visualization-guide.md)。

## 7. 必须遵守的注意事项

### 数据真实性

禁止编造或冒充真实的样本量、回收率、访谈原话、调查照片、爬虫数据、信效度、模型系数、p 值、预测性能、引用和政策文件。

### AI 使用

AI 可以协助研究设计、代码解释、语言润色和证据整理，但不能替代真实调查、核心数据分析和最终判断。参赛报告应按照当年度要求说明 AI 工具、用途和人工核验过程。

### 赛事规则

规则分为三层：

1. 当年度组委会官方规则；
2. 对应组别和赛区的通知；
3. 获奖论文、培训课件和经验总结。

第三层不能替代前两层。正文页数、查重比例、匿名要求、地图规范、正文/附录拆分和提交格式都必须在提交前重新核验。

### 匿名、地图和隐私

- 按赛区规则检查学校、指导教师、队名和队员信息；
- 中国地图只使用规范、完整、可核验的版本；
- 原始数据脱敏后再共享，删除姓名、电话、学号等直接标识；
- 评论、访谈和图片材料需保留来源与授权依据。

### 报告到 PPT/答辩的交接

本 Skill 不默认生成 PPT 或答辩稿，但在报告完成后可以输出“交接包”：核心研究问题、最重要的三条发现及证据图表、最重要的三条建议及责任主体、模型的一句话解释、样本与方法限制、评委可能追问和不能过度声称的结论。交接包只能从已通过审计的报告和数据中提取，不得把探索性结果包装成确定性结论。

## 8. 常见问题与排错

### Skill 没有被识别

检查 Skill 是否复制到了运行时的用户 Skill 目录；确认目录名是 `zhengdabei-survey-report`，且主文件名为 `SKILL.md`。重启新会话后再用“正大杯市场调查报告”关键词尝试。

### 参考文件找不到

不要只复制 `SKILL.md`。必须保留同目录下的 `references/method-routing.md`、`quality-gates.md`、`report-templates.md`、`text-analysis.md` 和 `visualization-guide.md`。

### Agent 一开始就写完整报告

补充 `当前阶段`、`已有数据` 和“本轮只完成 Intake/研究问题/方案设计”的限制。没有数据时要求输出模板或分析计划，不要求输出实证结论。

### Agent 给出虚构显著性结果

明确说明“没有真实数据，不允许生成参赛结果”，并要求改为变量字典、代码骨架、结果表模板或模拟示例。若仍然越过门槛，重新开启会话并附上当前 Skill 的真实性红线。

### 模型太复杂或无法解释

要求按照“描述、解释、比较/细分、预测、文本、策略”重新定位研究目标，并优先选择最小可行主方案，再增加一个验证方案。

### 规则和论文说法冲突

以最新官方通知为准，记录来源、发布日期和核验日期；不要用往届论文推断本届页数或提交要求。

## 9. 项目目录

```text
skills/zhengdabei-survey-report/
├── SKILL.md                         # 主工作流和边界
└── references/
    ├── method-routing.md            # 方法选择、输入和失败条件
    ├── quality-gates.md              # 研究、模型和提交审计
    ├── report-templates.md           # Intake、方案、结果和建议模板
    ├── text-analysis.md              # 条件式文本分析与词云审计
    └── visualization-guide.md        # 图表选择和可视化审计

tests/
├── skill_contract.ps1                # 结构契约检查
└── pressure-scenarios.md             # 压力场景

docs/
├── CONTRIBUTING.md                   # 贡献规范
└── superpowers/                      # 设计规格和实施计划
```

## 10. 更新、测试和贡献

### 更新到最新版本

```powershell
git pull origin main
```

如果你将 Skill 复制到了用户目录，更新仓库后需要重新复制 Skill 目录，或者建立你自己的同步流程。

### 运行结构测试

在仓库根目录运行：

```powershell
pwsh -NoProfile -File tests/skill_contract.ps1
```

预期输出：

```text
PASS: skill contract
```

测试只检查文件结构和关键契约，不替代真实项目中的问卷、数据、模型和赛事规则审计。

### 贡献修改

修改主 Skill 或参考文件时，同步更新 `CHANGELOG.md`，并至少补充一个压力场景或结构检查。具体分支、提交和 Pull Request 约定见 [贡献指南](docs/CONTRIBUTING.md)。

## 11. 版本说明

当前版本：`v1.4.0`。

- `v1.4.0`：增加条件式文本分析与词云流程、图表选择和可视化审计、报告到 PPT/答辩的交接包；

- `v1.3.1`：重写 README，补充安装、启动、排错、更新和贡献说明；

- `v1.3.0`：增加 Intake、阶段状态机、真实性红线、方法路由、质量闸门、输出模板和压力测试；
- `v1.2.0`：扩充差异化模型与产业类分析方法；
- `v1.1.0`：完善报告结构、模型映射和信效度参考；
- `v1.0.0`：初版发布。

完整变更记录见 [CHANGELOG.md](CHANGELOG.md)。
