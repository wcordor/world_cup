import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.CallableStatement;
import java.util.Scanner;

public class worldCup {
    // written by William Cordor
    public static void noWCs() {
        // outputs list of countries at Qatar '22 that have never won a World Cup
        String query;
        ResultSet rs;
        query = "{ CALL noWorldCups() }";
        try (Connection conn = mySQL.getConnection();
        CallableStatement stmt = conn.prepareCall(query)) {
            rs = stmt.executeQuery();
            System.out.format("%s %20s", "Country", "Appearances\n");
            System.out.println("---------------------------");
            while (rs.next()) {
                System.out.println(String.format("%-13s %13s", rs.getString("countryName"), rs.getString("Appearances"))
                + "\n---------------------------");
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void matchScorers(String team1, String team2) {
        //Displays all goals from a specific game at Qatar '22
        // Teams must have actually played each other in tournement
        String query;
        ResultSet rs;
        query = "{ CALL scorersInMatch(?, ?) }";
        try (Connection conn = mySQL.getConnection();
        CallableStatement stmt = conn.prepareCall(query)) {
            stmt.setString(1, team1);
            stmt.setString(2, team2);
            rs = stmt.executeQuery();
            System.out.format("%s %28s %28s", "Scoring Team", "Goalscorer", "Minute Scored\n");
            System.out.println("---------------------------------------------------------------------");
            while(rs.next()) {
                System.out.println(String.format("%-26s %-25s %15s'", rs.getString("scoringTeam"), rs.getString("scorerName"),
                rs.getString("minuteScored")) + "\n---------------------------------------------------------------------");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void goalScorers(String player) {
        // displays all goals scored by a specific player
        String query;
        ResultSet rs;
        query = "{ CALL scorerGoals(?) }";
        try (Connection conn = mySQL.getConnection();
        CallableStatement stmt = conn.prepareCall(query)) {
            stmt.setString(1, player);
            rs = stmt.executeQuery();
            System.out.format("%s %20s", "Opponent", "Minute Scored\n");
            System.out.println("----------------------------");
            while(rs.next()) {
                System.out.println(String.format("%-13s %13s'", rs.getString("opponent"), rs.getString("minuteScored")) + 
                "\n----------------------------");
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void scorersForCountry(String country) {
        // displays top scorers from each country
        String query;
        ResultSet rs;
        query = "{ CALL teamScorers(?) }";
        try (Connection conn = mySQL.getConnection();
        CallableStatement stmt = conn.prepareCall(query)) {
            stmt.setString(1, country);
            rs = stmt.executeQuery();
            System.out.format("%s %33s %13s", "Name", "Goals", "Games\n");
            System.out.println("---------------------------------------------------");
            while(rs.next()) {
                System.out.println(String.format("%-25s %10s %14s", rs.getString("scorerName"), rs.getString("goalsScored"),
                rs.getString("Games")) + "\n---------------------------------------------------");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    public static void main(String[] args) {
        String code = null;
        try (Scanner s = new Scanner(System.in)) {
            do {
                // user interface of project
                System.out.println("\nType a number according to the options. Type \"done\" when finished.");
                System.out.println("------------------------------------------------------------------");
                System.out.println("1.) Countries with no World Cups\n");
                System.out.println("2.) Goalscorers in Specific Match\n");
                System.out.println("3.) Players with at least One Goal\n");
                System.out.println("4.) Top Scorers from each Country\n");
                code = s.nextLine();
                System.out.println();
                switch (code) {
                    case "1":
                        noWCs();
                        break;
                    case "2":
                        do {
                            System.out.print("Team 1: ");
                            String uno = s.nextLine();
                            System.out.print("Team 2: ");
                            String dos = s.nextLine();
                            System.out.println();
                            matchScorers(uno, dos);
                            System.out.println("\nEnter any key besides \"1\" to pick another game.");
                            code = s.nextLine();
                            System.out.println();
                        } while (!code.equals("1"));
                        break;
                    case "3":
                        do {
                            System.out.print("Enter the player's name: ");
                            String scorer = s.nextLine();
                            System.out.println();
                            goalScorers(scorer);
                            System.out.println("\nEnter any key besides \"1\" to pick another goal scorer.");
                            code = s.nextLine();
                        } while (!code.equals("1"));
                        break;
                    case "4":
                        do {
                            System.out.print("Enter a Country: ");
                            String nation = s.nextLine();
                            System.out.println();
                            scorersForCountry(nation);
                            System.out.println("\nEnter any key besides \"1\" to pick another country.");
                            code = s.nextLine();
                        } while (!code.equals("1"));
                        break;
                    default:
                        System.out.println("Invalid option. Please type a number 1-4.");
                }
            } while (!code.equals("done"));
        }
    }
}
