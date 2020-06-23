const request = require('supertest');
const app = require("../app");


    describe("GET /", () => {
      it("respond with Hello World", (done) => {
        request(app).get("/api/v1").expect("okay", done);
      })
    });

    describe("GET /api/v1/home", () => {
      it('respond with i am working sha', (done) => {
        request(app).get("/api/v1/home").expect("i am working sha", done);
      })
    })