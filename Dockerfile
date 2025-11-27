FROM denoland/deno:alpine-1.45.5

WORKDIR /app

# 複製所有檔案
COPY . .

# 暴露端口
EXPOSE 8000

# 啟動命令
CMD ["run", "--allow-net", "--allow-read=.env", "--allow-env", "router.ts"]
