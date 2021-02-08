import { Request, Response } from 'express';
import ProductService from '../services/product.service';

export const getProducts = async(req: Request, res: Response) => {
    try {
        const products = await ProductService.getProducts();
        return res.json({
            products
        });
    } catch (error) {
        res.status( error.status | 500 );
        return res.json({
            error
        });
    }
}