if(process.env.NODE_ENV != 'production') require('dotenv').config();

module.exports = {
    APP_URL: process.env.APP_URL
}