/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.controllers;

import com.cosmetic.entities.Category;
import com.cosmetic.entities.Color;
import com.cosmetic.entities.Menu;
import com.cosmetic.entities.Product;
import com.cosmetic.entities.ProductImage;
import com.cosmetic.entities.Provider;
import com.cosmetic.entities.Role;
import com.cosmetic.entities.Size;
import com.cosmetic.entities.User;
import com.cosmetic.models.CategoryModel;
import com.cosmetic.models.ColorAndSizeModel;
import com.cosmetic.models.MenuModel;
import com.cosmetic.models.OrderModel;
import com.cosmetic.models.ProductImageModel;
import com.cosmetic.models.ProductModel;
import com.cosmetic.models.ProviderModel;
import com.cosmetic.models.UserModel;
import java.io.File;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author
 */
@Controller
@RequestMapping(value = "/backend")
public class BackendController {

    private ColorAndSizeModel colorAndSizeModel;
    private ProductModel productModel;
    private UserModel userModel;
    private ProviderModel providerModel;
    private CategoryModel categoryModel;
    private OrderModel orderModel;
    private MenuModel menuModel;
    private ProductImageModel productImageModel;

    public BackendController() {
        colorAndSizeModel = new ColorAndSizeModel();
        productModel = new ProductModel();
        userModel = new UserModel();
        categoryModel = new CategoryModel();
        providerModel = new ProviderModel();
        orderModel = new OrderModel();
        menuModel = new MenuModel();
        productImageModel = new ProductImageModel();
    }

    /**
     * lấy toàn bộ danh sách danh mục
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "getAllCategory")
    public ModelAndView getAllCategory(@RequestParam(value = "page", required = false) String page, 
            HttpServletRequest request, HttpSession session) {
        ModelAndView model;
        model = new ModelAndView("admin/category");
        List<Category> listCategory = categoryModel.getAllCategory();
//        model.getModelMap().put("listCategory", listCategory);
        int limit = 5;
        int range = 3;
        int totalPage = listCategory.size() / limit;
        int currentPage = 0;
        String page1 = request.getParameter("page");
        if(page1 != null) {
            currentPage = Integer.parseInt(page1);
        }
        if(currentPage == 0) {
            currentPage = 1;
        }
        if(totalPage == 0) {
            currentPage = 0;
        }
        if(currentPage > totalPage) {
            currentPage = totalPage;
        }
        
        int currentSection = Common.getCurrentSection(currentPage, range);
        int totalSection = Common.getTotalSection(totalPage, range);
        model.getModelMap().put("currentSection", currentSection);
        model.getModelMap().put("totalSection", totalSection);
        
        List<Integer> getListPage = Common.getListPage(totalPage, currentPage, range);
        model.addObject("getListPage", getListPage);
        
        int minPageSection = getListPage.get(0);
        int maxPageSection = getListPage.get(getListPage.size() - 1);
        model.getModelMap().put("minPageSection", minPageSection);
        model.getModelMap().put("maxPageSection", maxPageSection);
        model.getModelMap().put("currentPage", currentPage);
        
        int offset = (currentPage > 0) ? limit * ((int)currentPage - 1) : 0;
        List<Category> categories = new ArrayList<Category>();
        categories =  categoryModel.getAllCategoryPage(offset, limit);
        model.getModelMap().put("listCategory", categories);

//        int start = (currentPage > 0) ? (int)((currentPage - 1) * limit) : 0;
//        int end = start + limit;
//        List<Category> categories = new ArrayList<Category>();
//        for(int i=start; i<end; i++) {
//            categories.add(listCategory.get(i));
//        }
//        model.getModelMap().put("listCategory", categories);
        return model;
    }

    /**
     * Xử lí khi click vào thêm mới danh mục sản phẩm
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "initInsertCategory")
    public ModelAndView initInsertCategory(HttpSession session) {
        ModelAndView model;
        model = new ModelAndView("admin/insertCategory");
        List<Category> list = categoryModel.getAllCategory();
        Category category = new Category();
        model.getModelMap().put("newCategory", category);
        model.getModelMap().put("listCategory", list);
        return model;
    }

    /**
     * thêm mới danh mục sản phẩm
     *
     * @param category
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertCategory")
    public String insertCategory(@ModelAttribute("newCategory") Category category, ModelMap mm) {
        boolean check = categoryModel.insertCategory(category);
        if (check) {
            return "redirect:getAllCategory.htm";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "admin/insertCategory";
        }
    }

    /**
     * Xử lí khi click vào sửa danh mục sản phẩm
     *
     * @param categoryId
     * @param mm
     * @return
     */
    @RequestMapping(value = "initUpdateCategory")
    public ModelAndView initUpdateCategory(@RequestParam("categoryId") int categoryId) {
        ModelAndView model = new ModelAndView("admin/updateCategory");
        Category category = categoryModel.getCategoryByCategoryId(categoryId);
        List<Category> list = categoryModel.getAllCategory();
        model.getModelMap().put("listCategory", list);
        model.getModelMap().put("updateCategory", category);
        return model;
    }

