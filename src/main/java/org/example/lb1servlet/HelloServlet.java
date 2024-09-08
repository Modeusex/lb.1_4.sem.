package org.example.lb1servlet;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final String[] natureImages = {"img/trees/1.jpg", "img/trees/2.jpg", "img/trees/3.jpg", "img/trees/4.jpg", "img/trees/5.jpg"};
    private final String[] carsImages = {"img/cars/1.jpg", "img/cars/2.jpg", "img/cars/3.jpg", "img/cars/4.jpg", "img/cars/5.jpg"};
    private final String[] childrenImages = {"img/children/1.jpg", "img/children/2.jpg", "img/children/3.jpg", "img/children/4.jpg", "img/children/5.jpg"};
    private final String[] foodImages = {"img/food/1.jpg", "img/food/2.jpg", "img/food/3.jpg", "img/food/4.jpg", "img/food/5.jpg"};

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String category = request.getParameter("category");
        int number = Integer.parseInt(request.getParameter("number"));

        String imageSrc = getImageSrc(category, number);

        request.setAttribute("imageSrc", imageSrc);
        request.getRequestDispatcher("/imageDisplay.jsp").forward(request, response);
    }

    private String getImageSrc(String category, int number) {
        switch (category) {
            case "trees":
                return natureImages[number];
            case "cars":
                return carsImages[number];
            case "children":
                return childrenImages[number];
            case "food":
                return foodImages[number];
            default:
                return null;
        }
    }
}
