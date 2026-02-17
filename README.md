# rConfig Essentials – Device Migration (v6 → v8)

This repository contains practical scripts and guides for working with **rConfig**.  
The first contribution is a **device migration script** that helps move records from **rConfig v6** into **rConfig v8**.

---

## 🚀 What This Script Does
- Extracts all device records from your **rConfig v6** database.
- Generates clean `INSERT` statements compatible with **rConfig v8**.
- Handles `NULL` values gracefully (no broken inserts).
- Ensures string values are properly quoted without double-quoting issues.

---

## 🛠 Usage
1. Connect to your **rConfig v6** database.
2. Run the provided SQL script (`migrate_devices_v6_to_v8.sql`).
3. Copy the generated output into a `.sql` file.
4. Run that file against your **rConfig v8** database:
   ```bash
   mysql -u <user> -p rconfig_v8 < migrate_output.sql
