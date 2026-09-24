# TraeCode 对拍练习记录（第1轮）

> 范围：空安全（`?.` / `??` / `!`）、命名参数、整除 `~/` 与 `/`
> 题目来源：TraeCode 按指定范围出题；作答方式：先手写预测输出，再运行 `quiz_round1.dart` 取实际输出，逐题复核。

| 题号 | 代码片段 | 我的预测 | 实际输出 | 结果 |
| --- | --- | --- | --- | --- |
| Q1 | `String? a; String? b = a ?? 'default'; print(b);` | `default` | `default` | ✓ 一致 |
| Q2 | `void f({required int x, int y = 10}) => print(x+y); f(x: 5);` | `15` | `15` | ✓ 一致 |
| Q3 | `var n=7; print('${n/2} vs ${n~/2}');` | `3.5 vs 3` | `3.5 vs 3` | ✓ 一致 |
| Q4 | `String? s; print(s!.length);` | `null` | `抛错: Null check operator used on a null value` | ✗ 分歧 |
| Q5 | `String label(String? tag)=>tag??'无'; print(label(null)); print(label('A'));` | `无` / `A` | `无` / `A` | ✓ 一致 |

## 分歧复核

**Q4 分歧（最重要的一条）**：我原以为 `s!.length`（`s` 为 null 时）会像 JavaScript 那样"安静地返回 null 或 0"。实际运行抛出 `Null check operator used on a null value`。

- 原因：`!` 是**空断言**，语义是"我断言它非 null，若为 null 就抛错"，不是"安全地取值"。
- 正确的安全写法应是用 `?.`（`s?.length` 返回 `null`）或 `??`（`s?.length ?? 0`）。
- 这正是指南"翻车警告"指出的最高频翻车点：把 `!` 当成"容错取值"。

## 小结

5 题答对 4 题，唯一错在 Q4 的 `!` 语义。结论：`!` 慎用，能用 `?.`/`??` 就别用 `!`；只有确认非 null 时才用 `!` 做断言。
