# TiDB Reproducible Builds

本次 hackathon, 我们的目标是使 tidb 以及周边组件能够可重现地构建。即任何人都能够从相同的源码库中构建出完全相同的二进制。

## Why

- 验证 tidb 在构建过程中没有受到攻击
- 让用户信任 pingcap 没有在项目构建过程中插入后门

## How

1. 学习 [reproducible-builds](https://reproducible-builds.org/docs/)，分析不同场景中 tidb 的构建结果差异并进行改造。并尽可能多地为 pd、tikv 等组件进行相同的工作。

2. 改造 ci 流程，使自动发版的结果能够可重现构建。

3. 建立类似 https://tests.reproducible-builds.org/debian/reproducible.html 的平台，自动重建对比构建结果并实时展示

## Team

@nexustar @AstroProfundis
