@echo off
echo Creating necessary directories...
mkdir data\postgres data\qdrant data\ollama data\n8n 2>nul

echo Copying .env.example to .env...
copy .env.example .env

echo Starting services...
docker-compose up -d

echo Getting Ngrok URL...
timeout /t 10
docker exec ai-toolkit-ngrok ngrok api tunnels list

echo Setup complete! Access N8N through the Ngrok URL above.
