package com.test.database;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.test.util.DBConnection;

@WebServlet("/updateBook")
public class UpdateBook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String category = request.getParameter("category");
        String total_page = request.getParameter("total_page");

        try {
            Connection con = DBConnection.getConnection(); // Using the DBConnection class
            String query = "update books set total_page=?, author=?, category=? , title=? where id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, total_page);
            ps.setString(2, author);
            ps.setString(3, category);
            ps.setString(4, title);
            ps.setString(5, id);

            RequestDispatcher rd = request.getRequestDispatcher("Book_data.jsp");

            int rowCount = ps.executeUpdate();

            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
