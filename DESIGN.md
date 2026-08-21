# DESIGN.md — ZGS Glass 品牌视觉识别系统

> 品牌参考：Apple（产品画廊式展示）× Tesla（工业精密极简）× Stripe（B2B 专业信任）
>
> 适用范围：zgs-glass.com 全站重构、品牌物料、产品目录、B2B 客户门户
>
> 版本：v2.0 — 品牌视觉识别系统重构

---

## 1. Visual Theme & Atmosphere（视觉主题与氛围）

ZGS Glass（淄博大航玻璃）的品牌视觉语言建立在**玻璃的物质性**之上——通透、折光、清澄，以及在高温熔炉中由液态凝固为器物的**瞬间永恒感**。

设计哲学的核心是 **"Crystal Clarity, Crafted Trust"（澄澈如晶，匠心铸信）**——将 20 年玻璃制造工艺积淀转化为一种克制而通透的视觉语言。界面如玻璃般通透留白，内容如器物般精准呈现，色彩如光线穿过玻璃时折射出的冷色光谱。

视觉基调融合三重气质：**工业精密**（Tesla 式的留白与克制）、**工艺质感**（Apple 式的产品画廊感）、**专业信任**（Stripe 式的 B2B 信息层级）。页面以全幅产品摄影为主导，UI 层退隐为通透的玻璃质感框架，让玻璃器物本身成为视觉主角。

**核心视觉特征关键词：**
- Crystalline Transparency — 晶莹通透
- Refractive Clarity — 折光清透
- Engineered Precision — 工程精密
- Gallery Restraint — 画廊克制
- Maritime Heritage — 航海传承（品牌名"大航 / Great Sailing"）

**光影与质感倾向：**
- 毛玻璃质感（backdrop-filter: blur）用于导航栏与悬浮卡片，模拟磨砂玻璃表面
- 产品图片使用单方向柔光，模拟玻璃器物在自然光下的折射与透光
- 阴影系统极简但精准——仅用于悬浮交互元素，静态内容保持平面
- 色彩以蓝青冷调为单一光谱轴——从深层玻璃蓝（Deep Cerulean）到晶体青绿（Crystal Teal），呈现光线穿透玻璃时折射出的连续冷色光谱，营造极致通透感

---

## 2. Color Palette & Roles（调色板与角色）

### Primary Colors（主色）

| 色名 | HEX | CSS 变量 | 用途 |
|------|-----|---------|------|
| Deep Cerulean | `#0B5F8A` | `--color-primary` | 主品牌色——深层清澈玻璃在光线穿透时的色彩，用于主 CTA、品牌标识、关键链接 |
| Cerulean Press | `#094A6E` | `--color-primary-press` | 主色按压态——更深的水下玻璃色 |
| Cerulean Soft | `#3D8AB5` | `--color-primary-soft` | 主色柔化变体——hover 态、次要交互 |
| Cerulean Tint | `#E6F2F8` | `--color-primary-tint` | 主色极淡背景——section 交替底色、tag 背景 |

### Brand & Dark（品牌深色）

| 色名 | HEX | CSS 变量 | 用途 |
|------|-----|---------|------|
| Brand Navy | `#0C2340` | `--color-brand-dark` | 品牌深色——页脚、深色 section、深色卡片、标题文字在特殊场景 |
| Ink Slate | `#1C2B33` | `--color-ink` | 正文最深文字色——标题、导航文字 |
| On-Dark White | `#FFFFFF` | `--color-on-dark` | 深色背景上的文字色 |

### Accent / Interactive（强调色与交互色）

| 色名 | HEX | CSS 变量 | 用途 |
|------|-----|---------|------|
| Crystal Teal | `#2BA8B5` | `--color-accent` | 晶体青绿——强调标签、数据高亮、证书徽章、次级 CTA、图标点缀 |
| Teal Press | `#1A7A85` | `--color-accent-press` | 青绿按压态——更深的水下折射色 |
| Teal Soft | `#5BC4CF` | `--color-accent-soft` | 青绿柔化变体——hover 态、轻量交互 |
| Teal Tint | `#E0F4F5` | `--color-accent-tint` | 青绿极淡背景——强调 tag 背景、数据面板底色 |

### Neutral / Gray Scale（中性灰阶系统）

