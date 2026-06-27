
# 🏦 BankEase - Banking Management System

A modern and responsive **Bank Management System** developed using **Java, JSP, Servlets, Hibernate (JPA), PostgreSQL, Bootstrap, HTML, CSS, and JavaScript**. The application provides an intuitive interface for managing customer records with complete CRUD functionality while following a clean layered architecture.

This project is currently under active development, and several advanced banking features are planned for future releases.

---

## ✨ Features

- ✅ Register new customers
- ✅ View all customer records
- ✅ Update customer details
- ✅ Delete customer records
- ✅ Google Search integration
- ✅ Responsive and modern user interface
- ✅ Hibernate ORM with JPA
- ✅ PostgreSQL database integration
- ✅ MVC Architecture using JSP & Servlets
- ✅ Bootstrap-based responsive design
- ✅ Layered architecture (Controller → DAO → Entity → Database)

---

## 🛠 Tech Stack

### Backend
- Java
- Servlets
- JSP
- Hibernate (JPA)

### Frontend
- HTML5
- CSS3
- Bootstrap 5
- JavaScript
- Font Awesome

### Database
- PostgreSQL

### Build Tool
- Maven

### Server
- Apache Tomcat 9

---

## 📂 Project Structure

```
BankEase
│
├── Controller
│   ├── RegisterServlet
│   ├── DisplayServlet
│   ├── EditServlet
│   ├── UpdateServlet
│   ├── DeleteServlet
│   └── SearchServlet
│
├── DAO
│   └── BankDao
│
├── Entity
│   └── Bank
│
├── Utility
│   └── JPAUtil
│
├── JSP Pages
│   ├── home.jsp
│   ├── register.jsp
│   ├── display.jsp
│   └── edit.jsp
│
├── CSS
│   └── style.css
│
└── PostgreSQL Database
```

---

## 📸 Current Functionalities

✔ Customer Registration

✔ Customer Record Management

✔ Update Existing Records

✔ Delete Customer Records

✔ Search Integration

✔ Responsive Homepage

✔ Modern Dashboard Design

---

## 🚀 Future Enhancements

This project is actively being enhanced. Upcoming features include:

- 🔐 Login & Authentication
- 👤 User Roles (Admin / Employee)
- 💳 Account Management
- 💰 Deposit & Withdrawal
- 🔄 Money Transfer
- 📊 Transaction History
- 📈 Dashboard Analytics
- 🔍 Advanced Search & Filtering
- 📱 Fully Responsive UI
- 🌙 Dark Mode
- 📄 PDF Report Generation
- 📧 Email Notifications
- 📥 Export Customer Data
- 🔒 Enhanced Security & Validation

---

## 🏗 Architecture

```
Presentation Layer (JSP + Bootstrap)
              │
              ▼
Controller Layer (Servlets)
              │
              ▼
Business Logic (DAO)
              │
              ▼
Hibernate ORM
              │
              ▼
PostgreSQL Database
```

---

## 💻 Getting Started

### Clone Repository

```bash
git clone https://github.com/yourusername/BankEase.git
```

### Import Project

- Open Eclipse IDE
- Import Existing Maven Project
- Configure Apache Tomcat
- Configure PostgreSQL Database
- Update `persistence.xml`
- Run the project

---

## 📌 Prerequisites

- Java JDK 8+
- Eclipse IDE
- Apache Tomcat 9
- PostgreSQL
- Maven

---

## 👩‍💻 Developed By

**Divya Wagh**

Java Full Stack Developer

---

## ⭐ Project Status

🚧 **Active Development**

This project is continuously improving with new features, UI enhancements, and better architecture.

Stay tuned for future updates!

---

## 📄 License

This project is developed for learning purposes and portfolio demonstration.
