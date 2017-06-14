package br.sc.senai.service;

import java.sql.Connection;
import java.sql.SQLException;
 
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
 
public class Singleton
{
  private static Singleton singleInstance;
  private static DataSource dataSource;
  private static Connection dbConnect;
   
  private Singleton()
  {
    try
    {
      Context initContext = new InitialContext();
      Context envContext  = (Context) initContext.lookup("java:/comp/env");
      dataSource       = (DataSource) envContext.lookup("jdbc/memeland");
       
      try
      {
        dbConnect  = dataSource.getConnection();
      }
      catch (SQLException e)
      {
        e.printStackTrace();
      }  
    }
    catch (NamingException e)
    {
      e.printStackTrace();
    }
  }
   
  public static Singleton getInstance()
  {
    if(singleInstance == null)
    {
      synchronized (Singleton.class)
      {
        if(singleInstance == null)
        {
          singleInstance = new Singleton();
        }
      }
    }
 
    return singleInstance;
  }
   
  public static Connection getConnInst()
  {
    try
    {
      dbConnect = dataSource.getConnection();
    }
    catch (SQLException e1)
    {
      e1.printStackTrace();
    }
     
    if(dbConnect == null)
    {
      try
      {
        Context initContext = new InitialContext();
        Context envContext  = (Context) initContext.lookup("java:/comp/env");
        dataSource        = (DataSource) envContext.lookup("jdbc/memeland");    
        try
        {
          dbConnect  = dataSource.getConnection();
        }
        catch (SQLException e)
        {
          e.printStackTrace();
        }  
      }
      catch (NamingException e)
      {
        e.printStackTrace();
      }
    }
     
    return dbConnect;   
  }
}
