---
name: user-creation
type: feature-document
version: v1.0.1
---

# Log Expenses

> [!IMPORTANT]  
> To allow the application to log user credentials, this is a mandatory manual task that the user should perform.

## Overview

This feature enables users to create an account and log in to **Kubera**, the budget management application.

## Requirements

The following steps are required for user creation in Kubera:

### 1) Signup

Details needed for signup:

- **Name**
- **Email ID**
- **Phone Number**
- **Salaried or Business** (radio button format)
- **Monthly Income**

After successful signup, the user will receive a confirmation mail from Kubera.

### 2) Login

Details needed for login:

- **Name**
- **Email ID**

---

## Data Specification Table

| **Name**       | **Description**                         |    **Format**    |       **Data Type**       |   **Example**    | **Defaults** | **Optional** |
| :------------- | :-------------------------------------- | :--------------: | :-----------------------: | :--------------: | :----------: | :----------: |
| Name           | Full name of the user                   |       Text       |          String           |     John Doe     |     None     |      No      |
| Email ID       | Unique email address for identification |      Email       |          String           | john@example.com |     None     |      No      |
| Phone Number   | Contact number of the user              |     Numeric      |          Integer          |    9876543210    |     None     |      No      |
| User Type      | Employment type selection               |      Radio       | Enum [Salaried, Business] |     Salaried     |     None     |      No      |
| Monthly Income | Declared monthly income                 |     Numeric      |       Float/Integer       |      50000       |     None     |      No      |
| Confirmation   | Email confirmation sent after signup    | System Generated |          Boolean          |       True       |    False     |      No      |
| Login Name     | Name used during login                  |       Text       |          String           |     John Doe     |     None     |      No      |
| Login Email    | Email ID used during login              |      Email       |          String           | john@example.com |     None     |      No      |

---

## Notes

- Signup is mandatory before login.
- Confirmation email ensures account activation.
- Credentials must be stored securely in compliance with application security standards.
