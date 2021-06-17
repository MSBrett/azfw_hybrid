# Configure Auhentication

For this lab we will be using "pass-through" authentication rather than deploying a directory synchronization solution such as MIM or OKTA to provision the user accounts.  

## Create a user account in Azure Active Directory

Before you can connect to WVD you'll first need to add a user account to your Azure AD Domain.  Once the account is created log onto the Azure Portal using that account so you can reset it's password (in-private mode is helpful for this task).

## Add the UPN suffix to the domain

Next, add a UPN suffix to the windows domain which matches the name of your AAD domain (vanity domain).

![AVD Setup - UPN Suffix](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/UPN_Suffix.png)

## Create a user account in Windows Active Directory

Now it's time to add a matching user to Active Directory.

- Ensure the User Name and UPN Suffix match the account in Azure Active Directory

![Create User](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Create_User_1.png)

- Use the same password as AAD
- *make sure you've logged on to AAD before hand to reset the password*
- Uncheck "User must change password at next logon"
- Check "Password never expires"

![Set Password](https://github.com/MSBrett/azfw_hybrid/raw/master/resources/Create_User_2.png)

## Grant access to Azure Virtual Desktop
