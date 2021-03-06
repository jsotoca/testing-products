import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import helmet from 'helmet';
import compression from 'compression';
import { enviroment } from '../config/enviroment';
import appRouter from '../routers/app.router';

export default class Server {
    private _app: express.Application;
    private _port: string | number;

    constructor(){
        this.initApp();
        this._port = enviroment.APP_PORT;
    }

    private initApp(){
        this._app = express();
        this._app
            .use(bodyParser.urlencoded({extended: true}))
            .use(bodyParser.json())
            .use(cors())
            .use(helmet())
            .use(compression())

            .use('/api',appRouter);
    }

    public start(){
        this._app.listen(this._port, () => {
            console.log(`${enviroment.APP_NAME} running on the port ${this._port}... yeah!`);
        });
    }
}