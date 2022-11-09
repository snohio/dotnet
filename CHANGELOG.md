# dotnet CHANGELOG

This file is used to list changes made in each version of the dotnet cookbook.

## 0.2.5

- Tested with Client 18 - All is good, no changes were needed.

## 0.2.2

- **Added Upgrade and tested against Windows 2019**
- Added Attribute for the Upgrade Binary path
- Added a DotNet Compliance Profile to the cookbook
- Bug fix for Attributes where there needed to be a `else return` line
- Added a sleep to kill the run in Test kitchen

## 0.1.2

Initial release.

- Detects the version of DotNet based on Registry.
- Logs whether an upgrade is needed or not.
- Specifies for Framework but open to expand to core.
