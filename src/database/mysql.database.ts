import mysql from 'mysql';
import { enviroment } from '../config/enviroment';

export default class MySQL {
    private _cnn: mysql.Connection;
    private static _instance: MySQL;

    private constructor(){
        this._cnn = mysql.createConnection({
            host: enviroment.DB_HOST,
            database: enviroment.DB_NAME,
            user: enviroment.DB_USER,
            password: enviroment.DB_PASS,
        });
        this._cnn.connect();
    }

    public static get instance(){
        return this._instance || (this._instance = new this());
    }

    public static doQuery(query: string, values: any[]){
        new Promise<any>((resolve, reject) => {
            this.instance._cnn.query(query, values, (err ,results) => {
                if(err) reject(err);
                else resolve(results);
            });
        })
    }
}