    /**
     * sửa danh mục sản phẩm
     *
     * @param category
     * @param mm
     * @return
     */
    @RequestMapping(value = "updateCategory")
    public String updateCategory(@ModelAttribute("updateCategory") Category category, ModelMap mm) {
        boolean result = false;
        result = categoryModel.updateCategory(category);
        if (result) {
            return "redirect:getAllCategory.htm";
        } else {
            mm.put("message", "Sửa không thành công.");
            return "admin/updateCategory";
        }
    }

    /**
     * view danh mục sản phẩm
     *
     * @param categoryId
     * @param mm
     * @return
     */
    @RequestMapping(value = "viewCategory")
    public ModelAndView viewCategory(@RequestParam("categoryId") int categoryId) {
        ModelAndView model = new ModelAndView("admin/categoryDetail");
        Category category = categoryModel.getCategoryByCategoryId(categoryId);
        model.getModelMap().put("category", category);
        return model;
    }

    /**
     * Xóa danh mục sản phẩm
     *
     * @param categoryId
     * @param session
     * @return
     */
    @RequestMapping(value = "deleteCategory")
    public String deleteCategory(@RequestParam("categoryId") int categoryId, HttpSession session) {
        boolean result = false;
        result = categoryModel.deleteCategory(categoryId);
        if (result) {
            return "redirect:getAllCategory.htm";
        } else {
            return "admin/Error";
        }
    }

    @RequestMapping(value = "search.htm")
    public ModelAndView searchCategory(@RequestParam("query") String name) {
        ModelAndView model = new ModelAndView("admin/category");
        List<Category> listCategory = categoryModel.serachCategory(name);
        model.addObject("listCategory", listCategory);
        return model;
    }

    /**
     * Lấy toàn toàn bộ màu sắc
     *
     * @return trang Color.jsp
     */
    @RequestMapping(value = "getAllColor")
    public ModelAndView getAllColor() {
        ModelAndView model = new ModelAndView("admin/color");
        List<Color> list = colorAndSizeModel.getAllColors();
        model.getModelMap().put("listColor", list);
        return model;
    }

    /**
     * xử lí sự kiện khi click thêm mới màu sắc
     *
     * @return Trang thêm mới
     */
    @RequestMapping(value = "initInsertColor")
    public ModelAndView initInsertColor() {
        ModelAndView model = new ModelAndView("admin/insertColor");
        Color color = new Color();
        model.getModelMap().put("newColor", color);
        return model;
    }

    /**
     * Thêm mới màu sắc
     *
     * @param color đối tượng thêm mới
     * @param mm đối tượng modelmap
     * @return Chuỗi url
     */
    @RequestMapping(value = "insertColor")
    public String insertColor(@ModelAttribute("newColor") Color color, ModelMap mm) {
        if (colorAndSizeModel.checkColorName(color.getColorName())) {
            mm.put("message", "Tên màu đã tồn tại. Mời bạn chọn tên khác.");
            return "admin/insertColor";
        } else {
            boolean result = false;
            result = colorAndSizeModel.insertColor(color);
            if (result) {
                return "redirect:getAllColor.htm";
            } else {
                mm.put("message", "Thêm mới màu không thành công.");
                return "admin/insertColor";
            }
        }

    }

