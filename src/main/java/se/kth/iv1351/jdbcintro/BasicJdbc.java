package se.kth.iv1351.jdbcintro;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/**
 * A small program that illustrates how to write a simple JDBC program.
 * It provides methods for accessing and manipulating a database of rented instruments.
 * The BasicJdbc class provides methods for accessing and manipulating a database of rented instruments.
 * It connects to the database and provides options for the user 
 * to list available instruments, rent instruments and terminate rentals.
 */
public class BasicJdbc {
  private static final String TABLE_NAME = "personTest";
  private static final String TABLE_INSTRUMENT = "rental_of_instrument";
  private static final String COLUMN_STUDENT = "student_id";
  private static final String COLUMN_RENTED = "rented";
  private static final String TABLE_LEASE = "lease_period";
  private static final String COLUMN_ID = "id";
  private static final String COLUMN_TERMINATED = "teminated";
  private static final String COLUMN_RENTEDID = "rental_of_instrument_id";
  private PreparedStatement listInstrumentStmt;
  private PreparedStatement checkLimitStmt;
  private PreparedStatement rentInstrumentStmt;
  private PreparedStatement updateLeaseStmt;
  private PreparedStatement terminateLeaseStmt;
  private PreparedStatement terminateRentalStmt;
  private PreparedStatement terminateRentalStmt2;



  /**
   * Connects to the database and provides options for the user to 
   * list available instruments, rent instruments and terminate rentals.
   */
  private void accessDB() {
    try (Connection connection = createConnection()) {
      connection.setAutoCommit(false);
      createTable(connection);
      prepareStatements(connection);
      Scanner scanner = new Scanner(System.in);

      System.out.println("\n \n Task 1. List instruments" +
                            "\n Task 2. Rent instrument" +
                            "\n Task 3. Terminate rental" +
                            "\n Option 4. Exit website");
      int task = scanner.nextInt();
      switch(task) {
        case 1:
          System.out.println("What instrument?");
          String instrument = scanner.next();

          listInstrumentStmt.setString(1, instrument);
          listInstrumentStmt.setString(2, "No");

          listAllInstruments();
          break;
        case 2:
          System.out.println("What is your student id?");
          int studentId = scanner.nextInt();
          System.out.println("What instrument would you like to rent?");
          int instrumentId = scanner.nextInt();


          checkLimitStmt.setInt(1, studentId);

          rentInstrumentStmt.setInt(1, studentId);
          rentInstrumentStmt.setString(2, "Yes");
          rentInstrumentStmt.setInt(3, instrumentId);

          updateLeaseStmt.setInt(1, instrumentId);
          updateLeaseStmt.setInt(2, 2);
          updateLeaseStmt.setDate(3,  java.sql.Date.valueOf("2021-05-17"));
          updateLeaseStmt.setString(4, "False");

          checkLimit(connection);

          break;
        case 3:
          System.out.println("What instrument would you like to return?");
          int terminateInstrumentId = scanner.nextInt();

          terminateLeaseStmt.setString(1,"True");
          terminateLeaseStmt.setInt(2,terminateInstrumentId);
          terminateLeaseStmt.setString(3,"False");

          //terminateRentalStmt.setString(1, "No");
          //terminateRentalStmt.setInt(2, terminateInstrumentId);

          terminateRentalStmt2.setString(1, "No");
          terminateRentalStmt2.setInt(2, terminateInstrumentId);

          terminateRental(connection);

          break;
        case 4:
          System.out.println("You have left the Soundgood music website");

          break;
        default:
          System.out.println("!!WRONG INPUT!!");
      }
    } catch (SQLException | ClassNotFoundException exc) {
      exc.printStackTrace();
    }
  }

  /**
   * Creates a database connection to a PostgreSQL database.
   *
   * @return a Connection object representing the connection to the database.
   * @throws SQLException if a database access error occurs.
   * @throws ClassNotFoundException if the Postgres driver class cannot be found.
   */
  private Connection createConnection() throws SQLException, ClassNotFoundException {
    Class.forName("org.postgresql.Driver");
    return DriverManager.getConnection("jdbc:postgresql://localhost:5432/databas7",
            "postgres", "example");
    // Class.forName("com.mysql.cj.jdbc.Driver");
    // return DriverManager.getConnection(
    // "jdbc:mysql://localhost:3306/simplejdbc?serverTimezone=UTC",
    // "root", "javajava");
  }

  /**
   * Creates a new table in the database if it does not already exist.
   *
   * @param connection a Connection object representing the connection to the database.
   * @throws SQLException if a database access error occurs.
   */
  private void createTable(Connection connection) {
    try (Statement stmt = connection.createStatement()) {
      if (!tableExists(connection)) {
        stmt.executeUpdate(
                "create table " + TABLE_NAME + " (name varchar(32) primary key, phone varchar(12), age int)");
      }
    } catch (SQLException sqle) {
      sqle.printStackTrace();
    }
  }

  /**
   * Checks whether the specified table exists in the database.
   *
   * @param connection a Connection object representing the connection to the database.
   * @return true if the table exists in the database; false otherwise.
   * @throws SQLException if a database access error occurs.
   */
  private boolean tableExists(Connection connection) throws SQLException {
    DatabaseMetaData metaData = connection.getMetaData();
    ResultSet tableMetaData = metaData.getTables(null, null, null, null);
    while (tableMetaData.next()) {
      String tableName = tableMetaData.getString(3);
      if (tableName.equalsIgnoreCase(TABLE_NAME)) {
        return true;
      }
    }
    return false;
  }

