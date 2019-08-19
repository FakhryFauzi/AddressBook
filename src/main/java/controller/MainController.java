/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import addressbook.AddressBook;
import java.util.concurrent.ConcurrentHashMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Owner
 */
@Controller
public class MainController {

    private static int addressId = 0;

    public static synchronized int getPacketId() {
        addressId++;
//        System.out.println(packetId);
        return addressId;
    }
    
    //Place address into a hashmap
    public static final ConcurrentHashMap<Integer, AddressBook> addressBook = new ConcurrentHashMap<>();

    public synchronized static ConcurrentHashMap<Integer, AddressBook> getAddressBook() {
        return addressBook;
    }

    public synchronized static void setAddress(Integer id, AddressBook address) {
        addressBook.put(id, address);
    }

    public synchronized static void removePacket(Integer id) {
        addressBook.remove(id);
    }
    
//    <------------------------------------>
    
    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String viewHome() {
        return "home";
    }
}