    /**
     * Xử lí khi click sửa màu sắc
     *
     * @param colorId mã màu cần sửa thông tin
     * @return
     */
    @RequestMapping(value = "initUpdateColor")
    public ModelAndView initUpdateColor(@RequestParam("colorId") int colorId) {
        ModelAndView model = new ModelAndView("admin//updateColor");
        Color color = colorAndSizeModel.getColorByColorId(colorId);
        model.addObject("updateColor", color);
        return model;
    }

    /**
     * Sửa màu sắc
     *
     * @param color đối tượng color cần sửa
     * @param mm đối trượng modelmap
     * @return chuỗi url
     */
    @RequestMapping(value = "updateColor")
    public String updateColor(@ModelAttribute("updateColor") Color color, ModelMap mm) {
        if (colorAndSizeModel.checkExistsColorName(color)) {
            mm.put("message", "Tên màu bị trùng.");
            return "admin/updateColor";
        } else {
            boolean result = false;
            result = colorAndSizeModel.updateColor(color);
            if (result) {
                return "redirect:getAllColor.htm";
            } else {
                mm.put("message", "Sửa màu không thành công.");
                return "admin/updateColor";
            }
        }
    }

    /**
     * Xóa màu sắc
     *
     * @param colorId mà color cần xóa
     * @return
     */
    @RequestMapping(value = "deleteColor")
    public String deleteColor(@RequestParam("colorId") int colorId) {
        boolean result = false;
        result = colorAndSizeModel.deleteColor(colorId);
        if (result) {
            return "redirect:getAllColor.htm";
        } else {
            return "admin/error";
        }
    }
    
    /**
     * view color
     *
     * @param id
     * @param mm
     * @return
     */
    @RequestMapping(value = "viewColor")
    public ModelAndView viewColor(@RequestParam("colorId") int colorId) {
        ModelAndView model = new ModelAndView("admin/colorDetail");
        Color color = colorAndSizeModel.getColorByColorId(colorId);
        model.getModelMap().put("color", color);
        return model;
    }

    /**
     * Lấy toàn bộ danh sách sản phẩm
     *
     * @return trang product.jsp
     */
    @RequestMapping(value = "getAllproduct")
    public ModelAndView getAllProduct() {
        ModelAndView model = new ModelAndView("admin/product");
        List<Product> list = productModel.getAllProduct();
        model.getModelMap().put("listProduct", list);
        return model;
    }

    /**
     *
     * @return
     */
    @RequestMapping(value = "initInsertProduct")
    public ModelAndView initInsertProduct() {
        ModelAndView model = new ModelAndView("admin/insertProduct");
        Product product = new Product();
        List<Provider> listProvider = providerModel.getAllProvider();
        List<Category> listCategory = categoryModel.getAllCategory();
        List<Menu> listMenu = menuModel.getAllMenu();
        model.getModelMap().put("newProduct", product);
        model.getModelMap().put("listCategory", listCategory);
        model.getModelMap().put("listProvider", listProvider);
        model.getModelMap().put("listMenu", listMenu);
        return model;
    }

