@echo off
echo Stopping all containers...
docker-compose down

echo Cleaning up Docker resources...
for /f "tokens=*" %%i in ('docker ps -a -q --filter "name=ai-toolkit"') do (
  docker stop %%i
  docker rm %%i
)

for /f "tokens=*" %%i in ('docker volume ls -q --filter "name=ai-toolkit"') do (
  docker volume rm %%i
)

docker network rm ai-toolkit-network 2>nul

echo Removing data directories...
rmdir /s /q data\postgres data\qdrant data\ollama data\n8n 2>nul

echo Cleanup complete!