require(mosaic)
require(Lock5withR)

testStat -> lm(PctTip ~ Bill, data=RestaurantTips)$coeff[2]

manyb1s -> do(5000) * lm(PctTip ~ shuffle(Bill), data=RestaurantTips)$coeff[2]

gf_histogram(~Bill, data=manyb1s)

summary(lm(PctTip ~ Bill, data=RestaurantTips))

pt(1.70, df=155)

(1- pt(1.70, df=155)) * 2