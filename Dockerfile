FROM n8nio/n8n

# 设置 Hugging Face Spaces 要求的端口
ENV PORT=7860
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://${HF_SPACE_REPOSITORY_ID}-7860.preview.app.${HF_SPACE_OWNER}.spaces  # 这会动态设置 webhook URL
EXPOSE $PORT

# 启动 n8n 并监听正确端口
CMD ["n8n", "start"]
