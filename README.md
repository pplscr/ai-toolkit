# Self-Hosted AI Toolkit

A comprehensive self-hosted AI toolkit combining:
- Ollama (AI models)
- PostgreSQL (database)
- Qdrant (vector database)
- N8N (workflow automation)
- Ngrok (secure tunneling)

## Quick Start
1. Clone this repository
2. Copy `.env.example` to `.env` and update the values
3. Run the setup script:
   - Windows: `scripts\setup.bat`
4. Access N8N through the Ngrok URL displayed at the end of the setup

## Components
- **Ollama**: Access AI models via API at http://localhost:11434
- **PostgreSQL**: Database accessible at localhost:5432
- **Qdrant**: Vector database with API at http://localhost:6333
- **N8N**: Workflow automation available at http://localhost:5678
- **Ngrok**: Secure tunneling that makes your N8N instance available via public URL

## Example Use Cases

1. **AI-powered Document Processing**:
   - Upload documents to N8N
   - Extract text and generate embeddings via Ollama
   - Store vectors in Qdrant
   - Implement semantic search

2. **AI Chatbot with Memory**:
   - Connect user messages to Ollama for responses
   - Store conversation history in PostgreSQL
   - Create embeddings of conversations for context

## Configuration
See the `.env.example` file for required environment variables.