| 色名 | HEX | CSS 变量 | 用途 |
|------|-----|---------|------|
| Ink Primary | `#1C2B33` | `--color-ink` | 主文字——标题、正文重要内容 |
| Ink Secondary | `#4A5C66` | `--color-ink-secondary` | 次级文字——正文段落、描述 |
| Ink Muted | `#7A8B94` | `--color-ink-muted` | 弱化文字——辅助说明、meta 信息 |
| Ink Faint | `#A8B4BC` | `--color-ink-faint` | 最弱文字——placeholder、禁用态 |
| Silver Mist | `#C4CED4` | `--color-silver-mist` | 分隔线、图标描边 |

### Surface & Borders（表面与边框色）

| 色名 | HEX | CSS 变量 | 用途 |
|------|-----|---------|------|
| Pure White | `#FFFFFF` | `--color-canvas` | 主画布色——主背景、卡片表面 |
| Frosted White | `#F7FAFC` | `--color-canvas-soft` | 次级表面——交替 section 底色、表单背景 |
| Glass Tint | `#EEF4F8` | `--color-canvas-tint` | 玻璃色调底——数据区域、辅助面板 |
| Hairline | `#E3E8EE` | `--color-hairline` | 发丝级分隔线——卡片边框、输入框边框 |
| Hairline Strong | `#C8D2DC` | `--color-hairline-strong` | 强分隔线——表格行线、强调边框 |

### Semantic Colors（语义色）

| 语义 | HEX | CSS 变量 | 用途 |
|------|-----|---------|------|
| Success | `#1A8A5A` | `--color-success` | 成功状态——认证通过、提交成功 |
| Success Bg | `#E8F5EE` | `--color-success-bg` | 成功背景 |
| Warning | `#C77E1A` | `--color-warning` | 警告状态——库存预警、注意提示 |
| Warning Bg | `#FBF3E6` | `--color-warning-bg` | 警告背景 |
| Error | `#C44545` | `--color-error` | 错误状态——表单错误、系统异常 |
| Error Bg | `#FBEEEE` | `--color-error-bg` | 错误背景 |
| Info | `#0B5F8A` | `--color-info` | 信息状态——等同于主品牌色 |

### Shadow Colors（阴影色）

| 层级 | CSS 值 | CSS 变量 | 用途 |
|------|--------|---------|------|
| Shadow Soft | `rgba(12, 35, 64, 0.06)` | `--shadow-color-soft` | 卡片基础阴影 |
| Shadow Medium | `rgba(12, 35, 64, 0.10)` | `--shadow-color-medium` | 悬浮卡片阴影 |
| Shadow Deep | `rgba(12, 35, 64, 0.16)` | `--shadow-color-deep` | 模态/弹层阴影 |
| Shadow Teal | `rgba(43, 168, 181, 0.12)` | `--shadow-color-accent` | 青绿强调元素阴影 |

---

## 3. Typography Rules（排版规则）

### Font Family（字体族）

```css
--font-display: "Inter", "SF Pro Display", -apple-system, "PingFang SC", "Microsoft YaHei", sans-serif;
--font-body: "Inter", "SF Pro Text", -apple-system, "PingFang SC", "Microsoft YaHei", sans-serif;
--font-mono: "JetBrains Mono", "SF Mono", "Fira Code", monospace;
--font-chinese: "Noto Sans SC", "PingFang SC", "Microsoft YaHei", sans-serif;
```

**字体策略**：英文/数字使用 Inter（几何无衬线、开源、多权重、tabular figures 支持），中文使用 Noto Sans SC（思源黑体）。Inter 的几何精度呼应玻璃的工程感，Noto Sans SC 的现代笔画呼应器物的手工质感。两者搭配在 B2B 国际贸易场景中兼顾中英文可读性。

### Type Scale（完整层级表）

| 层级 | Font Size | Weight | Line Height | Letter Spacing | 用途 |
|------|-----------|--------|-------------|----------------|------|
| Display Hero | 56px / 3.5rem | 600 | 1.07 (-0.03) | -2.8px | 首页主标题——品牌宣言级 |
| Display LG | 40px / 2.5rem | 600 | 1.10 (-0.04) | -1.6px | Section 大标题 |
| Display MD | 34px / 2.125rem | 600 | 1.18 (-0.03) | -0.68px | 子页面 H1 |
| Heading LG | 28px / 1.75rem | 500 | 1.21 (-0.03) | -0.56px | Section 标题 |
| Heading MD | 22px / 1.375rem | 500 | 1.27 (-0.02) | -0.44px | 卡片标题、侧栏标题 |
| Heading SM | 18px / 1.125rem | 500 | 1.33 (-0.02) | -0.36px | 小标题 |
| Body Strong | 17px / 1.0625rem | 600 | 1.47 (-0.02) | -0.374px | 强调正文、列表项 |
| Body | 16px / 1rem | 400 | 1.50 (-0.01) | 0 | 标准正文段落 |
| Body MD | 15px / 0.9375rem | 400 | 1.47 (-0.01) | -0.15px | 紧凑正文——产品描述 |
| Caption | 14px / 0.875rem | 400 | 1.43 (-0.02) | -0.224px | 说明文字、meta |
| Caption Strong | 14px / 0.875rem | 600 | 1.29 (-0.02) | -0.224px | 标签、按钮文字 |
| Micro | 13px / 0.8125rem | 400 | 1.38 (-0.01) | 0 | 表格文字、辅助信息 |
| Fine Print | 12px / 0.75rem | 400 | 1.33 (-0.01) | -0.12px | 法律声明、版权 |
| Nano | 10px / 0.625rem | 600 | 1.30 | 0.08px (大写) | 全大写标签——OVERLINE |

