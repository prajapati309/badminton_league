# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - ruby-3.2.0

* rails version - rails 7.1.6

* Database creation

* Run rails db:seed


This is a **Ruby on Rails** web application to manage a badminton league.  
It allows users to manage players, record match results, and track player rankings.

---

## 🚀 Features

### 1. Player Management
- Add new players.
- Delete existing players.
- View a list of all players.

### 2. Match Tracking
- Record match results between players (winner and loser).
- Validates that a player cannot play against themselves.
- View all recorded matches in descending order of creation.

### 3. Leaderboard / Stats
- Displays wins and losses per player.
- Shows player rankings based on the number of wins.

### 4. User Management & Roles
- Users can have different roles: **Admin**, **Coach**, or **Referee**.
- **Admin** can:
  - Create new users and assign roles.
  - Manage all players.
- **Coach / Referee** can:
  - Record matches.
  - Cannot create or manage users.
- Role-based authorization ensures users only access allowed functionality.

---

## 🏗 Architecture & Stack

- **Backend:** Ruby on Rails 7
- **Authentication:** Devise
- **Frontend:** Basic HTML/CSS with Bootstrap 5 (via CDN)
- **Database:** PostgreSQL


<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-40-08" src="https://github.com/user-attachments/assets/3d47a189-74f4-4e5d-8b88-2d6538b07ab3" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-40-16" src="https://github.com/user-attachments/assets/8e690143-68fa-42e9-a234-3a1d3e23f7fb" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-40-37" src="https://github.com/user-attachments/assets/7db7361b-a478-44e9-8ece-2aebc72bc00d" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-40-46" src="https://github.com/user-attachments/assets/ab6590e6-f06f-4f70-87d3-8f62304d1e6d" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-40-51" src="https://github.com/user-attachments/assets/7eec926b-04b9-468d-9b58-d2f6b3f2a457" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-41-02" src="https://github.com/user-attachments/assets/cf4d7067-3488-4f72-a3be-3439505613a7" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-41-07" src="https://github.com/user-attachments/assets/cc7ca8df-4397-4f3b-901d-d461cc0e7084" />
<img width="1474" height="662" alt="Screenshot from 2026-02-16 21-41-15" src="https://github.com/user-attachments/assets/f3410b9f-fb5f-4b44-982c-4f1be95f4048" />
