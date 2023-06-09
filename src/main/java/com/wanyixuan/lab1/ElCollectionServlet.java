package com.wanyixuan.lab1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ElCollectionServlet", value = "/elc")
public class ElCollectionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //string
        String[] firstName = {"Bill", "Scott", "Larry"};
        //ArrayList
        List<String> lastName = new ArrayList<>();
        lastName.add("Ellison");
        lastName.add("Gates");
        lastName.add("McNealy");
        //Map
        Map<String, String> company = new HashMap<String, String>();
        company.put("Ellison", "Wan");
        company.put("Gates", "yixuan");
        company.put("McNealy", "wanwan");
        // set as request attribute
        request.setAttribute("fName", firstName);
        request.setAttribute("lName", lastName);
        request.setAttribute("company", company);
        //forward
        request.getRequestDispatcher("elcollection.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