### Type Features

```css
/* 数字使用等宽数字（产品规格、数据统计场景） */
.numeric { font-variant-numeric: tabular-nums; }

/* Overline 标签——全大写 + 字间距 */
.overline {
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-size: 11px;
  font-weight: 600;
}
```

### 排版哲学

- **负字距收紧大标题**：所有 Display 级别使用负 letter-spacing（-1.6px ~ -2.8px），创造精密收紧的视觉密度
- **权重克制**：仅使用 400（正文）、500（次级标题）、600（主标题/强调），不使用 700/300——避免视觉戏剧化
- **行高比 1.4-1.5**：正文行高保持舒适阅读间距，标题行高收紧以增强标题密度感
- **中英文混排基线对齐**：通过 `font-feature-settings: "ss01"` 确保混合排列时基线一致

---

## 4. Component Stylings（组件样式）

### Buttons（按钮系统）

```css
/* === Primary CTA — 深层玻璃蓝主按钮 === */
.btn-primary {
  background-color: var(--color-primary);       /* #0B5F8A */
  color: var(--color-on-dark);                   /* #FFFFFF */
  font-size: 15px;
  font-weight: 500;
  line-height: 1.0;
  letter-spacing: -0.15px;
  border-radius: 6px;                            /* 收紧圆角 — 工业精密感 */
  padding: 12px 24px;
  border: none;
  transition: background-color 0.28s ease, box-shadow 0.28s ease, transform 0.18s ease;
  box-shadow: 0 1px 2px rgba(12, 35, 64, 0.08);
}
.btn-primary:hover {
  background-color: var(--color-primary-soft);   /* #3D8AB5 */
  box-shadow: 0 2px 8px rgba(11, 95, 138, 0.20);
}
.btn-primary:active {
  background-color: var(--color-primary-press);  /* #094A6E */
  transform: scale(0.98);
}

/* === Secondary CTA — 白底描边按钮 === */
.btn-secondary {
  background-color: var(--color-canvas);         /* #FFFFFF */
  color: var(--color-primary);                   /* #0B5F8A */
  font-size: 15px;
  font-weight: 500;
  border: 1.5px solid var(--color-hairline-strong); /* #C8D2DC */
  border-radius: 6px;
  padding: 10.5px 22.5px;                        /* 减去 border 宽度 */
  transition: border-color 0.28s ease, color 0.28s ease;
}
.btn-secondary:hover {
  border-color: var(--color-primary);
  color: var(--color-primary-press);
}

/* === Ghost Button — 透明文字按钮 === */
.btn-ghost {
  background-color: transparent;
  color: var(--color-ink-secondary);           /* #4A5C66 */
  font-size: 15px;
  font-weight: 500;
  border: none;
  padding: 8px 16px;
  border-radius: 6px;
  transition: background-color 0.28s ease, color 0.28s ease;
}
.btn-ghost:hover {
  background-color: var(--color-canvas-tint);    /* #EEF4F8 */
  color: var(--color-primary);
}

/* === Accent Button — 晶体青绿强调按钮（证书/特殊场景） === */
.btn-accent {
  background-color: var(--color-accent);         /* #2BA8B5 */
  color: var(--color-on-dark);
  font-size: 14px;
  font-weight: 600;
  border-radius: 6px;
  padding: 10px 20px;
  transition: background-color 0.28s ease;
}
.btn-accent:hover {
  background-color: var(--color-accent-press);   /* #1A7A85 */
}

/* === Pill Tag — 胶囊标签 === */
.pill-tag {
  display: inline-flex;
  align-items: center;
  background-color: var(--color-primary-tint);  /* #E6F2F8 */
  color: var(--color-primary-press);             /* #094A6E */
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 0.04em;
  border-radius: 9999px;
  padding: 4px 12px;
}

/* === Pill Tag Accent — 青绿胶囊标签 === */
.pill-tag-accent {
  background-color: rgba(43, 168, 181, 0.12);
  color: var(--color-accent-press);
  font-size: 12px;
  font-weight: 600;
  border-radius: 9999px;
  padding: 4px 12px;
}
```

