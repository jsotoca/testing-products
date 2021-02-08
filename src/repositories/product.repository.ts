import MySQL from "../database/mysql.database";
import Product from "../entities/product";

export default class ProductRepository {

    public static async getProducts(){
        try {
            let results = await MySQL.doQuery(`SELECT * FROM products`,null);
            results = results.map( (result: any) => result as Product);
            return results;
        } catch (error) {
            throw error;
        }
    }

}