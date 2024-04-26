package controller.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ProductController;
import model.ProductModel;
import util.StringUtils;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	ProductController dbProductController = new ProductController();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int product_id = Integer.parseInt(request.getParameter(StringUtils.PRODUCT_ID)) ;
		String product_name = request.getParameter(StringUtils.PRODUCT_NAME);
		int product_qty = Integer.parseInt(request.getParameter(StringUtils.PRODUCT_QUANTITY));
		String product_img = request.getParameter(StringUtils.PRODUCT_IMG);
		String product_description = request.getParameter(StringUtils.PRODUCT_DESCRIPTION);
		int product_price = Integer.parseInt(request.getParameter(StringUtils.PRODUCT_PRICE));
		
		ProductModel productModel = new ProductModel(product_id, product_name, product_qty,
				product_img, product_description, product_price);
		
		int result = dbProductController.addProduct(productModel);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/pages/Ecommerce/admin/product.jsp");
		} else {
			PrintWriter printOut = response.getWriter();
			response.setContentType("text/html");
			printOut.print("Gurasai fulyo");
		}
	}

}
