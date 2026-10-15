const student = require("./model");
exports.show = (req, res) => {
    res.send("Name: " + student.name + "<br> Course: " + student.course);
};