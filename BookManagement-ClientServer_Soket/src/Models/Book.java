/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author manht
 */
public class Book {
    private String id;
    private String name;
    private String idNXB;

    public Book() {
    }

    public Book(String id, String name, String idNXB) {
        this.id = id;
        this.name = name;
        this.idNXB = idNXB;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdNXB() {
        return idNXB;
    }

    public void setIdNXB(String idNXB) {
        this.idNXB = idNXB;
    }
    
    
}