    /**
     * thêm mới sản phẩm
     *
     * @param product
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertProduct")
    public String insertProduct(@ModelAttribute("newProduct") Product product, ModelMap mm,
            HttpServletRequest request, HttpSession session) {
        List<String> img = new ArrayList<String>();
        String path = request.getRealPath("/jsp/user/img/");
        path = path.substring(0, path.indexOf("\\build"));
        path = path + "\\web\\jsp\\user\\img";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    //path
                    if ("img".equals(fileItem.getFieldName())) {
                        product.setImageLink(fileItem.getName());
                    }

                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = fileItem.getString();
                    if (name.equals("productName")) {
                        product.setProductName(value);
                    } else if (name.equals("description")) {
                        product.setDescription(value);
                    } else if (name.equals("descriptionDetail")) {
                        product.setDescriptionDetail(value);
                    } else if (name.equals("price")) {
                        product.setPrice(Double.parseDouble(value));
                    } else if (name.equals("priceSale")) {
                        product.setPriceSale(Long.parseLong(value));
                    } else if (name.equals("providerId")) {
                        product.setProviderId(Integer.parseInt(value));
                    } else if (name.equals("categoryId")) {
                        product.setCategoryId(Integer.parseInt(value));
                    } else if (name.equals("discount")) {
                        product.setDiscount(Integer.parseInt(value));
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

//        boolean check = productModel.insertProduct(product);
//        
//        if (check) {
//            int id = productModel.getProductIdNew();
//            for (String img1 : img) {
//                 ProductImage productImage = new ProductImage();
//                 productImage.setProductId(id);
//                 productImage.setUrl(img1);
//                 productModel.insertImageLink(productImage);
//            }
//            return "redirect:getAllProductBackend.htm";
//        } else {
//            mm.put("message", "Thêm mới không thành công");
//            return "Fontend/InsertProduct";
//        }
//        User user = (User)session.getAttribute("user");
//        String userName = user.getUserName();
//        String password = user.getPassword();
//        session = request.getSession();
//        String userName = (String)session.getAttribute("userName");
//        String password = (String)session.getAttribute("password");
        boolean check = productModel.insertProduct(product);
        if (check) {
            return "redirect:getAllproduct.htm";
        } else {
            mm.put("message", "Thêm mới product không thành công.");
            return "admin/insertProduct";
        }
    }

    /**
     * Xử lí khi click vào sửa sản phẩm
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "initUpdateProduct")
    public ModelAndView initUpdateProduct(@RequestParam("productId") int productId) {
        ModelAndView model = new ModelAndView("admin/updateProduct");
        Product product = productModel.getProductsByProductId(productId);
        List<Provider> listProvider = providerModel.getAllProvider();
        List<Category> listCategory = categoryModel.getAllCategory();
        List<Menu> listMenu = menuModel.getAllMenu();
        model.getModelMap().put("listCategory", listCategory);
        model.getModelMap().put("listProvider", listProvider);
        model.getModelMap().put("listMenu", listMenu);
        model.getModelMap().put("updateProduct", product);
        return model;
    }

    /**
     * sửa thông tin sản phẩm
     *
     * @param product
     * @param mm
     * @return
     * @throws ParseException
     */
    @RequestMapping(value = "updateProduct")
    public String updateProduct(@ModelAttribute("updateProduct") Product product, ModelMap mm) throws ParseException {
        boolean result;
        result = productModel.updateProduct(product);
        if(result){
            return "redirect:getAllproduct.htm";
        } else{
            mm.put("message","Sửa không thành công");
        return "redirect:initUpdateProduct.htm";
        }
    }
    
    /**
     * Xóa sản phẩm
     *
     * @param productId mà product cần xóa
     * @return
     */
    @RequestMapping(value = "deleteProduct")
    public String deleteProduct(@RequestParam("productId") int productId) {
        boolean result = false;
        result = productModel.deleteProduct(productId);
        if (result) {
            return "redirect:getAllproduct.htm";
        } else {
            return "admin/error";
        }
    }

    /**
     * xem chi tiết sản phẩm
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "viewProduct")
    public ModelAndView viewProduct(@RequestParam("productId") int productId) {
        ModelAndView model = new ModelAndView("admin/productDetail");
        Product product = productModel.getProductsByProductId(productId);
        model.getModelMap().put("product", product);
        return model;
    }
    
    /**
     * lấy toàn bộ product detail
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "getAllProductImage")
    public ModelAndView getAllProductImage(HttpSession session) {
        ModelAndView model = new ModelAndView("admin/productImage");
        List<ProductImage> listProductImage = productImageModel.getAllProductImage();
        model.getModelMap().put("listProductImage", listProductImage);
        return model;
    }

    /**
     * Xử lí khi click vào thêm mới product detail
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "initInsertProductImage")
    public ModelAndView initInsertProductImage(HttpSession session) {
        ModelAndView model;
        model = new ModelAndView("admin/insertProductImage");
        List<Product> listProduct = productModel.getAllProduct();
        List<Color> listColor = colorAndSizeModel.getAllColors();
        List<Size> listSize = colorAndSizeModel.getAllSizes();
        ProductImage productImage = new ProductImage();
        model.getModelMap().put("newProductImage", productImage);
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("listColor", listColor);
        model.getModelMap().put("listSize", listSize);
        return model;
    }

    /**
     * thêm mới product detail
     *
     * @param productImage
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertProductImage")
    public String insertProductImage(@ModelAttribute("newProductImage") ProductImage productImage, ModelMap mm) {
        boolean check = productImageModel.insertProductImage(productImage);
        if (check) {
            return "redirect:getAllProductImage.htm";
        } else {
            mm.put("message", "Thêm mới không thành công");
            return "admin/insertProductImage";
        }
    }

    /**
     * Xử lí khi click vào sửa product detail
     *
     * @param productImageId
     * @param mm
     * @return
     */
    @RequestMapping(value = "initUpdateProductImage")
    public ModelAndView initUpdateProductImage(@RequestParam("productImageId") int productImageId) {
        ModelAndView model = new ModelAndView("admin/updateProductImage");
        ProductImage productImage = productImageModel.getProductImageByProductImageId(productImageId);
        List<Product> listProduct = productModel.getAllProduct();
        List<Color> listColor = colorAndSizeModel.getAllColors();
        List<Size> listSize = colorAndSizeModel.getAllSizes();
        model.getModelMap().put("listProduct", listProduct);
        model.getModelMap().put("listColor", listColor);
        model.getModelMap().put("listSize", listSize);
        model.getModelMap().put("updateProductImage", productImage);
        return model;
    }

