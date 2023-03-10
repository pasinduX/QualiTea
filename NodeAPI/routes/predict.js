import express  from 'express';

const router = express.Router();

const predict = [
  {
    teaGrade: "Low fresh Best"
  }
]

//all routes in here are starting with /users
router.get('/', (req, res) => {
  console.log();

  res.send(predict);
});

export default router;