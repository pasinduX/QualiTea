import express from 'express';

const router = express.Router(); //initializing router

const predict = [
  {
    teaGrade: "Low Fresh Best"
  }
]

//all routes in here are starting with /predict
router.get('/', (req,res) => {
  console.log('[TESTING]!');

  res.send(predict);

});

export default router;