    /**
     * sửa product detail
     *
     * @param productImage
     * @param mm
     * @return
     */
    @RequestMapping(value = "updateProductImage")
    public String updateProductImage(@ModelAttribute("updateProductImage") ProductImage productImage, ModelMap mm) {
        boolean result = false;
        result = productImageModel.updateProductImage(productImage);
        if (result) {
            return "redirect:getAllProductImage.htm";
        } else {
            mm.put("message", "Sửa không thành công.");
            return "admin/updateProductImage";
        }
    }

    /**
     * view product detail
     *
     * @param productImageId
     * @param mm
     * @return
     */
    @RequestMapping(value = "viewProductImage")
    public ModelAndView viewProductImage(@RequestParam("productImageId") int productImageId) {
        ModelAndView model = new ModelAndView("admin/productImageDetail");
        ProductImage productImage = productImageModel.getProductImageByProductImageId(productImageId);
        model.getModelMap().put("productImage", productImage);
        return model;
    }

    /**
     * Xóa product detail
     *
     * @param productImageId
     * @param session
     * @return
     */
    @RequestMapping(value = "deleteProductImage")
    public String deleteProductImage(@RequestParam("productImageId") int productImageId, HttpSession session) {
        boolean result = false;
        result = productImageModel.deleteProductImage(productImageId);
        if (result) {
            return "redirect:getAllProductImage.htm";
        } else {
            return "admin/Error";
        }
    }

    /**
     * lấy danh sách size
     *
     * @return
     */
    @RequestMapping(value = "getAllSize")
    public ModelAndView getAllSize() {
        ModelAndView model = new ModelAndView("admin/size");
        List<Size> list = colorAndSizeModel.getAllSizes();
        model.getModelMap().put("listSize", list);
        return model;
    }

    /**
     * Xử lí khi click vào thêm mới kích thước
     *
     * @return
     */
    @RequestMapping(value = "initInsertSize")
    public ModelAndView initInsertSize() {
        ModelAndView model = new ModelAndView("admin/insertSize");
        Size size = new Size();
        model.getModelMap().put("newSize", size);
        return model;
    }

    /**
     * Thêm mới kích thước
     *
     * @param size
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertSize")
    public String insertSize(@ModelAttribute("newSize") Size size, ModelMap mm) {
        if (colorAndSizeModel.checkSizeName(size.getSizeName())) {
            mm.put("message", "Tên size đã tồn tại. Mời bạn chọn tên khác.");
            return "admin/insertSize";
        } else {
            boolean result = false;
            result = colorAndSizeModel.insertSize(size);
            if (result) {
                return "redirect:getAllSize.htm";
            } else {
                mm.put("message", "Thêm mới kích thước không thành công.");
                return "admin/insertSize";
            }
        }
    }

    /**
     * Xử lí khi click vào sửa kích thước
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "initUpdateSize")
    public ModelAndView initUpdateSize(@RequestParam("sizeId") int sizeId) {
        ModelAndView model = new ModelAndView("admin/updateSize");
        Size size = colorAndSizeModel.getSizeBySizeId(sizeId);
        model.getModelMap().put("updateSize", size);
        return model;

    }

    /**
     * Sửa thông tin kích thước sản phẩm
     *
     * @param size
     * @param mm
     * @return
     */
    @RequestMapping(value = "updateSize")
    public String updateSize(@ModelAttribute("updateSize") Size size, ModelMap mm) {
        if (colorAndSizeModel.checkExistsSizeName(size)) {
            mm.put("message", "Kích thước đã tồn tại.");
            return "admin/updateSize";
        } else {
            boolean result = colorAndSizeModel.updateSize(size);
            if (result) {
                return "redirect:getAllSize.htm";
            } else {
                mm.put("message", "Sửa không thành công");
                return "admin/updateSize";
            }
        }
    }

