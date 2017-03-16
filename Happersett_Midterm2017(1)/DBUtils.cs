using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using midterm.BLL;
using System.Linq;
using System.Web;

namespace midterm.DAL
{
    public class SQLDataAccessLayer
    {
        private static readonly string _connectionString = string.Empty;

        public List<Movie> MovieSelectAll()
        {
            List<Movie> colMovies = new List<Movie>();

            SqlConnection con = new SqlConnection(_connectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;

            cmd.CommandText = "SELECT MovieID, MovieTitle FROM Movies";

            using (con)
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    colMovies.Add(new Movie(
                        (int)reader["MovieID"],
                        (string)reader["MovieTitle"]));
                }
            }
            return colMovies;

        }

        public void MovieInsert( Movie newMovie)
        {
            SqlConnection con = new SqlConnection(_connectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT Movies (MovieTitle) VALUES (@Movietitle)";

            cmd.Parameters.AddWithValue("@MovieTitle", newMovie.Name);

            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}