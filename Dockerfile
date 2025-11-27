FROM denoland/deno:alpine-1.45.5

# 建議用 /app 作為工作目錄
WORKDIR /app

# 複製所有程式碼與 .env
COPY . .

# falProxy 預設使用 8000，可用 PORT 覆寫
EXPOSE 8000

# 允許讀取檔案與環境變數，並開放網路
CMD ["run", "--allow-net", "--allow-read", "--allow-env", "router.ts"]
