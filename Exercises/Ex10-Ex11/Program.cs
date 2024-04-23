using System;
using Npgsql;

class Program
{
    static void Main()
    {
        var connString = Environment.GetEnvironmentVariable("CONNECTION_STRING");
        Console.WriteLine($"Connection string: {connString}");
        using var conn = new NpgsqlConnection(connString);
        conn.Open();

        using var cmd = new NpgsqlCommand("SELECT id, name FROM dummy_table", conn);
        using var reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            Console.WriteLine($"id: {reader.GetInt32(0)}, name: {reader.GetString(1)}");
        }
    }
}