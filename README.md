# 🛒 Dairy Digitization System

A comprehensive Java-based web application for managing a grocery store’s operations, built with a clean, modular structure. This project enables admins to manage inventory, customers, and billing with ease, providing a practical solution for small and medium-sized grocery businesses.

---

## 📸 Screenshots

Here’s a glimpse of the application in action:

| Register Page | Login Page |
|-----------|--------------------|
| ![Home](https://github.com/user-attachments/assets/c5e2cb3c-c8b7-4f1e-8a96-050873f7eb58) | ![Product Management](https://github.com/user-attachments/assets/67aa47f5-7347-4d48-9361-fd5350cf42b7) |

| User Database | Admin Dashboard |
|--------------|-----------------|
| ![Billing](https://github.com/user-attachments/assets/1cc9b704-5b5e-44dc-9184-2c2202e1f9fd) | ![Dashboard](https://github.com/user-attachments/assets/595c767b-6950-4e26-ad43-1fdc5ac3440e) |

| Customer View | Inventory Report |
|----------------|------------------|
| ![Customer](https://github.com/user-attachments/assets/a8ec58f5-c810-4c7c-b264-91b84eaae929) | ![Inventory](https://github.com/user-attachments/assets/5276b663-29e4-44a4-b7eb-14c2b15fb093) |

---

## 🚀 Features

- 🧾 **Billing System** – Generate customer bills and store purchase records.
- 📦 **Inventory Management** – Add, update, and delete products easily.
- 👥 **User Roles** – Admins can manage stock and users; customers can browse and buy.
- 📊 **Reports & Logs** – View inventory levels and sales performance.
- 🔒 **Authentication** – Secure login system for admin and staff users.

---

## 🛠️ Tech Stack

- **Frontend**: JSP, HTML, CSS
- **Backend**: Java Servlets
- **Database**: MySQL
- **Tools**: Eclipse IDE, Apache Tomcat

---

## 🧰 Project Structure

```
GroceryStore/
├── db.properties          # Database configuration
├── Grocery.sql            # SQL script to initialize DB
├── src/                   # Java source files
├── WebContent/            # Frontend assets (JSP, HTML, CSS)
├── Screenshots/           # UI snapshots
```

---

## 🔧 Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/cschauhan0304/dairy_digitization.git
   ```

2. **Import into Eclipse**
   - Open Eclipse
   - File > Import > Existing Projects into Workspace
   - Choose the `GroceryStore` directory

3. **Set up Database**
   - Create a MySQL database
   - Run the `Grocery.sql` file to create tables
   - Update `db.properties` with your DB credentials

4. **Run on Server**
   - Deploy the project on Apache Tomcat
   - Access it via `http://localhost:8080/GroceryStore/`
