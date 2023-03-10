import express from 'express'; //a new import function for Node JS(In package.json we need to intialize it by typing "type":"module",)
import bodyParser from 'body-parser'; //allows to take in incoming POST Requests

import predictRoutes from './routes/predict.js';

const app = express(); //intializing the express application
const PORT = 5000; //fact: Usually Frontends are localhost 3000

app.use(bodyParser.json());//json-JavaScript Object Notation(common format for sending and requesting dats to a REST API)

app.use('/predict', predictRoutes);

//GET Request to Home Page

app.get('/', (req, res) => { 
  console.log('[TEST]!');

  res.send('Hello from Homepage.');


}); 


app.listen(PORT, () => console.log(`Server Running on port: http://localhost:${PORT}`));