    /**
     * Xóa thông tin kích thước sản phẩm
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "deleteSize")
    public String deleteSize(@RequestParam("sizeId") int sizeId) {
        boolean result = false;
        result = colorAndSizeModel.deleteSize(sizeId);
        if (result) {
            return "redirect:getAllSize.htm";
        } else {
        return "admin/error";
        }
    }
    
    /**
     * view size
     *
     * @param id
     * @param mm
     * @return
     */
    @RequestMapping(value = "viewSize")
    public ModelAndView viewSize(@RequestParam("sizeId") int sizeId) {
        ModelAndView model = new ModelAndView("admin/sizeDetail");
        Size size = colorAndSizeModel.getSizeBySizeId(sizeId);
        model.getModelMap().put("size", size);
        return model;
    }

    /**
     * lấy danh sách người dùng
     *
     * @return
     */
    @RequestMapping(value = "getAllUser")
    public ModelAndView getAllUser() {
        ModelAndView model = new ModelAndView("admin/user");
        List<User> listUser = userModel.getAllUser();
        model.addObject("listUser", listUser);
        return model;
    }

    /**
     * Xử lí khi click vào thêm mới người dùng
     *
     * @return
     */
    @RequestMapping(value = "initInsertUser")
    public ModelAndView initInsertUser() {
        ModelAndView model = new ModelAndView("admin/insertUser");
        List<Role> listRole = userModel.getAllRole();
        User user = new User();
        model.getModelMap().put("newUser", user);
        model.addObject("listRole", listRole);
        return model;
    }

    /**
     * Thêm mới người dùng
     *
     * @param user
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertUser")
    public String insertUser(@ModelAttribute("newUser") User user, ModelMap mm) {
        if(userModel.checkUserName(user.getUserName())){
            mm.put("message", "User đã tồn tại.");
            return  "admin/insertUser";
        } else {
             boolean result = userModel.insertUser(user);
            if (result) {
                return "redirect:getAllUser.htm";
            } else {
                mm.put("message", "Thêm mới không thành công.");
                return "admin/insertUser";
            }
        }
       
    }
    
    /**
     * Xử lí khi click vào sửa thông tin người dùng
     *
     * @param userId
     * @return
     */
    @RequestMapping(value = "initUpdateUser")
    public ModelAndView initUpdateUser(@RequestParam("userId") int userId) {
        ModelAndView model = new ModelAndView("admin/updateUser");
        User user = userModel.getUserByUserId(userId);
        model.getModelMap().put("updateUser", user);
        return model;
    }

    /**
     * sửa thông tin người dùng
     *
     * @param user
     * @param mm
     * @return
     */
    @RequestMapping(value = "updateUser")
    public String updateUser(@ModelAttribute("updateUser") User user, ModelMap mm) {
        if(userModel.checkExistsUserName(user)){
            mm.put("message","Tên đăng nhập đã được dùng để đăng kí.");
            return "admin/UpdateUser";
        } else{
            boolean result = userModel.updateUser(user);
            if (result) {
                return "redirect:getAllUser.htm";
            } else {
                mm.put("message", "Sửa không thánh công.");
                return "redirect:initUpdateUser.htm";
            }
        }
       
    }
    
    /**
     * xóa thông tin người dùng
     *
     * @param userId
     * @return
     */
    @RequestMapping(value = "deleteUser")
    public String deleteUser(@RequestParam("userId") int userId) {
        boolean result = userModel.deleteUser(userId);
        if (result) {
            return "redirect:getAllUser.htm";
        } else {
            return "error";
        }
    }
    
