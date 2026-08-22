---
name: log-expenses
type: feature-document
author: sahay-shashank
version: v1.0.0
---

# Log Expenses

> [!IMPORTANT]
>
> To allow application to track expenses, this is a mandatory manual task that the user should perform.

## Overview

This feature enables users to provide details on their expenses.

## Requirements

These following details are required for logging in the expense into Kubera:

| Name            | Description                                                                                          |      Format      | Data Type |  Example   |   Defaults   | Optional |
| :-------------- | :--------------------------------------------------------------------------------------------------- | :--------------: | :-------: | :--------: | :----------: | :------: |
| **Summary**     | Summary helps users to easily identify what the expense was about.                                   |  alpha-numeric   |   text    |    Eggs    |              |    N     |
| **Category**    | Category allows categorizing the expense in common groups.                                           |  alpha-numeric   | dropdown  |  Grocery   |              |    N     |
| **Amount**      | Amount spent on the expenditure. This allows budgetting on categories and calculating daily expense. |     currency     |  number   |   10.00    |     0.00     |    N     |
| **Description** | Additional details about the expense helps users understand intent for the expenditure.              |  alpha-numeric   |   text    | For a cake |              |    Y     |
| **Date**        | Date allows users to query Kubera on a specific date.                                                |    DD/MM/YYYY    |   Date    | 10/02/2026 | Current Date |    Y     |
| **Time**        | Time allows Kubera to display date-time sorted expenses according to the query.                      | HH:MM (24 Hours) |   Time    |   10:00    | Current Time |    Y     |

> [!INFORMATION]
>
> - Currency is dependent on nationality by default. If currency provided in user settings, currency will take precendence.
> - Time and Date are stored as a timestamp. This timestamp is internal stored as UTC but displayed according to local timezone. Configurable from user settings.
