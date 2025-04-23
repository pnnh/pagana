#!/bin/bash

sleep 5s # 等待数据库启动

echo "开始执行 SQL 文件"

# 定义要查找的目录
TARGET_DIR="/app"

# 数据库连接信息
DB_NAME="portal"
DB_USER="postgres"
DB_HOST="127.0.0.1"
DB_PORT="5432"

# 查找并执行所有 .sql 文件
find "$TARGET_DIR" -type f -name "*.sql" | while read -r sql_file; do
  echo "正在执行文件: $sql_file"
  psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -f "$sql_file"
  if [ $? -ne 0 ]; then
    echo "执行失败: $sql_file"
    exit 1
  fi
done

echo "所有 SQL 文件执行完成"