/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cosmetic.controllers;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author
 */
public class Common {
    /**
     * Check exists login user
     * @param session lay tu gia tri session tren jsp
     * @return type boolean
     */
    public static  boolean check(HttpSession session){
        if(session.getAttribute("userName") != null){
            return true;
        } else {
            return false;
        }
    }
    
    /**
     * Get current section
     * @param currentPage trang hien tai dang chon
     * @param range so trang hien thi tren jsp
     * @return 
     */
    public static int getCurrentSection(int currentPage, int range) {
        return (int)Math.ceil((double)currentPage / range);
    }
    
    /**
     * Get total section
     * @param totalPage tong so page
     * @param range pham vi(so trang dang hien thi)
     * return tong section
     */
    public static int getTotalSection(int totalPage, int range) {
        return (int)Math.ceil((double)totalPage / range);
    }
    
    /**
     * Get list page
     * @param totalPage
     * @param currentPage
     * @param range
     * @return list page
     */
    public static List<Integer> getListPage(int totalPage, int currentPage, int range) {
        List<Integer> listPage = new ArrayList<Integer>();
        int currentSection = getCurrentSection(currentPage, range);
        int minPageSection = (currentSection * range) - range + 1;
        int maxPageSection = currentSection * range;
        if(maxPageSection > totalPage) {
            maxPageSection = totalPage;
        }
        for(int i = minPageSection; i <= maxPageSection; i++) {
            listPage.add(i);
        }
        return listPage;
    }
}
