using System;
Console.WriteLine("Example5 - Print env var");
Console.WriteLine($"Connection-String: {Environment.GetEnvironmentVariable("CONNECTION_STRING")?? "no env var set"}");
