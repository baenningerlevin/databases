# Installation

Zuerst installieren wir über die offizielle SQL-Server-Webseite den
Installer: [SQL-Server](https://www.microsoft.com/de-ch/sql-server/sql-server-downloads)

Danach führen wir die Datei aus und stimmen allem Rechtlichen zu. Den Installationsort belassen wir ebenfalls beim Standard.

Dann klicken wir im Abschlussfenster zunächst auf <ui-path>Jetzt verbinden</ui-path>. Danach öffnen wir den SQL Server Configuration Manager. Dort
starten wir in den <ui-path>SQL Server Services</ui-path> den `SQL Server (SQLEXPRESS)` über die rechte Maustaste. Danach gehen wir in die
Eigenschaften und ändern den <ui-path>Start Mode</ui-path> auf `Manual`.

## Visual Studio Code

In VSCode installieren wir die Extension `SQL Server (mssql)`. Danach wählen wir in der Menüleiste das SQL Server Symbol aus. Dort gehen wir auf
<ui-path>Add Connection</ui-path> danach geben wir oben folgendes Schema ein: `PC_Name\SQLEXPRESS` drücken Enter, wählen noch keine Datenbank aus, 
sagen beim Login <ui-path>Integrated</ui-path> und drücken erneut zweimal die Enter-Taste.