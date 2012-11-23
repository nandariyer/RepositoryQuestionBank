using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;

/// <summary>
/// Summary description for dbConnect
/// </summary>
public class dbConnect
{

    private MySqlConnection connection;


    //Constructor
    public dbConnect()
    {
        Initialize();
    }

    //Initialize values
    private void Initialize()
    {
        string connectionString = "";
        connectionString = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
        connection = new MySqlConnection(connectionString);
    }

    //open connection to database
    public bool OpenConnection()
    {
        try
        {
            connection.Open();
            return true;
        }
        catch (MySqlException ex)
        {
            switch (ex.Number)
            {
                case 0:
                    //MessageBox.Show("Cannot connect to server.  Contact administrator");
                    break;

                case 1045:
                    //MessageBox.Show("Invalid username/password, please try again");
                    break;

            }
            return false;
        }

    }

    //Close connection
    private bool CloseConnection()
    {
        connection.Close();
        return true;
    }

    //Insert statement
    public void Insert(String query)
    {

        //open connection
        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);

            //Execute command
            cmd.ExecuteNonQuery();

            //close connection
            this.CloseConnection();
        }

    }

    //Update statement
    public void Update()
    {
    }

    //Delete statement
    public void Delete()
    {
    }

    //Select statement
    //public List<string>[] Select()
    //{
    //}

    //Count statement
    //public int Count()
    //{
    //}

    //Backup
    public void Backup()
    {
    }

    //Restore
    public void Restore()
    {
    }

}