### Cards（卡片系统）

```css
/* === Product Card — 产品展示卡片 === */
.card-product {
  background-color: var(--color-canvas);         /* #FFFFFF */
  border: 1px solid var(--color-hairline);        /* #E3E8EE */
  border-radius: 12px;
  overflow: hidden;
  transition: box-shadow 0.32s ease, border-color 0.32s ease, transform 0.32s ease;
}
.card-product:hover {
  box-shadow: 0 8px 24px rgba(12, 35, 64, 0.10);
  border-color: var(--color-hairline-strong);
  transform: translateY(-2px);
}
.card-product .card-image {
  background-color: var(--color-canvas-soft);    /* #F7FAFC — 产品图背景 */
  aspect-ratio: 4 / 3;
  display: flex;
  align-items: center;
  justify-content: center;
}
.card-product .card-body {
  padding: 20px 24px;
}

/* === Feature Card — 功能特性卡片 === */
.card-feature {
  background-color: var(--color-canvas);
  border: 1px solid var(--color-hairline);
  border-radius: 12px;
  padding: 32px;
  transition: box-shadow 0.32s ease;
}
.card-feature:hover {
  box-shadow: 0 4px 16px rgba(12, 35, 64, 0.06);
}

/* === Stat Card — 数据统计卡片 === */
.card-stat {
  background-color: var(--color-canvas);
  border-radius: 12px;
  padding: 28px 24px;
  text-align: center;
}
.card-stat .stat-number {
  font-size: 42px;
  font-weight: 600;
  color: var(--color-primary);
  line-height: 1.1;
  font-variant-numeric: tabular-nums;
}
.card-stat .stat-label {
  font-size: 13px;
  color: var(--color-ink-muted);
  margin-top: 4px;
}

/* === Dark Card — 深色品牌卡片（品牌故事/认证） === */
.card-dark {
  background-color: var(--color-brand-dark);      /* #0C2340 */
  color: var(--color-on-dark);
  border-radius: 12px;
  padding: 32px;
}
```

### Inputs（输入框）

```css
.input-text {
  background-color: var(--color-canvas);
  color: var(--color-ink);
  font-size: 15px;
  border: 1.5px solid var(--color-hairline-strong); /* #C8D2DC */
  border-radius: 6px;
  padding: 10px 14px;
  transition: border-color 0.28s ease, box-shadow 0.28s ease;
  width: 100%;
}
.input-text::placeholder {
  color: var(--color-ink-faint);                 /* #A8B4BC */
}
.input-text:focus {
  outline: none;
  border-color: var(--color-primary);            /* #0B5F8A */
  box-shadow: 0 0 0 3px rgba(11, 95, 138, 0.12);
}

/* === Select 下拉 === */
.select-dropdown {
  appearance: none;
  background-color: var(--color-canvas);
  border: 1.5px solid var(--color-hairline-strong);
  border-radius: 6px;
  padding: 10px 36px 10px 14px;
  font-size: 15px;
  color: var(--color-ink);
  cursor: pointer;
  background-image: url("data:image/svg+xml,...");  /* 自定义箭头 */
}
```

### Navigation（导航系统）

```css
/* === Global Header — 全局顶部导航 === */
.nav-global {
  background-color: rgba(255, 255, 255, 0.85);   /* 毛玻璃半透明 */
  backdrop-filter: blur(12px) saturate(180%);
  -webkit-backdrop-filter: blur(12px) saturate(180%);
  border-bottom: 1px solid var(--color-hairline);
  height: 64px;
  position: sticky;
  top: 0;
  z-index: 1000;
}
.nav-global .nav-link {
  color: var(--color-ink-secondary);             /* #4A5C66 */
  font-size: 14px;
  font-weight: 500;
  padding: 8px 16px;
  border-radius: 6px;
  transition: color 0.28s ease, background-color 0.28s ease;
}
.nav-global .nav-link:hover {
  color: var(--color-primary);
  background-color: var(--color-primary-tint);
}
.nav-global .nav-link.active {
  color: var(--color-primary);
  font-weight: 600;
}

/* === Logo Lockup — 品牌标志组合 === */
.nav-logo {
  font-size: 20px;
  font-weight: 700;
  color: var(--color-ink);
  letter-spacing: -0.4px;
  display: flex;
  align-items: center;
  gap: 8px;
}
.nav-logo .logo-mark {
  width: 28px;
  height: 28px;
  color: var(--color-primary);
}
```

