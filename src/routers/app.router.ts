import express from 'express';
import productRouter from './product.router';

const appRouter = express();

appRouter.get('/product', productRouter);

export default appRouter;