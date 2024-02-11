package com.sms.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class Studentproject {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Scanner s1 = new Scanner(System.in);
        while (true) {
            intro();
            System.out.println("==================");
            System.out.println("Choose the operation");
            int o = s1.nextInt();
            switch (o) {
                case 1:
                    System.out.println("=============");
                    System.out.println("Insert record");
                    insert();
                    break;
                case 2:
                    System.out.println("=============");
                    System.out.println("Update record");
                    edit();
                    break;
                case 3:
                    System.out.println("=============");
                    System.out.println("View record");
                    view();
                    break;
                case 4:
                    System.out.println("=============");
                    System.out.println("Delete record");
                    delete();
                    break;
                case 5:
                    System.out.println("=============");
                    System.out.println("Program Stopped");
                    System.exit(0);
                    break;
                default:
                    System.out.println("=============");
                    System.out.println("Invalid number");
                    break;
            }
        }
    }

    private static void edit() throws SQLException {
        String query = "UPDATE sms_db.student_info SET Name = ?, fname =?, mobile=? WHERE (id =?);";
        String url3 = "jdbc:mysql://localhost:3306/sms_db";
        try (Connection con3 = DriverManager.getConnection(url3, "root", "@Mysql2530");
             PreparedStatement ps = con3.prepareStatement(query)) {
            Scanner s = new Scanner(System.in);
            System.out.println("Select the id to Edit");
            int i = s.nextInt();
            s.nextLine(); // Consume newline character
            System.out.println("Enter name");
            String n = s.nextLine();
            System.out.println("Enter father Name");
            String fn = s.nextLine();
            System.out.println("Enter mobile");
            int mob = s.nextInt();

            ps.setString(1, n);
            ps.setString(2, fn);
            ps.setInt(3, mob);
            ps.setInt(4, i);
            ps.executeUpdate();
            System.out.println("Data Update Successfully....");
        }
    }

    private static void delete() throws SQLException {
        String url4 = "jdbc:mysql://localhost:3306/sms_db";
        try (Connection con4 = DriverManager.getConnection(url4, "root", "@Mysql2530");
             PreparedStatement ps = con4.prepareStatement("DELETE FROM student_info WHERE id=?")) {
            Scanner s = new Scanner(System.in);
            System.out.println("Select id to delete");
            int id = s.nextInt();
            ps.setInt(1, id);
            ps.execute();
            System.out.println("Record is deleted");
        }
    }

    public static void view() throws SQLException {
        String url1 = "jdbc:mysql://localhost:3306/sms_db";
        try (Connection con1 = DriverManager.getConnection(url1, "root", "@Mysql2530");
             Statement st = con1.createStatement();
             ResultSet rs = st.executeQuery("select * from student_info")) {
            System.out.println("ID | Name | father | mobile");
            System.out.println("---------------------------");
            while (rs.next()) {
                System.out.println(rs.getInt(1) + " | " + rs.getString(2) + " |" + rs.getString(3) + " |" + rs.getString(4));
            }
        }
    }

    public static void insert() throws ClassNotFoundException, SQLException {
        Scanner s = new Scanner(System.in);
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url2 = "jdbc:mysql://localhost:3306/sms_db";
        try (Connection con2 = DriverManager.getConnection(url2, "root", "@Mysql2530")) {
            System.out.println("Enter name");
            String n = s.nextLine();
            System.out.println("Enter ur Class");
            String c = s.nextLine();
            System.out.println("Enter ur father Name");
            String f = s.nextLine();
            System.out.println("Enter ur Mobile No:");
            int m = s.nextInt();

            String query = "INSERT INTO student_info(name, fname, mobile) VALUES (?, ?, ?)";
            try (PreparedStatement ps = con2.prepareStatement(query)) {
                ps.setString(1, n);
                ps.setString(2, f);
                ps.setInt(3, m);
                ps.executeUpdate();
                System.out.println("Data inserted Successfully");
            }
        }
    }

    public static void intro() {
        System.out.println("*************************");
        System.out.println("*    STUDENT MODULE     *");
        System.out.println("*************************");
        System.out.println("\n 1. Insert");
        System.out.println("2. Edit");
        System.out.println("3. View");
        System.out.println("4. Delete");
    }
}
