$ErrorActionPreference = 'Stop'
$skill = Get-Content -Raw -Encoding utf8 'skills/zhengdabei-survey-report/SKILL.md'
$readme = Get-Content -Raw -Encoding utf8 'README.md'

function Require-Pattern([string]$label, [string]$pattern) {
  if ($skill -notmatch $pattern) { throw "MISSING: $label" }
}

Require-Pattern 'Use when description' '^---\s*\r?\nname:.*\r?\ndescription: Use when'
Require-Pattern 'intake contract' 'Intake|启动信息|current_stage'
Require-Pattern 'stage state machine' '状态机|intake.*question_design|question_design.*evidence_review'
Require-Pattern 'fabrication prohibition' '禁止.*编造|不得.*编造|伪造.*数据'
Require-Pattern 'rules hierarchy' '官方硬规则|赛区.*规则|论文经验'
Require-Pattern 'output contract' '输出契约|固定输出|研究问题.*因变量'
Require-Pattern 'quality states' 'pass.*conditional.*blocked|conditional.*blocked'
Require-Pattern 'reference routing' 'references/method-routing.md'
Require-Pattern 'simulation boundary' '没有真实数据.*最多推进|模拟数据不得进入|模拟.*参赛正文'
Require-Pattern 'slides boundary' 'PPT.*答辩|演示文稿工作流'
Require-Pattern 'capability modules' '能力模块|一人兼任'
Require-Pattern 'seven-dimension audit' '研究选题.*文献研究.*方案设计|七维'

function Require-Readme([string]$label, [string]$pattern) {
  if ($readme -notmatch $pattern) { throw "README MISSING: $label" }
}

Require-Readme 'purpose and boundaries' '适用范围|不默认负责|不包含'
Require-Readme 'installation' '安装|git clone|复制'
Require-Readme 'discovery verification' '发现|识别|检查'
Require-Readme 'startup prompt' '启动|Intake|current_stage'
Require-Readme 'workflow' '工作流|状态机|提交审计'
Require-Readme 'input checklist' '输入材料|问卷|数据|规则'
Require-Readme 'output contract' '输出|建模方案|pass.*conditional.*blocked'
Require-Readme 'compliance' 'AI|隐私|匿名|地图|查重'
Require-Readme 'troubleshooting' '排错|常见问题|故障'
Require-Readme 'versioning' '版本|更新|CHANGELOG'

foreach ($path in @(
  'skills/zhengdabei-survey-report/references/method-routing.md',
  'skills/zhengdabei-survey-report/references/quality-gates.md',
  'skills/zhengdabei-survey-report/references/report-templates.md',
  'tests/pressure-scenarios.md'
)) {
  if (-not (Test-Path $path)) { throw "MISSING FILE: $path" }
}

Write-Output 'PASS: skill contract'
