import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    public List<Ad> all() throws SQLException {
        List<Ad> ads = new ArrayList<>();
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        Connection connection = DriverManager.getConnection(
                config.getUrl(), config.getUser(), config.getPassword()
        );
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
        while (rs.next()) {
            ads.add(new Ad(
                    rs.getInt("id"), rs.getInt("user_id"), rs.getString("title"), rs.getString("description")
            ));
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        Connection connection = DriverManager.getConnection(
                config.getUrl(), config.getUser(), config.getPassword()
        );
        Statement stmt = connection.createStatement();
        stmt.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
        ResultSet rs = stmt.getGeneratedKeys();
        rs.next();
        return rs.getLong(1);


    }

    private String createInsertQuery(Ad ad) {
        return "INSERT INTO ads(user_id, title, description) VALUES "
                + "(" + ad.getUserId() + ", "
                + "'" + ad.getTitle() + "', "
                + "'" + ad.getDescription() + "')";
    }

}
