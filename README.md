# appointments
Create client appointments flutter app

## Project description
A simple app for managing client appointments with time slot generation based on a master’s schedule.

## Main features
* 15-minute time slot grid
* service duration affects availability
* handles appointments, buffers, and breaks
* all slots are always visible
* unavailable slots show a reason:
    * client name
    * not enough time
    * break
* slot selection highlights full service duration
* local storage using Hive

## Getting started
git clone <repo>
cd appointments
flutter pub get
flutter run

## Possible improvements
* add My Appointments screen
* extract slot logic into a separate service
* add more unit tests
* improve UI (better explanations, visuals)
* optimize slot generation
* add backend or Firebase and sync