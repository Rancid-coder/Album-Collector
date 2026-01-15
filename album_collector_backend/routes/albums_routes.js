const express = require("express");
const router = express.Router();
const albumController = require("../controllers/albums_controllers");

router.get("/", albumController.getAllAlbums);

module.exports = router;
