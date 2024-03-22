let { tap, hold,macro, .. } = import "../../fak/keycode.ncl" in
let kc = tap.reg.kc in
let ks = tap.reg.ks in

let tm = tap.reg.mod in
let md = hold.reg.mod in
let mt= macro.tap in
let macro_send_string = fun str =>
 let steps =
  std.string.uppercase str
  |> std.string.characters
  |> std.array.map (fun char => macro.tap tap.reg.kc."%{char}")
 in
 macro.make steps
in

{
const=macro_send_string "const ",
arrowfunc=macro_send_string "=()=>{} ",
_true=macro_send_string "true ",
_false=macro_send_string "false ",
deleteword=kc.BSPC & tap.reg.mod.lctl,



consolelog=macro.make [
  macro.tap kc.C,
  macro.tap kc.O,
  macro.tap kc.N,
  macro.tap kc.S,
  macro.tap kc.O,
  macro.tap kc.L,
  macro.tap kc.E,
  macro.tap kc.DOT,
  macro.tap kc.L,
  macro.tap kc.O,
  macro.tap kc.G,
  macro.tap kc.LPRN,
  macro.tap kc.RPRN,
  macro.tap kc.LEFT

],
gitcommitm = macro.make [
  macro.tap kc.G,
  macro.tap kc.I,
  macro.tap kc.T,
  macro.tap kc.SPC,

  macro.tap kc.A,
  macro.tap kc.D,
  macro.tap kc.D,
  macro.tap kc.SPC,

  macro.tap kc.DOT,
  macro.tap ks.AMPR,
  macro.tap ks.AMPR,
  macro.tap kc.G,
  macro.tap kc.I,
  macro.tap kc.T,
  macro.tap kc.SPC,

  macro.tap kc.C,
  macro.tap kc.O,
  macro.tap kc.M,
  macro.tap kc.M,
  macro.tap kc.I,
  macro.tap kc.T,
  macro.tap kc.SPC,

  macro.tap kc.MINUS,
  macro.tap kc.M,
  macro.tap kc.SPC,

  macro.tap kc.QUOTE,
  macro.tap kc.QUOTE,
  macro.tap ks.AMPR,
  macro.tap ks.AMPR,
  macro.tap kc.G,
  macro.tap kc.I,
  macro.tap kc.T,
  macro.tap kc.SPC,

  macro.tap kc.P,
  macro.tap kc.U,
  macro.tap kc.S,
  macro.tap kc.H,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
  macro.tap kc.LEFT,
],

add_ing=macro.make [
  macro.tap kc.BSPC,
macro_send_string "ing ",
],
add_s=macro.make [
  macro.tap kc.BSPC,
macro_send_string "s ",
],





because=macro_send_string "because ",
opensource=macro_send_string "open source ",

work=macro_send_string "work ",
keyboard=macro_send_string "keyboard ",

haha=macro_send_string "haha ",
yeah=macro_send_string "yeah ",


that=macro_send_string "that ",


aluminum=macro_send_string "aluminum ",

iwasthinking=macro_send_string "I was thinking ",
ithink=macro_send_string "I think ",
together=macro_send_string "together ",
response=macro_send_string "response ",
updated=macro_send_string "updated ",
awesome=macro_send_string "awesome ",
okcool=macro_send_string "ok cool ",
boardsource=macro_send_string "Boardsource ",

ill=macro_send_string "I'll ",

stabilizer=macro_send_string "stabilizer ",

letmeknow=macro_send_string "let me know ",
ifyouneedanythingelse=macro_send_string "if you need anything else ",
dface=macro_send_string ":D ",
myfavorite=macro_send_string "my favorite ",

remindme=macro_send_string "remind me ",

thankyou=macro_send_string "thank you. ",
download=macro_send_string "download ",
sorry=macro_send_string "sorry ",
circuitpython=macro_send_string "circuitpython ",
gitfetchandpull=macro_send_string "git fetch ",


different=macro_send_string "different ",

}