### Modals / Dialogs（模态与对话框）

```css
.modal-overlay {
  background-color: rgba(12, 35, 64, 0.45);      /* 品牌深色遮罩 */
  backdrop-filter: blur(4px);
  position: fixed;
  inset: 0;
  z-index: 2000;
  display: flex;
  align-items: center;
  justify-content: center;
  animation: fadeIn 0.24s ease;
}
.modal-content {
  background-color: var(--color-canvas);
  border-radius: 12px;
  box-shadow: 0 16px 48px rgba(12, 35, 64, 0.16);
  padding: 32px;
  max-width: 560px;
  width: 90%;
  animation: slideUp 0.32s cubic-bezier(0.16, 1, 0.3, 1);
}
@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }
@keyframes slideUp { from { opacity: 0; transform: translateY(16px); } to { opacity: 1; transform: translateY(0); } }
```

---

## 5. Layout Principles（布局原则）

### Spacing System（间距系统）

```css
:root {
  --space-xxs: 4px;
  --space-xs: 8px;
  --space-sm: 12px;
  --space-md: 16px;
  --space-lg: 24px;
  --space-xl: 32px;
  --space-2xl: 48px;
  --space-3xl: 64px;
  --space-4xl: 80px;
  --space-5xl: 120px;
}
```

间距基数为 **8px**，所有间距为 8 的倍数（4px 为半步用于微调）。这一基数与玻璃制造的公差精度形成隐喻——每 8px 如同一次标准切割单位。

### Grid System（网格系统）

```css
.container {
  max-width: 1280px;
  margin: 0 auto;
  padding: 0 24px;
}

.grid-12 {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: 24px;
}

/* 产品网格 */
.grid-products {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 24px;
}

/* 数据网格 */
.grid-stats {
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  gap: 16px;
}
```

| 网格类型 | 列数 | 间距 | 最大宽度 | 用途 |
|---------|------|------|---------|------|
| 主容器 | 12 列 | 24px | 1280px | 全局内容容器 |
| 产品网格 | 4 列 | 24px | 1280px | 产品展示页 |
| 数据网格 | 6 列 | 16px | 1280px | 工厂数据、统计卡片 |
| 文本网格 | 8+4 列 | 48px | 1120px | 图文混排 |

### Section Spacing（区块间距）

| 区块类型 | 上间距 | 下间距 | 说明 |
|---------|--------|--------|------|
| Hero 区 | 0 | 80px | 全幅 hero 无上间距 |
| 标准 Section | 80px | 80px | 默认对称间距 |
| 紧凑 Section | 48px | 48px | 产品列表、表格区 |
| 数据区 | 64px | 64px | 统计数据展示 |
| CTA 区 | 80px | 0 | 底部行动召唤 |

### 留白哲学

品牌遵循 **"Gallery Whitespace"（画廊留白）** 原则——将留白视为展品的基座而非空白。每个产品图片需要足够的呼吸空间，如同博物馆中器物与展柜的关系。关键数据（890 工人、200,000 日产量）给予大尺度排版与充足留白，使数字本身成为视觉焦点。这种克制让 B2B 采购客户在浏览时感受到品牌的自信——真正有实力的工厂不需要填满每一寸空间。

---

## 6. Depth & Elevation（深度与层级）

### Shadow System（阴影系统）

```css
:root {
  /* === Shadow XS — 微阴影（卡片静态） === */
  --shadow-xs: 0 1px 2px rgba(12, 35, 64, 0.04);

  /* === Shadow SM — 小阴影（卡片 hover 前态） === */
  --shadow-sm: 0 2px 8px rgba(12, 35, 64, 0.06);

  /* === Shadow MD — 中阴影（卡片 hover / 悬浮元素） === */
  --shadow-md: 0 8px 24px rgba(12, 35, 64, 0.10);

  /* === Shadow LG — 大阴影（模态/弹层） === */
  --shadow-lg: 0 16px 48px rgba(12, 35, 64, 0.16);

  /* === Shadow XL — 超大阴影（全屏遮罩内容） === */
  --shadow-xl: 0 24px 64px rgba(12, 35, 64, 0.20);

  /* === Shadow Teal — 青绿色阴影（强调元素） === */
  --shadow-teal: 0 4px 16px rgba(43, 168, 181, 0.12);
}
```

