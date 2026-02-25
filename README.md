# ActiVR SQL Project

This project contains SQL solutions for the ActiVR Data Engineer practical exam.

## Files

- **01_task1_clean_data.sql**  
  Cleans and formats the `users` table according to business rules.

- **02_task2_events_with_game_id.sql**  
  Fills missing `game_id` values in the `events` table for events before 2021.

- **03_task3_event_biking.sql**  
  Returns users who participated in biking-related events.

- **04_task4_users_game.sql**  
  Aggregates unique users per game type and game ID.

## How to run

1. Open SQL Server Management Studio (SSMS).
2. Connect to your SQL Server instance.
3. Open each `.sql` file and run it.


## Project Tasks Overview

This project consists of four SQL tasks that demonstrate core data engineering skills, including data cleaning, data enrichment, table joins, and analytical aggregation.  
Below is a clear description of each task: what the requirement was and how I approached the solution.

---

### **Task 1 — Data Cleaning & Standardization**
**Requirement:**  
Return a cleaned version of the `users` table without modifying the underlying database. Missing values had to be replaced, data types corrected, and the `workout_frequency` column standardized.

**What I did:**  
- Replaced NULL ages with the average age of all users.  
- Replaced NULL registration dates with `2024-01-01`.  
- Replaced NULL emails with `'Unknown'`.  
- Normalized `workout_frequency` to lowercase and validated it against the allowed values (`minimal`, `flexible`, `regular`, `maximal`).  
- Replaced invalid or missing workout frequencies with `'flexible'`.  
The result is a fully cleaned dataset ready for marketing analysis.

---

### **Task 2 — Data Enrichment for Missing Foreign Keys**
**Requirement:**  
The `events` table was missing `game_id` values for events before 2021. These needed to be filled in using information from the `games` table, without modifying the original data.

**What I did:**  
- Performed a LEFT JOIN between `events` and `games` to access the `game_id` of all `running` games.  
- For events before 2021, replaced missing `game_id` values with the corresponding `running` game ID.  
- Preserved existing `game_id` values for all other events.  
This produced a complete events dataset where every event has a valid game ID.

---

### **Task 3 — Filtering Events by Game Type**
**Requirement:**  
Identify users who participated in events related to `biking` games and return their `user_id` and `event_time`.

**What I did:**  
- Joined `events` with `games` using `game_id`.  
- Filtered the results to include only rows where `game_type = 'biking'`.  
The output is a list of users and timestamps for all biking-related events.

---

### **Task 4 — Aggregation of Unique Users per Game**
**Requirement:**  
Calculate the number of unique users who participated in events for each combination of `game_type` and `game_id`. Entries with missing game types had to be excluded.

**What I did:**  
- Joined `events` and `games` on `game_id`.  
- Filtered out rows where `game_type` was NULL.  
- Counted distinct `user_id` values grouped by both `game_type` and `game_id`.  
The result is an aggregated table showing user engagement per game, useful for reporting and marketing insights.

