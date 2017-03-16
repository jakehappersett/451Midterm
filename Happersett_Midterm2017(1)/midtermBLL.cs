using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using midterm.DAL;

namespace midterm.BLL
{
    public class Movie
    {
        private int _id = 0;
        private string _name = String.Empty;

        public int Id
        {
            get { return _id; }
        }
        public string Name
        {
            get { return _name; }
        }

        public static List<Movie> SelectAll()
        {
            SQLDataAccessLayer dataAcessLayer = new SQLDataAccessLayer();
            return dataAcessLayer.MovieSelectAll();

        }

        public static void Update( int id, string name)
        {
            Movie movieToUpdate = new Movie( id, name);
            movieToUpdate.Save();
        }

        public static void Insert(string name)
        {
            Movie newMovie = new Movie(name);
            newMovie.Save();

        }

        public static void Delete(int id)
        {
            SQLDataAccessLayer dataAccessLayer = new SQLDataAccessLayer();
            dataAccessLayer.MovieDelete(id);

        }

        private void Save()
        {
            SQLDataAccessLayer dataAccessLayer = new SQLDataAccessLayer();
            if (_id > 0)
                dataAccessLayer.MovieUpdate(this);
            else
                dataAccessLayer.MovieInsert(this);
        }

        public Movie(int id, string name)
        {
            _id = id;
            _name = name;
        }

    }
}