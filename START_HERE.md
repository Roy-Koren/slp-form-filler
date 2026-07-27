# 🎤 SLP Form Filler - Web Voice Version

## What You Have

A **complete web-based voice form filling system** - no phone numbers needed!

## ⚡ How It Works (60 seconds)

1. Open website in browser
2. Click the red microphone button 🎤
3. Speak your answer
4. Wait 2 seconds
5. Click the green "Next" button
6. Repeat for all questions
7. Download Word document automatically

## 🚀 Quick Start (5 minutes)

### Step 1: Install Dependencies
```bash
pip install -r requirements.txt
```

### Step 2: Get Deepgram API Key (Free)
1. Go to https://deepgram.com
2. Sign up (free tier)
3. Get API key
4. Set environment variable:
```bash
export DEEPGRAM_API_KEY="your-deepgram-key"
```

### Step 3: Run the App
```bash
python main.py
```

You'll see:
```
🚀 Starting SLP Form Filler on port 8000
📱 Open http://localhost:8000 in your browser
```

### Step 4: Open in Browser
```
http://localhost:8000
```

Click the microphone button and start speaking! 🎤

## 📁 What's Inside

- `main.py` - FastAPI backend (voice transcription + document generation)
- `index.html` - Web interface with voice recording
- `requirements.txt` - Python dependencies

## 🎯 Key Features

✅ **Web-based** - No phone numbers
✅ **Voice recording** - Click button to record
✅ **Hebrew support** - Full Hebrew STT/TTS
✅ **Auto transcription** - Deepgram converts speech to text
✅ **Document generation** - Word (.docx) files
✅ **Privacy-preserving** - No data sent to external LLMs
✅ **Mobile-friendly** - Works on phones too

## 💰 Costs

- **Deepgram:** Free tier (25 hours/month) - plenty for MVP
- **Hosting:** Local or free tier on Render
- **Total:** $0 to start

## 🆘 Troubleshooting

### "DEEPGRAM_API_KEY not set"
```bash
# Set it:
export DEEPGRAM_API_KEY="your-key-here"
# Then run again:
python main.py
```

### "Microphone not working"
- Make sure you allow browser access to microphone
- Check microphone works in other apps
- Try a different browser

### "Speech not recognized"
- Speak more clearly
- Check language is set to Hebrew
- Try again (sometimes Deepgram needs retry)

### "Port 8000 already in use"
```bash
PORT=8001 python main.py
```

## 📖 Next Steps

1. Read `QUICKSTART.md` (2 min setup)
2. Get Deepgram API key
3. Run the app
4. Open in browser
5. Click microphone and speak
6. Download document

## 🎉 That's It!

No phone infrastructure. No complicated setup. Just:
1. Speak
2. Download
3. Done

Start with the steps above! 🚀

---

## API Endpoints (For Developers)

- `GET /` - Web interface
- `POST /api/transcribe` - Send audio, get text
- `POST /api/generate-document` - Create Word doc
- `GET /download/{filename}` - Download doc
- `GET /api/questions` - Get all questions
- `GET /health` - Health check