### Surface Layers（表面层级系统）

| 层级 | 表面 | CSS 值 | 用途 |
|------|------|--------|------|
| L0 Base | 背景画布 | `var(--color-canvas)` #FFFFFF | 页面主背景 |
| L1 Surface | 次级表面 | `var(--color-canvas-soft)` #F7FAFC | 交替 section、表单区 |
| L2 Tint | 玻璃色调 | `var(--color-canvas-tint)` #EEF4F8 | 数据面板、辅助区 |
| L3 Elevated | 悬浮卡片 | #FFFFFF + `--shadow-sm` | 产品卡片 hover、悬浮面板 |
| L4 Overlay | 模态层 | #FFFFFF + `--shadow-lg` | 对话框、弹窗 |
| L5 Dark | 深色表面 | `var(--color-brand-dark)` #0C2340 | 页脚、深色 section |
| L6 Frosted | 毛玻璃 | `rgba(255,255,255,0.85)` + `backdrop-filter: blur(12px)` | 固定导航栏 |

### Z-index Scale（层级数值规范）

```css
:root {
  --z-base: 0;          /* 基础内容 */
  --z-raised: 10;       /* 浮起内容 */
  --z-dropdown: 100;     /* 下拉菜单 */
  --z-sticky: 500;       /* 固定导航 */
  --z-fixed: 800;        /* 固定元素 */
  --z-modal-overlay: 2000; /* 模态遮罩 */
  --z-modal: 2001;       /* 模态内容 */
  --z-toast: 3000;       /* Toast 通知 */
  --z-tooltip: 4000;      /* Tooltip */
}
```

### Backdrop Effects（毛玻璃效果参数）

```css
/* 导航栏毛玻璃 — 模拟磨砂玻璃表面 */
 backdrop-filter: blur(12px) saturate(180%);

/* 模态遮罩毛玻璃 — 更强模糊 */
 backdrop-filter: blur(6px);

/* 产品图悬浮信息层毛玻璃 */
 backdrop-filter: blur(8px);
 background-color: rgba(255, 255, 255, 0.72);
```

---

## 7. Do's and Don'ts（设计规范与禁忌）

### Do's ✅

