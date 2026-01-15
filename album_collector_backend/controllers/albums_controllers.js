const mongoose = require("mongoose");

exports.getAllAlbums = async (req, res) => {
  try {
    const db = mongoose.connection.db;
    const albums = await db.collection("Albums").find().toArray();
    res.status(200).json(albums);
  } catch (error) {
    res.status(500).json({
      message: "Error fetching albums",
      error: error.message,
    });
  }
};

