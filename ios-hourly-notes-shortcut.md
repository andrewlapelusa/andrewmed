# iOS Hourly Notes Shortcut

## Quick Access

[Open Recent Notes](shortcuts://run-shortcut?name=Recent%20Notes)

---

## One-Time Setup

### 1. Create the Shortcut

[Create New Shortcut](shortcuts://create)

Add these 3 actions:
1. **Find Notes** — Sort by Date Modified, Latest First, Limit 10
2. **Choose from List** — input: Notes from step 1
3. **Show Result** — input: Chosen Item

Name it **"Recent Notes"**.

### 2. Set Hourly Reminder

[Open Automations](shortcuts://automations)

- Tap **+** → **Create Personal Automation** → **Time of Day**
- Set time range and **Repeat: Hourly**
- Add action: **Run Shortcut** → select **"Recent Notes"**
- Turn off **"Ask Before Running"**
