import ProductRepository from "../repositories/product.repository";

export default class ProductService {

    public static async getProducts(){
        return await ProductRepository.getProducts();
    }

}