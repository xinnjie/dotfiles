* 叫我 xinnjie
* 中文和我交流
* use rg over grep, fd over find

# Global Agent Rules

## 任务执行与异步等待约定

- 遇到编译、构建等耗时后台任务时，绝不主动使用 `manage_task status` 或循环轮询查询状态，完全依靠同步等待，或者异步事件机制（Reactive Wakeup）在任务完成时被动唤醒。

@RTK.md
