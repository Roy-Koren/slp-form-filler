# ⚡ Quick Start (2 Minutes)

## Requirements
- Python 3.8+
- Chrome/Firefox/Safari browser
- Microphone

## 1. Install & Run

```bash
# Install dependencies
pip install -r requirements.txt

# Run the app
python main.py

# Open browser to:
http://localhost:8000
```

## 2. Get Deepgram Key (Optional but Recommended)

For speech-to-text to work:

1. Go to https://deepgram.com
2. Sign up (free tier = 25 hours/month)
3. Get API key
4. Set environment variable:

```bash
export DEEPGRAM_API_KEY="your-key-here"
```

Or edit the `.env` file if you create one.

## 3. Use the App

1. Open http://localhost:8000
2. Click the red microphone button 🎤
3. Speak your answer
4. When done, click the green button to stop
5. It will transcribe automatically
6. Click "Next" to go to next question
7. Repeat for all 13 questions
8. Download your Word document

## 4. Get Your Document

After all questions, click "Download" and you get a Word file with all your answers.

## Environment Variables

Create a `.env` file if you want to configure:

```
DEEPGRAM_API_KEY=your-key-here
PORT=8000
```

Then run:
```bash
python main.py
```

## Troubleshooting

**Can't hear anything?** Check microphone permissions in browser.

**Transcription empty?** Check DEEPGRAM_API_KEY is set correctly.

**Port already in use?** Use different port:
```bash
PORT=8001 python main.py
```

## That's It!

You have a working voice form filler. Share the URL (http://localhost:8000) and anyone can use it!

Next: Read `START_HERE.md` for more details.
