# Enterprise Spring MVC Reference Application

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen?style=flat-square&logo=jenkins)](file:///Users/aleksandrandreichenko/work/github/SpringMVC/Jenkinsfile)
[![Java Version](https://img.shields.io/badge/Java-1.8-blue?style=flat-square&logo=java)](https://www.oracle.com/java/)
[![Spring Framework](https://img.shields.io/badge/Spring-4.3.30.RELEASE-6DB33F?style=flat-square&logo=spring)](https://spring.io/)
[![Hibernate ORM](https://img.shields.io/badge/Hibernate-5.0.1.Final-59666C?style=flat-square&logo=hibernate)](https://hibernate.org/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

A comprehensive reference template and educational application demonstrating the integration of **Spring MVC**, **Spring Security**, **Spring Data JPA**, **Hibernate ORM**, **Quartz Scheduler**, and various utility modules. 

The application is structured to show best practices for enterprise Java web applications, integrating a Java backend with a front-end designed using Bootstrap and jQuery.

---

## 🚀 Key Modules & Features Demonstrated

This repository serves as a code kitchen showing implementations for a wide variety of enterprise features:

* **🔐 Authentication & Security:** Web security configuration, role-based access control (`@RolesAllowed`, `@PermitAll`), and JSP tag libraries using Spring Security.
* **⚡ RESTful Web Services:** REST controllers returning dynamic JSON/XML payloads.
* **💾 Data Access & ORM:** Database integration using Spring JDBC and Hibernate ORM with JPA Repositories running on an embedded HSQLDB database.
* **⏱ Job Scheduling:** Time-based task automation using the Quartz Scheduler and Spring `@Scheduled` annotations.
* **📄 Document Generation:** Dynamic creation of Excel sheets (using Apache POI) and PDF files (using iText) rendered directly to the client.
* **✉️ Email Notifications:** Automated mail dispatching using JavaMailSender combined with Velocity email templates.
* **📁 File Management:** Multipart file upload handling with Apache Commons FileUpload.
* **🛡 Validation & Exception Handling:** Server-side request validation using Hibernate Validator and custom global exception handling pages.
* **🍪 Cookies & Interceptors:** Handling client-side state and intercepting requests dynamically.

---

## 🛠 Technology Stack

### Backend
* **Language/Runtime:** Java 1.8
* **Core Framework:** Spring Framework `4.3.30.RELEASE` (MVC, JDBC, Context Support, Test)
* **Security:** Spring Security `5.7.13`
* **Data Access:** Spring Data JPA `1.11.23.RELEASE` & Hibernate `5.0.1.Final`
* **Scheduler:** Quartz Scheduling `2.3.2`
* **Embedded Database:** HSQLDB `2.7.1`
* **Document Utils:** Apache POI `4.1.1` (Excel), iText `2.1.5` (PDF)
* **Email & Templating:** JavaMail `1.4.7` & Apache Velocity `2.0`
* **Testing:** JUnit `4.13.1` & Spring Test

### Infrastructure & CI/CD
* [pom.xml](file:///Users/aleksandrandreichenko/work/github/SpringMVC/pom.xml) - Maven build configuration with dependency management.
* [Jenkinsfile](file:///Users/aleksandrandreichenko/work/github/SpringMVC/Jenkinsfile) - Pipeline configuring stages for branch check, compiling, testing (`mvn test`), and archiving.
* [Dockerfile](file:///Users/aleksandrandreichenko/work/github/SpringMVC/Dockerfile) - Build instructions preparing a CentOS development environment with OpenSSH.

---

## 📁 Repository Structure

The code is clean, decoupled, and grouped by feature package under `src/main/java/de/frei/springMvc/mvc/`:

```text
de/frei/springMvc/mvc/
├── bean/         # Bean configurations
├── cookie/       # Cookie management examples
├── email/        # Email generation and dispatch templates
├── excelpdf/     # Excel & PDF views and controllers
├── exception/    # Custom exception classes & handlers
├── file/         # File uploading logic
├── interceptors/ # Custom web request interceptors
├── jdbc/         # Direct JDBC helpers
├── jstl/         # JSTL tag support examples
├── orm/          # Hibernate entity mappings and JPA repos
├── quartz/       # Quartz Job & Trigger setup
├── redirect/     # Redirect controller logic
├── rest/         # REST endpoints (JSON/XML)
├── scheduling/   # Spring task scheduling (@Scheduled)
├── scope/        # Request, Session, and Singleton scopes
├── security/     # Spring Security login and role validation
└── service/      # Business logic service layer
```

---

## 🏁 Running the Application

### 1. Prerequisites
* **Java Development Kit (JDK)** 1.8 installed.
* **Apache Maven** installed.

### 2. Build the Application
Compile the codebase and bundle it into a `.war` file:
```bash
mvn clean package
```
This builds the package and generates the deployable artifact inside the `target/` directory.

### 3. Run Unit Tests
Execute the test suites defined in the project:
```bash
mvn test
```

### 4. Deployment
Deploy the generated `SpringMVC.war` package to a servlet container such as **Apache Tomcat** (configured for Java 8) or run it directly through your IDE (IntelliJ IDEA, Eclipse) using a Tomcat run configuration.
