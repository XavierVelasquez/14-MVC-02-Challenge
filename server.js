const express = require('express');
const handlebars = require('express-handlebars');
const routes = require('./controllers/router');
require('dotenv').config();

const app = express();
const hbs = handlebars.create();
const PORT = process.env.PORT || 3001;

app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars')

app.use('/', routes)

app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}!`);
  }); 