    /**
     * view user
     *
     * @param userId
     * @return
     */
    @RequestMapping(value = "viewUser")
    public ModelAndView viewUser(@RequestParam("userId") int userId) {
        ModelAndView model = new ModelAndView("admin/userDetail");
        User user = userModel.getUserByUserId(userId);
        model.getModelMap().put("user", user);
        return model;
    }
    
    /**
     * lấy danh sách menu
     *
     * @return
     */
    @RequestMapping(value = "getAllMenu")
    public ModelAndView getAllMenu() {
        ModelAndView model = new ModelAndView("admin/menu");
        List<Menu> listMenu = menuModel.getAllMenu();
        model.addObject("listMenu", listMenu);
        return model;
    }

    /**
     * Xử lí khi click vào thêm mới menu
     *
     * @return
     */
    @RequestMapping(value = "initInsertMenu")
    public ModelAndView initInsertMenu() {
        ModelAndView model = new ModelAndView("admin/insertMenu");
        Menu user = new Menu();
        model.getModelMap().put("newMenu", user);
        return model;
    }

    /**
     * Thêm mới menu
     *
     * @param menu
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertMenu")
    public String insertMenu(@ModelAttribute("newMenu") Menu menu, ModelMap mm) {
        if(menuModel.checkMenuName(menu.getMenuName())){
            mm.put("message", "Menu đã tồn tại.");
            return  "admin/insertMenu";
        } else {
             boolean result = menuModel.insertMenu(menu);
            if (result) {
                return "redirect:getAllMenu.htm";
            } else {
                mm.put("message", "Thêm mới không thành công.");
                return "admin/insertMenu";
            }
        }
       
    }
    
    /**
     * Xử lí khi click vào sửa thông tin menu
     *
     * @param menuId
     * @return
     */
    @RequestMapping(value = "initUpdateMenu")
    public ModelAndView initUpdateMenu(@RequestParam("userId") int menuId) {
        ModelAndView model = new ModelAndView("admin/updateMenu");
        Menu menu = menuModel.getMenuByMenuId(menuId);
        model.getModelMap().put("updateMenu", menu);
        return model;
    }

    /**
     * sửa thông tin menu
     *
     * @param menu
     * @param mm
     * @return
     */
    @RequestMapping(value = "updateMenu")
    public String updateMenu(@ModelAttribute("updateMenu") Menu menu, ModelMap mm) {
        if(menuModel.checkExistsMenuName(menu)){
            mm.put("message","Tên đăng nhập đã được dùng để đăng kí.");
            return "admin/UpdateMenu";
        } else{
            boolean result = menuModel.updateMenu(menu);
            if (result) {
                return "redirect:getAllMenu.htm";
            } else {
                mm.put("message", "Sửa không thánh công.");
                return "redirect:initUpdateMenu.htm";
            }
        }
       
    }
    
    /**
     * xóa thông tin menu
     *
     * @param menuId
     * @return
     */
    @RequestMapping(value = "deleteMenu")
    public String deleteMenu(@RequestParam("userId") int menuId) {
        boolean result = menuModel.deleteMenu(menuId);
        if (result) {
            return "redirect:getAllMenu.htm";
        } else {
            return "error";
        }
    }
    
    /**
     * view menu
     *
     * @param menuId
     * @return
     */
    @RequestMapping(value = "viewMenu")
    public ModelAndView viewMenu(@RequestParam("userId") int userId) {
        ModelAndView model = new ModelAndView("admin/userDetail");
        Menu menu = menuModel.getMenuByMenuId(userId);
        model.getModelMap().put("user", menu);
        return model;
    }
    
    /**
     * Lấy danh sách nhà cung cấp
     *
     * @return
     */
    @RequestMapping(value = "getAllProvider")
    public ModelAndView getAllProvider() {
        ModelAndView model = new ModelAndView("admin/provider");
        List<Provider> listProvider = providerModel.getAllProvider();
        model.addObject("listProvider", listProvider);
        return model;
    }
    
    /**
     * Xử lí khi click váo thêm mới nhà cung cấp
     *
     * @return
     */
    @RequestMapping(value = "initInsertProvider")
    public ModelAndView initInsertProvider() {
        ModelAndView model = new ModelAndView("admin/insertProvider");
        Provider provider = new Provider();
        model.getModelMap().put("newProvider", provider);
        return model;
    }
    
