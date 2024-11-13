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

@WebServlet("/deleteBook")
public class DeleteBook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");

        try {
            Connection con = DBConnection.getConnection(); // Using the DBConnection class
            String query = "DELETE FROM books WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id);

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
