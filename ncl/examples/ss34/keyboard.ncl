let {  RowToColKey, .. } = import "../../fak/keyboard.ncl" in
let { CH552T, .. } = import "../../fak/mcus.ncl" in

{
  mcu = CH552T,
  matrix = {
    cols = [14,15,16,17,10,11,34,35,13,12],
    rows = [32,31,30,33]
  },
  usb_dev = {
    vendor_id = 43962, # 0xABBA
    product_id = 1,
    product_ver = 256, # 0x0100
  },
  keys =
    let R = RowToColKey in
    [
      R 0 0, R 1 0,R 2 0, R 3 0,R 4 0, R 5 0,R 6 0, R 7 0,R 8 0, R 9 0,
      R 0 1, R 1 1,R 2 1, R 3 1,R 4 1, R 5 1,R 6 1, R 7 1,R 8 1, R 9 1,
      R 0 2, R 1 2,R 2 2, R 3 2,R 4 2, R 5 2,R 6 2, R 7 2,R 8 2, R 9 2,
                          R 3 3,R 4 3, R 5 3,R 6 3

    ]
}
