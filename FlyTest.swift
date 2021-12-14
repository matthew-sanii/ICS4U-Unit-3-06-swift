/*
* The flytest program.
*
* @author Matthew Sanii
* @version 1.0
* @since 2021-12-14
*/

public class Airplane {

  /**
  * Initializing speed variable.
  */
  private var speed: Int

  /**
  * Base initializer.
  */
  init() {
    speed = 0
  }

  /**
  * Setspeed method.
  *
  * @param newSpeed the new speed.
  */
  func setSpeed(_ newSpeed: Int) {
    speed = newSpeed
  }

  /**
  * Getspeed method.
  *
  * @return speed.
  */
  func getSpeed() -> Int {
    return speed
  }
}

class Jet: Airplane {

  /**
  * The multipler for speed.
  */
  private var multipler: Int = 2

  /**
  * The jet class set speed method.
  *
  * @param newSpeed the new speed before multiplier.
  */
  override func setSpeed(_ newSpeed: Int) {
    super.setSpeed(newSpeed * multipler)
  }

  /**
  * The accelerate method.
  */
  func accelerate() {
    super.setSpeed(super.getSpeed() * 2)
  }
}

let biplane = Airplane()
biplane.setSpeed(212)
print(biplane.getSpeed())
let boeing = Jet()
boeing.setSpeed(422)
print(boeing.getSpeed())
var times = 0
while times < 4 {
  boeing.accelerate()
  print(boeing.getSpeed())
  if boeing.getSpeed() > 5000 {
    biplane.setSpeed(biplane.getSpeed() * 2)
  } else {
    boeing.accelerate()
  }
  times += 1
}
print(biplane.getSpeed())