1. **让产品摄影主导视觉**——玻璃器物图片应占据 60%+ 的首屏面积，UI 层退隐为通透框架
2. **使用 Deep Cerulean (#0B5F8A) 作为唯一主 CTA 色**——不用于装饰，仅用于行动按钮和关键链接
3. **Crystal Teal (#2BA8B5) 用于强调**——证书徽章、数据高亮、"认证" 标签、次级 CTA，保持冷色光谱统一
4. **保持毛玻璃导航的通透感**——`backdrop-filter: blur(12px)` 让导航融入而非割裂内容
5. **数字使用 tabular-nums**——所有产品规格、工厂数据、统计数字使用等宽数字确保对齐
6. **间距严格遵循 8px 倍数系统**——4px 仅用于像素级微调
7. **产品卡片 hover 使用 translateY(-2px)**——轻微上浮模拟器物被拿起端详的物理感
8. **大标题使用负字距收紧**——Display 级别 letter-spacing: -1.6px ~ -2.8px 创造密度

### Don'ts ❌

1. **禁止使用纯黑色 (#000000)**——所有深色使用 Brand Navy (#0C2340) 或 Ink (#1C2B33)，保持品牌色调统一
2. **禁止在 UI 元素上使用渐变背景**——渐变仅允许出现在 hero 图片叠加层和品牌装饰图形中
3. **不要使用大圆角 (>12px)**——按钮 6px、卡片 12px、输入框 6px，圆角保持工业精密感
4. **不要在静态内容上添加阴影**——阴影仅用于悬浮交互态（hover/focus/modal），静态保持平面
5. **不要使用超过两种字重对比在同一行**——标题 600、正文 400，避免视觉碎片化
6. **不要在产品列表页使用全宽图片**——保持 4:3 或 1:1 的统一比例，留白让产品呼吸
7. **不要使用纯灰色文字 (#999)**——所有灰色使用带蓝调的品牌灰阶（#4A5C66 / #7A8B94）
8. **不要在毛玻璃导航上放置超过 6 个一级导航项**——克制是品牌的核心表达

---

## 8. Responsive Behavior（响应式行为）

### Breakpoints（断点定义）

| 断点名 | 宽度 | CSS 媒体查询 | 关键变化 |
|--------|------|-------------|---------|
| Mobile | <768px | `@media (max-width: 767px)` | 单列布局、汉堡导航、hero 标题缩至 32px、产品 1 列、数据 2 列 |
| Tablet | 768-1023px | `@media (min-width: 768px) and (max-width: 1023px)` | 产品 2 列、数据 3 列、导航折叠为图标+汉堡、hero 标题 40px |
| Desktop | 1024-1439px | `@media (min-width: 1024px) and (max-width: 1439px)` | 产品 3 列、数据 4 列、完整导航、hero 标题 56px |
| Wide | ≥1440px | `@media (min-width: 1440px)` | 产品 4 列、数据 6 列、容器 max-width 1280px 居中 |

### Touch Targets（触摸目标）

| 元素 | 最小尺寸 | 实际尺寸 | 说明 |
|------|---------|---------|------|
| 按钮 | 44×44px | 44×44px | 移动端按钮高度不低于 44px |
| 导航链接 | 44×44px | 48×44px | 移动端导航项加大触摸区 |
| 卡片可点击区 | 全卡片 | 全卡片 | 整个产品卡片可点击 |
| 表单输入 | 44px 高 | 44px | 移动端输入框高度不低于 44px |
| 图标按钮 | 44×44px | 44×44px | 搜索、语言切换等图标按钮 |

### 折叠策略

| 组件 | Desktop | Tablet | Mobile |
|------|---------|--------|--------|
| 导航 | 水平 6 项 | 图标+汉堡 | 全屏抽屉菜单 |
| 产品网格 | 4 列 | 2 列 | 1 列 |
| 数据统计 | 6 列 | 3 列 | 2 列 |
| Hero CTA | 并排 | 并排 | 垂直堆叠 |
| 图文段落 | 8+4 双列 | 单列堆叠 | 单列堆叠 |
| 页脚 | 4 列 | 2 列 | 1 列 + 可折叠 |

### Font Scaling（字体缩放策略）

```css
/* Mobile 基准 */
html { font-size: 16px; }

/* Tablet 放大 */
@media (min-width: 768px) {
  html { font-size: 16px; }
  .display-hero { font-size: 40px; }
}

/* Desktop 标准 */
@media (min-width: 1024px) {
  html { font-size: 16px; }
  .display-hero { font-size: 56px; }
}

/* Wide 保持 */
@media (min-width: 1440px) {
  html { font-size: 16px; }
  .display-hero { font-size: 56px; }
}
```

---

## 9. Agent Prompt Guide（AI 代理提示指南）

### Quick Reference（快速参考摘要）

```
品牌: ZGS Glass (zgs-glass.com) — 玻璃制品制造商
行业: B2B 玻璃制造（分液器/储物罐/梅森瓶/花瓶/烛台/杯具）
主色: #0B5F8A (Deep Cerulean — 深层玻璃蓝)
强调色: #2BA8B5 (Crystal Teal — 晶体青绿)
深色: #0C2340 (Brand Navy)
字体: Inter + Noto Sans SC
圆角: 按钮 6px / 卡片 12px / 标签 9999px
间距: 8px 基数
阴影: rgba(12,35,64,0.06~0.20)
风格: Apple 画廊式 × Tesla 工业精密 × Stripe B2B信任
设计哲学: Crystal Clarity, Crafted Trust
```

### Component Prompts（组件生成 Prompt 示例）

**Prompt 1 — 产品展示页**
```
基于 ZGS Glass DESIGN.md，创建一个产品目录页面：
- 4 列产品网格（移动端 1 列），每个卡片 4:3 产品图 + 名称 + 规格简述 + "查看详情" 链接
- 卡片背景 #FFFFFF，边框 1px #E3E8EE，圆角 12px
- hover 时 box-shadow: 0 8px 24px rgba(12,35,64,0.10)，translateY(-2px)
- 产品图背景 #F7FAFC
- 使用 Inter 字体，卡片标题 18px/500，描述 14px/400 #7A8B94
- 顶部使用毛玻璃导航栏 backdrop-filter: blur(12px)
```

**Prompt 2 — 工厂实力数据区**
```
基于 ZGS Glass DESIGN.md，创建一个工厂数据展示区域：
- 6 列数据网格，每个数据卡片居中对齐
- 大数字 42px/600 #0B5F8A，使用 font-variant-numeric: tabular-nums
- 数据：20+ 年经验、200,000+ 日产量、890+ 员工、50,000㎡ 工厂、100+ 出口国、24h 客服
- 背景使用 #F7FAFC 次级表面
- 卡片间距 16px，无边框无阴影，纯排版
- 数字下方标签 13px #7A8B94
```

**Prompt 3 — 品牌故事深色 Section**
```
基于 ZGS Glass DESIGN.md，创建一个品牌故事区域：
- 深色背景 #0C2340 (Brand Navy)，文字 #FFFFFF
- 左右分栏：左侧大标题 + 段落，右侧认证 logo 网格
- 标题 40px/600 #FFFFFF letter-spacing: -1.6px
- 正文 16px/400 rgba(255,255,255,0.75)
- 认证 logo（BSCI/IKEA/WAL-MART/TARGET/COCA COLA/DISNEY/AVON）以白色半透明排列
- 底部 CTA 按钮使用 btn-accent 样式（#2BA8B5 晶体青绿）
```

**Prompt 4 — 产品详情页**
```
基于 ZGS Glass DESIGN.md，创建产品详情页：
- 左侧 60% 大图展示区（背景 #F7FAFC），右侧 40% 产品信息
- 产品名称 34px/600，下方 overline 标签 "BEVERAGE DISPENSER"
- 规格表使用左右两列布局，标签 #7A8B94 13px，值 #1C2B33 15px
- 底部双 CTA："Request Quote" (btn-primary) + "Download Spec" (btn-secondary)
- 容器 max-width 1280px，padding 0 24px
```

**Prompt 5 — 联系询价表单**
```
基于 ZGS Glass DESIGN.md，创建询价表单：
- 左侧品牌信息 + 工厂实景图，右侧表单
- 表单输入框使用 .input-text 样式，focus 时 border #0B5F8A + box-shadow 3px halo
- 字段：公司名、姓名、邮箱、电话、产品类别(select)、消息(textarea)
- 提交按钮 btn-primary 全宽，高度 48px
- 表单背景 #F7FAFC，圆角 12px，padding 32px
```

### Iteration Guide（AI 生成 UI 时的迭代建议）

1. **检查色彩**——生成后确认所有按钮仅使用 #0B5F8A 主色或 #2BA8B5 强调色，全冷色系无暖色混入
2. **验证圆角**——按钮必须 6px，卡片必须 12px，标签必须 9999px，不允许随意圆角
3. **间距审计**——所有 padding/margin 必须是 8 的倍数（4px 例外仅限微调）
4. **阴影克制**——静态内容不应有阴影，仅 hover/focus/modal 有阴影
5. **字体权重**——确认只出现 400/500/600 三种权重，无 700/300
6. **数字对齐**——所有数据展示使用 `font-variant-numeric: tabular-nums`
7. **导航毛玻璃**——固定导航必须使用 `backdrop-filter: blur(12px) saturate(180%)`
8. **图片比例**——产品图统一 4:3 或 1:1，不允许随机比例
9. **中文排版**——中英文混排时英文使用 Inter，中文使用 Noto Sans SC，检查字距
10. **移动端**——所有断点下按钮触摸区不小于 44×44px，导航折叠为汉堡菜单

---

## 附录：品牌标志使用规范

### Logo 构成

ZGS Glass 品牌标志由 **标志图形（Mark）** + **文字标志（Wordmark）** 组成：

- **Mark**：以六边形玻璃器皿轮廓为基础，内部融入船帆线条（呼应"大航 / Great Sailing"品牌名），整体形态同时暗示玻璃杯的纵截面
- **Wordmark**：`ZGS` 大写字母 + `Glass` 首字母大写，使用 Inter 700 字重，letter-spacing: -0.4px

### Logo 色彩变体

| 场景 | Mark 色 | Wordmark 色 | 背景 |
|------|---------|------------|------|
| 标准白底 | #0B5F8A | #1C2B33 | #FFFFFF |
| 深色底 | #3D8AB5 | #FFFFFF | #0C2340 |
| 单色白 | #FFFFFF | #FFFFFF | 深色图片上 |
| 单色深 | #0C2340 | #0C2340 | #F7FAFC |

### 最小尺寸

- 数字/印刷：Logo 宽度不小于 120px
- Favicon：16×16px / 32×32px / 180×180px
- 清晰空间：Logo 四周留不小于 Mark 高度的 1/2 的空白

---

*DESIGN.md v2.0 — ZGS Glass 品牌视觉识别系统*
*生成日期：2026-08-20*
*参考品牌：Apple (gallery minimalism) × Tesla (industrial precision) × Stripe (B2B trust)*
