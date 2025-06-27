# 🎓 Student Management Database Schema

This repository includes a fully modular, professional PostgreSQL schema for managing a university/college academic database, extended with triggers, views, audit logging, and more.

## 📌 Features

- Modularized SQL schema for clarity and maintainability
- Referential integrity through `FOREIGN KEY` constraints
- Input validation using `CHECK` constraints
- Compatible with PostgreSQL (easily portable to others)
- Modular SQL schema (students, courses, attendance, exams)
- Triggers to auto-assign grades
- Views for student-course summaries and attendance analytics
- Audit logging framework
- pgvector support for AI-based semantic search

## 📁 Folder Structure

```
schema/
├── 01_create_students.sql
├── 02_create_courses.sql
├── 03_create_enrollments.sql
├── 04_create_attendance.sql
├── 05_create_exams.sql
├── 06_create_exam_scores.sql
├── 07_create_internal_marks.sql
└── 08_create_final_grades.sql
├── 09_create_views.sql
├── 10_triggers.sql
└── 11_audit_log.sql
```

## 🚀 Getting Started

Run SQL scripts in order:

```sql
\i schema/01_create_students.sql
\i schema/02_create_courses.sql
...
```

## 🛡️ License

Licensed under the MIT License.
