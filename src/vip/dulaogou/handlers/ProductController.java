package vip.dulaogou.handlers;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import vip.dulaogou.beans.Product;
import vip.dulaogou.beans.User;
import vip.dulaogou.service.IProductService;
import vip.dulaogou.utils.Utils;

@Controller
public class ProductController {
	@Autowired
	@Qualifier("productService")
	private IProductService service;

	public void setService(IProductService service) {
		this.service = service;
	}

	@RequestMapping("/uploadproductinfo.do")
	public String doUploadProductInfo(Product product, HttpServletRequest request, HttpSession session) throws IllegalStateException, IOException{
		CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
		//检查form中是否有enctype="multipart/form-data"
		if(multipartResolver.isMultipart(request)){
			//将request变成多部分request
			MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
		   //获取multiRequest 中所有的文件名
			Iterator iter=multiRequest.getFileNames();
			
			while(iter.hasNext()){
				//一次遍历所有文件
				MultipartFile file = multiRequest.getFile(iter.next().toString());
				if(file!=null){
					Integer nowUserId = ((User) request.getSession().getAttribute("nowUser")).getUid();
					String path = "image/productimages/" + 
									nowUserId.toString() + "/" + 
									Utils.getRandomMath(1001, Integer.MAX_VALUE).toString() + 
									file.getOriginalFilename();
					
					product.setPpicloc(path);
					//上传
					file.transferTo(new File("D:/Program Files/apache-tomcat-9.0.37-windows-x64/apache-tomcat-9.0.37/webapps/shoppingmall/" + path));
				}
				
			}
		  
		}
		product.setPpublisherid(((User) session.getAttribute("nowUser")).getUid());
		product.setPdate(new Date(System.currentTimeMillis()));
		service.addProduct(product);
		
		return "redirect:/main.jsp";
	}
	
	@RequestMapping("/publishedproducts.do")
	public String doPublishedProducts(HttpServletRequest request){
		List<Product> publishedProducts = service.getPublishedProductsById(((User) request.getSession().getAttribute("nowUser")).getUid());
		request.setAttribute("publishedProducts", publishedProducts);
		return "/getmysold.do";
	}
	
	@RequestMapping("/getoneproduct.do")
	public String doGetOneProduct(@RequestParam String pid, HttpServletRequest request){
		Product product = service.getProductById(Integer.valueOf(pid));
		request.setAttribute("product", product);
		return "/getpublishername.do";
	}
	
	@RequestMapping("/deleteproduct.do")
	public String doDeleteProduct(@RequestParam String pid){
		service.deleteProductById(Integer.valueOf(pid));
		return "/publishedproducts.do";
	}
	
	@RequestMapping("/toupdate.do")
	public String doToUpdate(@RequestParam String pid, HttpServletRequest request){
		Product product = service.getProductById(Integer.valueOf(pid));
		request.setAttribute("nowProduct", product);
		return "/WEB-INF/jsp/updateproduct.jsp?pid=" + pid;
	}
	
	@RequestMapping("/updateproduct.do")
	public String doUpdateProduct(@RequestParam String pid, Product product){
		product.setPid(Integer.valueOf(pid));
		service.updateProduct(product);
		return "/publishedproducts.do";
	}
	
	@RequestMapping("/getrandomproducts.do")
	public String doGetRandomProducts(HttpServletRequest request){
		List<Product> randomProducts = service.getRandomProducts();
		request.setAttribute("randomProducts", randomProducts);
		return "/main.jsp";
	}
	
	@RequestMapping("/searchproduct.do")
	public String doSearchProduct(@RequestParam(defaultValue="", name="keywords", required=false) String keywords, HttpServletRequest request){
		Set<String> keywordsSet = new HashSet<String>();
		for(String keyword : keywords.trim().split(" ")){
			keywordsSet.add(keyword);
		}
		List<Product> searchedProducts = service.getProductsByKeywordsSet(keywordsSet);
		request.setAttribute("searchedProducts", searchedProducts);
		request.setAttribute("keywords", keywords);
		return "/search.jsp";
	}
	
	@RequestMapping("/updateproductnum.do")
	public String doUpdateProduct(@RequestParam(name="pid")int pid, @RequestParam(name="num")int pnum, @RequestParam(name="cid")int cid){
		Product product = new Product();
		product.setPid(pid);
		product.setPnum(pnum);
		service.updateProductNum(product);
		return "redirect:/deletecart.do?cid=" + cid;
	}
}
