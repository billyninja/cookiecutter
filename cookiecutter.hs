import Text.Printf

message :: String
message = "\nHello Baker!\n"

kRect :: Double -> (Double, Double)
kRect s = do
    let x = (sqrt s) * 1.7 -- Later this Ratio should be variable
    (x, s/x)

kCircle :: Double -> Double
kCircle s = sqrt(s/pi)

main = do
    let rA = (500 :: Double)
    let r = kRect rA

    let cA = (500 :: Double)
    let c = kCircle cA

    putStrLn message
    printf "Rect Area: %.2f \nX: %.2f Y: %.2f \n\n" rA (fst r) (snd r)
    printf "Circle Area: %.2f \nradius: %.2f \n" cA c