    /**
     * Thêm mới nhà cung cấp
     *
     * @param provider
     * @param mm
     * @return
     */
    @RequestMapping(value = "insertProvider")
    public String insertProvider(@ModelAttribute("newProvider") Provider provider, ModelMap mm) {
        if(providerModel.checkProviderName(provider.getProviderName())){
            mm.put("message", "Provider đã tồn tại.");
            return  "admin/insertProvider";
        } else if(providerModel.checkProviderEmail(provider.getEmail())){
            mm.put("message", "Email đã được đăng kí.");
            return  "admin/insertProvider";
        } else {
             boolean result = providerModel.insertProvider(provider);
            if (result) {
                return "redirect:getAllProvider.htm";
            } else {
                mm.put("message", "Thêm mới không thành công.");
                return "admin/insertProvider";
            }
        }
       
    }
    
    /**
     * Xử lí khi click vào sửa thông tin nhà cung cấp
     *
     * @param providerId
     * @return
     */
    @RequestMapping(value = "initUpdateProvider")
    public ModelAndView initUpdateProvider(@RequestParam("providerId") int providerId) {
        ModelAndView model = new ModelAndView("admin/updateProvider");
        Provider provider = providerModel.getProviderByProviderId(providerId);
        model.getModelMap().put("updateProvider", provider);
        return model;
    }
    /**
     * Sửa thông tin nhà cung cấp
     *
     * @param provider
     * @param mm
     * @return
     */
    @RequestMapping(value = "updateProvider")
    public String updateProvider(@ModelAttribute("updateProvider") Provider provider, ModelMap mm) {
        if(providerModel.checkExistsProviderName(provider)){
            mm.put("message","Tên đăng nhập đã được dùng để đăng kí.");
            return "admin/updateProvider";
        } else if(providerModel.checkExistsProviderEmail(provider)){
            mm.put("message","Email đã được dùng để đăng kí");
            return "admin/updateProvider";
        } else{
            boolean result = providerModel.updateProvider(provider);
            if (result) {
                return "redirect:getAllProvider.htm";
            } else {
                mm.put("message", "Sửa không thánh công.");
                return "admin/updateProvider";
            }
        }
       
    }
    
    /**
     * Xóa thông tin nhà cung cấp
     *
     * @param providerId
     * @return
     */
    @RequestMapping(value = "deleteProvider")
    public String deleteProvider(@RequestParam("providerId") int providerId) {
        boolean result = providerModel.deleteProvider(providerId);
        if (result) {
            return "redirect:getAllProvider.htm";
        } else {
            return "admin/error";
        }
    }
    
    /**
     * view provider
     *
     * @param providerId
     * @return
     */
    @RequestMapping(value = "viewProvider")
    public ModelAndView viewProvider(@RequestParam("providerId") int providerId) {
        ModelAndView model = new ModelAndView("admin/providerDetail");
        Provider provider = providerModel.getProviderByProviderId(providerId);
        model.getModelMap().put("provider", provider);
        return model;
    }
    
    /**
     * Lấy danh sách đơn hàng
     *
     * @return
     */
//    @RequestMapping(value = "getAllOrder")
//    public ModelAndView getAllOrder() {
//        ModelAndView model = new ModelAndView("admin/Order");
//        List<Order> listOrder = orderModel.getAllOrder();
//        model.getModelMap().put("listOrder", listOrder);
//        return model;
//    }
    /**
     * lấy danh sách chi tiết đơn hàng chi tiết theo mã đơn hàng
     *
     * @param id
     * @return
     */
//     @RequestMapping(value = "orderDetail")
//    public ModelAndView orderDetail(@RequestParam("Id") int id){
//        ModelAndView model = new ModelAndView("admin/OrderDetail");
//        List<OrderDetail> listOrder = orderModel.getOderDetailById(id);
//        model.getModelMap().put("listOrderDetail", listOrder);
//        return model;
//    }
    /**
     * Xác nhận đơn hàng
     *
     * @param id
     * @return
     */
//    @RequestMapping(value = "confirmOrder")
//    public String confirmOrder(@RequestParam("Id") int id){
//       orderModel.confirmOrder(id);
//       return "redirect:getAllOrder.htm"; 
//    }
}
