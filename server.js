var config = require("./config");
//var db = require("knex")(config);
var express = require("express");

express()
 .get("*", function(req, res) {
//    db("users").then(function(data) {
      res.send("Continuous integration and deployment finished");
 })
 .listen(80, function(err) {
    if (err) {
      console.error(err);
      return;
    }

    console.log("Express Server listening on port 80");
  })
;
