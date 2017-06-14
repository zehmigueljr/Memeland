package br.sc.senai.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {
  public Connection getDBConnection() {
    Connection connection = null;
 
    try {
      connection = DriverManager.getConnection(
          "localhost", "root", "");
    }
    catch (SQLException e) {
      e.getLocalizedMessage(); 
      System.out.println("Falha na conexão!");
      e.printStackTrace();
      return null;
    }
    return connection;
  }
}