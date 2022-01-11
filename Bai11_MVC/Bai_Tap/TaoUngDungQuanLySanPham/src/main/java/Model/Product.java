package Model;

public class Product {
    private int id; // mã sản phẩm
    private String name; // tên sản phẩm
    private double Price; // giá
    private String origin; // xuất sứ

    public Product(){

    }

    public Product(int id, String name, double price, String origin) {
        this.id = id;
        this.name = name;
        Price = price;
        this.origin = origin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double price) {
        Price = price;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public void put(int id, Product product) {
    }
}
