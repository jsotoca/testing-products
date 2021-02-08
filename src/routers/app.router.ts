import express from 'express';
import productRouter from './product.router';

const appRouter = express();

appRouter.use('/product', productRouter);

export default appRouter;