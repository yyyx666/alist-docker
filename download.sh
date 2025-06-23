#!/bin/bash
if [ -n "$CONFIG_URL" ]; then
    # 使用curl下载
    curl -fsSL "$CONFIG_URL" -o /opt/openlist/data/config.json
    # 或用wget（如果你没有curl）
    # wget -O /opt/openlist/data/config.json "$CONFIG_URL"
else
    echo "环境变量 CONFIG_URL 未设置"
fi
