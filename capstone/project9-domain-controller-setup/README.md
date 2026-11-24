# Project 9: Domain Controller Setup

## Goal
Configure Windows Server Active Directory Domain Services (AD DS) and verify domain user authentication.

## Steps Executed

1. Installed the Active Directory Domain Services (AD DS) role on Windows Server.
2. Promoted the server to a Domain Controller and created the `project9.local` forest.
3. Added domain user accounts (`user1` and `user2`) through Active Directory Users and Computers.
4. Validated domain authentication by logging in with the created users and verifying their identities.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `net user /domain` | Lists the user accounts available in the Active Directory domain. |
| `net user user1 "Password@123!" /domain /active:yes` | Sets or updates the domain user password and enables the account. |
| `whoami` | Displays the currently authenticated user account. |
| `runas /user:PROJECT9\user1 "cmd /k whoami"` | Opens a command prompt using the specified domain user credentials. |

## Validation Summary

- Confirmed successful AD DS installation and domain controller promotion.
- Verified creation of the `project9.local` domain.
- Validated successful creation of domain user accounts.
- Confirmed domain authentication using `whoami` and `runas`.

## Deliverables
- Login proof screenshots showing `project9\user1` and `project9\user1` (`screenshots/`)