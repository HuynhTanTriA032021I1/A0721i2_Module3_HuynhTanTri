package Service;

import Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductSerciveImpl implements  ProductService {
    private static Map<Integer,Product> product;
static {
    product = new HashMap<>();
    product.put(1,new Product(01,"Điện Thoai",15000000,"Việt Nam"));
    product.put(2,new Product(02,"Máy Tính",20000000,"Hàn Quốc"));
    product.put(3,new Product(03,"Máy ảnh",10000000,"Nhật Bản"));
}
    @Override
    public List<Product> findAll() {

        return new ArrayList<>(product.values());
    }

    @Override
    public void save(Product product) {
        product.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return product.get(id);
    }

    @Override
    public void update(int id, Product product) {
        product.put(id, product);
    }

    @Override
    public void remove(int id) {
        product.remove(id);
    }
}
