const express = require('express');
const mongoose = require('mongoose');

const {
  MONGO_USERNAME,
  MONGO_PASSWORD,
  MONGO_HOSTNAME,
  MONGO_PORT,
  MONGO_DB
} = process.env;

const options = {
  useNewUrlParser: true,
  reconnectTries: Number.MAX_VALUE,
  reconnectInterval: 500,
  connectTimeoutMS: 10000,
};

const url = `mongodb://${MONGO_USERNAME}:${MONGO_PASSWORD}@${MONGO_HOSTNAME}:${MONGO_PORT}/${MONGO_DB}?authSource=admin`;

mongoose.connect(url, options)
  .then(() => {
    const app = express();
    const port = process.env.PORT || 3000;

    app.get('/', (req, res) => {
      res.status(200).json({ msg: 'concluido com sucesso' });
    });
    
    console.log('MongoDB is connected');

    app.listen(port, () => {
      console.log(`Server ir running in http://localhost:${port}`);
    })

  })
  .catch((err) => {
    console.log(err);
  });
