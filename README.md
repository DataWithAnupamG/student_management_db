# 🎓 Student Management Database Schema

A professional-grade SQL schema designed to manage academic data like student records, courses, attendance, exams, and grading systems.

## 📌 Features

- Modularized SQL schema for clarity and maintainability
- Referential integrity through `FOREIGN KEY` constraints
- Input validation using `CHECK` constraints
- Compatible with PostgreSQL (easily portable to others)

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
