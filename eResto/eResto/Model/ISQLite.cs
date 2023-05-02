using SQLite;

namespace eResto.Model
{
    public interface ISQLite
    {
        SQLiteConnection GetConnection();

    }
}
