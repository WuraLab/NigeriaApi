/* eslint-disable no-use-before-define */
const request = require("supertest");
// const assert = require("assert");
// const should = require("chai").should();
const { expect } = require("chai");

const app = require("../app");

const randomString = Math.random().toString(36).substring(2, 6);
const randomEmail = `${randomString}@gmail.com`;

const userDetails = {
  username: randomString,
  email: randomEmail,
  password: "TestPassword12;",
  confirmPassword: "TestPassword12;"
};

// describe("GET /", () => {
//   it("respond with Hello World", (done) => {
//     request(app).get("/api/v1").expect("okay", done);
//   });
// });

describe("POST /api/v1/users", () => {
  it("signup should return status 201", async () => {
    const result = await request(app)
      .post("/api/v1/users")
      .send(userDetails);
    expect(result.body.should.have.property("response").eql("SignUp successful, check your email for validation"));
  });

  it("returns statuscode 201", async () => {
    const result = await request(app)
      .post("/api/v1/users")
      .send(userDetails);
    expect(result.body.statuscode.eql(201));
  });

  it("saves encrtypeted password in the DB", async () => {
    const result = await request(app)
      .post("/api/v1/users")
      .send(userDetails);
    expect(result.body.should.have.property("createdUser").not.equal(userDetails.password));
  });
});
