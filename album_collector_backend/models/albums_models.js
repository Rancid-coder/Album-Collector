const mongoose = require("mongoose");

const albumModel = new mongoose.Schema(
  {
    name: { type: String, required: true },
    artist: { type: String, required: true },
    date: { type: String, required: true },
    label: { type: String, required: true },
    description: { type: String, required: true },
  },
  {
    timestamps: true,
  }
);

module.exports = mongoose.model("Album", albumModel);
