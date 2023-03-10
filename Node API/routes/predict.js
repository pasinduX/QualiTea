import express from 'express';

const router = express.Router(); //initializing router

const predict = [
  {
    teaGrade: "Low Fresh Best"
  },
  {
    "teaGrade": "Low Fresh Below Best"
  },
  {
    "teaGrade": "Low Fresh Poor"
  },
  
  {
    "teaGrade": "Low Withered Best"
  },
  
  {
    "teaGrade": "Low Withered Below Best"
  },
  
  {
    "teaGrade": "Low Withered Poor"
  }
]

//all routes in here are starting with /predict
router.get('/', (req,res) => {
  console.log('[TESTING]!');

  res.send(predict);

});

export default router;