//The Express.js Server for QualiTea application

import express from 'express';
import bodyParser from 'body-parser'; //allows to take in incoming POST Requests

import predictRoutes from './routes/predict.js';

const app = express();
const PORT = 5000;  //Normally 3000 for Frontend 

app.use(bodyParser.json());     // json - JavaScript Object Notation - Common format for sending and requsesting data to a Rest API

app.use('/predict', predictRoutes);

app.get('/', (req, res) =>{     //routing (make a get request to the '/' home root route)
  console.log('[TEST]!')

  res.send('Hello from Homepage.'); //Content to be displayed on the page
});                                 //Used a npm package called nodemon to automatically save and restart our server     

app.listen(PORT, () => console.log(`Server Running on port: http://localhost:${PORT}`) );