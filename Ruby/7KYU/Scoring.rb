def score_test(tests, right, omit, wrong)  
  (tests.count(0) * right) + (tests.count(1) * omit) - (tests.count(2) * wrong)
end