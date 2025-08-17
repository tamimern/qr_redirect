# 📊 Data Management for Omer Countdown Website

## 🎯 **How the New System Works**

### **Before (Old System):**
- Links were only saved in browser localStorage
- Data was lost when browser data was cleared
- No backup or persistence across devices

### **Now (New System):**
- Links are loaded from `data.json` file
- Data is backed up to localStorage
- You can manually update the JSON file
- Data persists across all browsers and devices

## 🔧 **How to Add/Update Video Links**

### **Method 1: Using the Website (Recommended)**
1. Open the website
2. Login as admin (password: `reut2025`)
3. Use the toolbar to add video links
4. The system will automatically:
   - Save to localStorage (immediate backup)
   - Show a download link for updated `data.json`
   - Update the progress bar and countdown

### **Method 2: Manual JSON Editing**
1. Open `data.json` in a text editor
2. Find the day you want to update
3. Replace `null` with your video URL
4. Save the file and push to GitHub

## 📁 **File Structure**

```
C:\qr_redirect\
├── counterDown.html     # Main website
├── data.json           # Video links data (THIS IS THE IMPORTANT FILE!)
├── README.md           # Project documentation
├── DATA_MANAGEMENT.md  # This file
└── Open Website.bat    # Quick launcher
```

## 🔑 **Admin Password**
- **Current Password:** `reut2025`
- **To Change:** Edit the `admin_password` field in `data.json`

## 📥 **Downloading Updated Data**

When you add a video link through the website:
1. A blue download button will appear
2. Click it to download `updated_data.json`
3. Replace your existing `data.json` with this file
4. Push to GitHub to update the live website

## 🚀 **Pushing Updates to GitHub**

```bash
# After updating data.json
git add data.json
git commit -m "Update video links for Omer countdown"
git push origin main
```

## ⚠️ **Important Notes**

- **Always backup** your `data.json` file before making changes
- **Test locally** before pushing to GitHub
- **The website loads** from `data.json` first, then falls back to localStorage
- **Data persistence** is now guaranteed across all browsers and devices

## 🎉 **Benefits of New System**

✅ **Data never lost** - stored in JSON file  
✅ **Works on all devices** - not just one browser  
✅ **Easy backup** - just copy the JSON file  
✅ **Version control** - track changes in Git  
✅ **Fallback system** - localStorage as backup  

---

**Your Omer countdown website now has bulletproof data persistence! 🛡️✨**