  /**
   * Lists all the instruments stored in the database.
   *
   * @throws SQLException if a database access error occurs.
   */
  private void listAllInstruments() {
    try (ResultSet instruments = listInstrumentStmt.executeQuery()) {
      while(instruments.next()) {
        System.out.println("Id: " + instruments.getInt(1) +
                          ", Type: " + instruments.getString(2) +
                          ", Brand: " + instruments.getString(3) +
                          ", Price: " + instruments.getInt(4));


        System.out.println();
        System.out.println();

      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  /**
   * Checks the number of rented instruments of the user 
   * and allows renting a new instrument if the limit is not reached.
   * @param connection the database connection
   * @throws SQLException if an SQL exception occurs while executing the query
   */
  private void checkLimit (Connection connection) throws SQLException {
    //int checkValeu1 = 1;
      int checkValeu2 = 2;
    //int checkValeu3 = 3;
    try(ResultSet nrOfInstrumentsRented = checkLimitStmt.executeQuery()){
      while(nrOfInstrumentsRented.next()) {
        System.out.println("Count: " + nrOfInstrumentsRented.getInt(1));

        /* //Endast Tester
        if (nrOfInstrumentsRented.getInt(1) == checkValeu2) {

          System.out.println("Test 1");
        } else if (nrOfInstrumentsRented.getInt(1) <= checkValeu) {
          System.out.println("Test 2");
        }

        */

        if(nrOfInstrumentsRented.getInt(1) < checkValeu2){
          System.out.println("You have rented " +
                   nrOfInstrumentsRented.getInt(1) + " instrument(s)");

          rentInstrumentStmt.executeUpdate();
          updateLeaseStmt.executeUpdate();
          System.out.println("Instrument has been rented");
          connection.commit();

        } else{
          System.out.println("You have already rented 2 instruments");
        }
      }
    }catch(SQLException e){
      e.printStackTrace();
      connection.rollback();
    }
  }

  /**
   * Terminates the rental contract for the user and updates the database accordingly.
   * @param connection the database connection
   * @throws SQLException if an SQL exception occurs while executing the query
   */
  private void terminateRental(Connection connection) throws SQLException {
    try {
      terminateLeaseStmt.executeUpdate();
      terminateRentalStmt2.executeUpdate();
      connection.commit();
      System.out.println("Your rental has been terminated");

    } catch(SQLException e) {
      e.printStackTrace();
      connection.rollback();
      System.out.println("Rental was not found");
      //System.out.println("Fel 5 i  terminateRental ");

    }
  }

/*

  private void rentAnInstrument(Connection connection) throws SQLException{
    try (ResultSet rentedInstrument = rentInstrumentStmt.executeQuery()){
      while(rentedInstrument.next()){
        System.out.println("Test 1");
        rentInstrumentStmt.executeUpdate();
        connection.commit();
      }
    } catch(SQLException e) {
      System.out.println("Test 2");

      e.printStackTrace();
      connection.rollback();
    }

    try(ResultSet updateLease = updateLeaseStmt.executeQuery()){
      while(updateLease.next()){
        System.out.println("Test 3");
        updateLeaseStmt.executeUpdate();
        connection.commit();
      }
    } catch(SQLException e) {
      System.out.println("Test 4");
      e.printStackTrace();
      connection.rollback();
    }

  }

 */

  /**
   * Prepares statements for database queries and updates.
   * @param connection the database connection to use
   * @throws SQLException if a database access error occurs
   */
  private void prepareStatements(Connection connection) throws SQLException {

    // Selects all instruments of a specific type that are not currently rented
    listInstrumentStmt = connection.prepareStatement("SELECT * FROM " + TABLE_INSTRUMENT + " WHERE type_of_instrument = ? AND rented = ?");
    
    // Selects the number of instruments a specific student has rented
    checkLimitStmt = connection.prepareStatement("SELECT COUNT (" + TABLE_INSTRUMENT + "." + COLUMN_STUDENT + ")"
                                                   + " FROM " + TABLE_INSTRUMENT +
                                                     " WHERE "  + TABLE_INSTRUMENT + "." + COLUMN_STUDENT + " = ?");

    // Updates an instrument's rented and student columns after rental
    rentInstrumentStmt = connection.prepareStatement("UPDATE " + TABLE_INSTRUMENT + " SET " + COLUMN_STUDENT + " = ?," + COLUMN_RENTED + " = ? WHERE " +
                                                       TABLE_INSTRUMENT + "." + COLUMN_ID + " = ?");

    // Inserts a new rental record into the lease table
    updateLeaseStmt = connection.prepareStatement("INSERT INTO " + TABLE_LEASE +  " (rental_of_instrument_id, max_lease_period, start_of_rental, teminated)" +
                                                  "VALUES ( ?,?,?,?) ");

    // Updates the terminated column of a rental record to indicate that it has ended
    terminateLeaseStmt = connection.prepareStatement("UPDATE " + TABLE_LEASE + " SET " + COLUMN_TERMINATED + " = ? WHERE " +
                                                    COLUMN_RENTEDID + " = ? AND " + COLUMN_TERMINATED + " = ?");

    // Updates an instrument's rented column to indicate that it has been returned
    terminateRentalStmt = connection.prepareStatement("UPDATE " + TABLE_INSTRUMENT + " SET " + COLUMN_RENTED +
                                                      " ? WHERE " + COLUMN_ID + " = ?");


    // Updates the rented column of a rental record to indicate that the instrument has been returned
    terminateRentalStmt2 = connection.prepareStatement("UPDATE rental_of_instrument SET rented = ? WHERE id = ?");
  }

  /**
   * Main method to access the database and execute queries.
   * Creates an instance of BasicJdbc and calls the accessDB method.
   * @param args the command-line arguments
   */
  public static void main(String[] args) {

    new BasicJdbc().accessDB();

  }
}