# iOS Hourly Notes Shortcut

This guide will help you create an iOS Shortcut that opens your recent notes every hour automatically.

## Overview

This shortcut will:
- Display your most recent notes from the Notes app
- Run automatically every hour using iOS Automation
- Allow you to quickly access and review recent notes throughout the day

## Setup Instructions

### Part 1: Create the Shortcut

1. Open the **Shortcuts** app on your iPhone
2. Tap the **+** button in the top-right corner to create a new shortcut
3. Tap **Add Action**
4. Search for and add the following actions:

#### Action 1: Find Notes
- Search for **"Find Notes"** and add it
- Configure the filter:
  - Tap **"All Notes"**
  - Set **Sort by** to **"Date Modified"**
  - Set **Order** to **"Latest First"**
  - Set **Limit** to **10** (or your preferred number of recent notes)

#### Action 2: Choose from List
- Search for **"Choose from List"** and add it
- Tap on the input field and select **"Notes"** from the previous action
- This will display a list of your recent notes to choose from

#### Action 3: Show Result
- Search for **"Show Result"** and add it
- Tap on the input field and select **"Chosen Item"** from the previous action
- This will open the selected note

5. Tap **Done** in the top-right corner
6. Name your shortcut **"Recent Notes"** (or your preferred name)

### Part 2: Create the Hourly Automation

1. In the Shortcuts app, tap the **Automation** tab at the bottom
2. Tap the **+** button in the top-right corner
3. Select **Create Personal Automation**
4. Choose **Time of Day**
5. Configure the automation:
   - Set **Time of Day** to your preferred starting hour (e.g., 9:00 AM)
   - Set **Repeat** to **Hourly**
   - Optionally, set a time range (e.g., 9:00 AM - 9:00 PM) to avoid notifications at night
6. Tap **Next**
7. Tap **Add Action**
8. Search for **"Run Shortcut"**
9. Tap **Shortcut** and select **"Recent Notes"** (the shortcut you created in Part 1)
10. Tap **Next**
11. **IMPORTANT**: Turn OFF **"Ask Before Running"** if you want it to run automatically
    - If this is ON, you'll receive a notification but need to tap it to run
    - If this is OFF, it will run automatically and show the notes list
12. Tap **Done**

## How It Works

- Every hour (at your configured times), the automation will trigger
- The shortcut will find your 10 most recently modified notes
- A list will appear showing these notes
- Tap any note to open it in the Notes app
- Tap outside the list to dismiss it

## Customization Options

### Change the Number of Recent Notes
In the "Find Notes" action, change the **Limit** value to show more or fewer notes.

### Filter by Folder
In the "Find Notes" action:
1. Tap the filter settings
2. Add a condition: **Folder is [Your Folder Name]**

### Show Note Previews
Before the "Choose from List" action, add:
- **"Get Details of Notes"** action to extract note text
- This will show note previews in the selection list

### Alternative: Open Most Recent Note Directly
If you want to directly open the most recent note without choosing:
1. Remove the "Choose from List" action
2. Change "Show Result" to **"Open Note"**
3. Set the note to **"Notes"** from the Find Notes action
4. Add a **"Get Item from List"** action set to **"First Item"** before opening

### Change Notification Style
In the Automation settings:
- **Ask Before Running: ON** - Shows a notification you must tap
- **Ask Before Running: OFF** - Runs silently and shows the note list automatically

## Troubleshooting

### The automation doesn't run
- Check that the automation is enabled (toggle should be green)
- Ensure "Ask Before Running" is set according to your preference
- Check that your iPhone is unlocked at the trigger time (some automations require this)

### Notes don't appear
- Make sure you have notes in your Notes app
- Check that the Notes app has permission to be accessed by Shortcuts
- Verify the folder filter if you've set one

### Want to test immediately?
1. Go to the Shortcuts tab
2. Tap your "Recent Notes" shortcut
3. It will run immediately so you can test the functionality

## Integration with Foam Notes

If you're syncing your Foam notes to iCloud Notes or another notes app:
1. Make sure your markdown files are being synced to the Notes app
2. Consider using a dedicated folder for Foam notes
3. Add a folder filter in the "Find Notes" action to only show Foam notes

## Additional Ideas

- **Add a notification**: Add a "Show Notification" action before showing the list
- **Log note opens**: Add a "Log to File" action to track which notes you access
- **Combine with other apps**: Instead of Notes, search for and open recent files in other apps like Bear, Notion, or Obsidian

---

## Quick Import (Alternative Method)

You can also create this shortcut by importing it directly:

1. Create the shortcut manually following the steps above, OR
2. If you have the shortcut URL, tap it on your iPhone to import automatically

---

**Note**: iOS Shortcuts and Automations require iOS 14 or later. Some features may vary based on your iOS version.
