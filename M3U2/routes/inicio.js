var express = require('express');
var router = express.Router();

/* GET inicio page. */
router.get('/', function(req, res, next) {
  res.render('inicio', { title: 'Ejemplo de manejadores de ruta' });
});

module.exports = router;