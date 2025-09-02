#!/bin/bash
if [ -n "$CONFIG_URL" ]; then
    # 使用curl下载
    curl -fsSL "$CONFIG_URL" -o /opt/haoren/data/config.json
else
    echo "环境变量 CONFIG_URL 未设置"
fi
