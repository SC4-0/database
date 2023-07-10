# database

Since this is still in development, I haven't changed it to a Dockerfile yet.

1. Pull and run a SQL Server Docker container, mounting the working directory as a volume. Change the MSSQL_SA_PASSWORD as appropriate and save it. 

Note that your password must be at least eight characters long and contain characters from three of the following four sets: uppercase letters, lowercase letters, base-10 digits, and symbols, or the container will exit automatically.

On Windows:
`docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<your_mssql_sa_password>" -p 1433:1433 --name sql1 -v %cd%:/home -d mcr.microsoft.com/mssql/server:2022-latest`

2. Start the container and enter it.
`docker exec -it sql1 bash`

3. Create a data directory. This is used by the setup script to contain the SQL Server file groups.
`mkdir /usr/data`

3. Set up the database using the setup script within the mounted working directory.
`/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '<your_mssql_sa_password>' -i /home/setup.sql`