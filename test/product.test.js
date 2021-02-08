
const expect = require('chai').expect;
const request = require('request');
const env = require('./env');

describe('Products Tests', () => {
    it('Get All Products', (done) => {
        request(`${env.APP_URL}/product`, (err, response, body) => {
            body = JSON.parse(body);
            expect(response.statusCode).to.equal(200);
            expect(body).to.have.property('products');
            done();
        });
    });
});