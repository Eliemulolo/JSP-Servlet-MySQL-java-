<img width="1647" height="811" alt="image" src="https://github.com/user-attachments/assets/8e2a0906-7a05-4b69-8cdf-121f0b0c0595" />
# LoginApp

## Description
LoginApp is a simple Java-based web application built using JSP, Servlets, and Maven. The application provides a basic login functionality where users can enter their credentials to access the system. It includes a user-friendly interface and is styled with CSS for a modern look.

---

## Features
- **Home Page (`index.jsp`)**:
  - A welcoming page with a button to navigate to the login page.
  - Styled with a gradient background and animations for a smooth user experience.

- **Login Page (`login.jsp`)**:
  - A form for users to enter their username and password.
  - Displays error messages if login credentials are invalid.
  - Styled with a clean and responsive design.

- **Backend Functionality**:
  - Handles login requests via a `POST` method.
  - Validates user credentials (can be extended to connect to a database).
  - Displays appropriate error messages for invalid login attempts.
 
  - <img width="1647" height="811" alt="image" src="https://github.com/user-attachments/assets/695a2e2a-d6a5-49e5-ae39-a90530b5322f" />


- **Maven Configuration**:
  - Uses Maven for dependency management and project structure.
  - Includes dependencies for Servlet API, JSP API, JSTL, and MySQL JDBC.

---

## Technologies Used
- **Languages**: Java, JSP
- **Build Tool**: Maven
- **Dependencies**:
  - Jakarta Servlet API
  - Jakarta JSP API
  - JSTL
  - MySQL Connector/J
- **Frontend**: HTML, CSS

---

## Project Structure
- `src/main/webapp/index.jsp`: Home page with a button to navigate to the login page.
- `src/main/webapp/login.jsp`: Login page with a form for user authentication.
- `src/main/webapp/WEB-INF/web.xml`: Deployment descriptor for the application.
- `pom.xml`: Maven configuration file for managing dependencies and plugins.

---

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/username/repository-name.git
