
const expect = require('chai').expect;
const request = require('request');

describe('Products Tests', () => {
    it('Get All Products', (done) => {
        request('http://localhost:4000/api/product', (err, response, body) => {
            body = JSON.parse(body);
            expect(response.statusCode).to.equal(200);
            expect(body).to.have.property('products');
            done();
        });
    });
});