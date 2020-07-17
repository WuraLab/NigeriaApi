const request = require("supertest");
const app = require("../app");

describe("GET /", () => {
  it("respond with Hello World", (done) => {
    request(app).get("/api/v1").expect("okay", done);
  });
});

describe("POST /api/v1/users", () => {
  it("registers users and save into the DB", (done) => {
    request(app).post("/api/v1/users").expect("SignUp successful, check your email for validation", done);
  });
});
