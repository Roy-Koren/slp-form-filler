#!/bin/bash

echo "🚀 SLP Form Filler Setup"
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 not found"
    exit 1
fi

echo "✅ Python: $(python3 --version)"
echo ""

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate
echo "📦 Activating environment..."
source venv/bin/activate

# Install dependencies
echo "📦 Installing dependencies..."
pip install -r requirements.txt

# Create .env if it doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
    echo "📝 Created .env file - edit it with your Deepgram API key"
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "📝 Next steps:"
echo "1. Edit .env and add your Deepgram API key"
echo "   Get one free at: https://deepgram.com"
echo ""
echo "2. Activate the environment:"
echo "   source venv/bin/activate"
echo ""
echo "3. Run the app:"
echo "   python main.py"
echo ""
echo "4. Open in browser:"
echo "   http://localhost:8000"
echo ""
