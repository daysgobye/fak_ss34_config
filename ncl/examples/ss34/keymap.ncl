let { tap, hold, td, combo, .. } = import "../../fak/keycode.ncl" in

let words = import "./words.ncl" in

let kc = tap.reg.kc in
let ks = tap.reg.ks in
let me = tap.custom.media in
let XXXX = tap.none & hold.none in
let TTTT = tap.trans & hold.trans in


let LSFTZ = 
  tap.reg.kc.Z
  & hold.reg.mod.lsft
  & hold.reg.behavior {
    timeout_ms = 200
  }
in
let LSFTSL = 
  tap.reg.kc.SLSH
  & hold.reg.mod.lsft
  & hold.reg.behavior {
    timeout_ms = 200
  }
in
let LALTQ = 
  tap.reg.kc.Q
  & hold.reg.mod.lalt
  & hold.reg.behavior {
    timeout_ms = 200
  }
in
let LALTP = 
  tap.reg.kc.P
  & hold.reg.mod.lalt
  & hold.reg.behavior {
    timeout_ms = 200
  }
in

let LGUIA = 
  tap.reg.kc.A
  & hold.reg.mod.lgui
  & hold.reg.behavior {
    timeout_ms = 200
  }
in
let LGUISC = 
  tap.reg.kc.SCLN
  & hold.reg.mod.lgui
  & hold.reg.behavior {
    timeout_ms = 100
  }
in
let RAISE_ENT = 
  tap.reg.kc.ENT
  & hold.reg.layer 1
  & hold.reg.behavior {
    timeout_ms = 100
  }
in
let LOWER_SPC = 
  tap.reg.kc.SPC
  & hold.reg.layer 2
  & hold.reg.behavior {
    timeout_ms = 100
  }
in
let CTRLLOWER = td.make 400 [
  tap.reg.mod.lctl,
  hold.reg.layer 2
] in
let ctrlLEFT= kc.LEFT & tap.reg.mod.lctl in
let ctrlRIGHT= kc.RIGHT & tap.reg.mod.lctl in



# CTRLLOWER,RAISE_ENT,ks.LEADER,LOWER_SPC


{
    virtual_keys = [
    # Combo activated by the first and second physical keys
    combo.make 50 [1,2], # esc
    combo.make 50 [6,7], # bkspace
    combo.make 50 [16,17], # :
    combo.make 15 [2,3], # tab
    combo.make 60 [15,32], # ctrl left
    combo.make 60 [18,32], # ctrl right
    combo.make 60 [6,7,32], # delete word
    combo.make 60 [30,31], # lower layer 

    combo.make 30 [4,15], # thank you.
    combo.make 60 [10,18,32], # aluminum.
    combo.make 30 [10,15], # haha 
    combo.make 60 [17,24,32], # keyboard  
    combo.make 60 [4,10,32], # that   
    combo.make 60 [5,10,32], # yeah 
    combo.make 60 [14,22,32], # gitcommit
    combo.make 60 [4,11,32], # stabilizer 
    combo.make 60 [1,7,32], # iwasthinking
    combo.make 60 [4,14,32], # together 
    combo.make 60 [8,11,32], # sorry 
    combo.make 60 [6,12,32], # updated 
    combo.make 60 [17,18,26], # letmeknow 
    combo.make 60 [2,5,7], # ifyouneedanythingelse 
    combo.make 60 [13,26,32], # my favorite  
    combo.make 60 [10,14,32], # git fetch && git pull 
    combo.make 60 [8,9,32], # opensource 
    combo.make 60 [1,10,32], # awesome 
    combo.make 60 [22,25,32], # const 
    combo.make 60 [22,18], # console.log 

  ],

  layers = [
  [
    LALTQ,   kc.W,   kc.E,    kc.R,    kc.T,      kc.Y,    kc.U,    kc.I,    kc.O,     LALTP,
    LGUIA,   kc.S,   kc.D,    kc.F,    kc.G,      kc.H,    kc.J,    kc.K,    kc.L,     LGUISC,
    LSFTZ,   kc.X,   kc.C,    kc.V,    kc.B,      kc.N,    kc.M,    kc.COMM,  kc.DOT,   LSFTSL,
                            tap.reg.mod.lctl, RAISE_ENT,   XXXX,  LOWER_SPC,
                            kc.ESC,kc.BSPC,ks.COLN, kc.TAB,XXXX,XXXX,words.deleteword,hold.reg.layer 2,
                            words.thankyou,
                            words.aluminum,
                            words.haha,
                            words.keyboard,
                            words.that,
                            words.yeah,
                            words.gitcommitm,
                            words.stabilizer,
                            words.iwasthinking,
                            words.together,
                            words.sorry,
                            words.updated,
                            words.letmeknow,
                            words.ifyouneedanythingelse,
                            words.myfavorite,
                            words.gitfetchandpull,
                            words.opensource,
                            words.awesome,
                            words.const,
                            words.consolelog


    ],
    [
    kc.N1,kc.N2,kc.N3,kc.N4,kc.N5,kc.N6,kc.N7,kc.N8,kc.N9,kc.N0,
    kc.N6,kc.N7,kc.N8,kc.N9,kc.N0,kc.LEFT,kc.DOWN,kc.UP,kc.RIGHT,kc.QUOTE,
   TTTT,kc.GRAVE,TTTT,TTTT,tap.custom.fak.BOOT,kc.MINUS,kc.EQUAL,kc.LEFT_BRACKET,kc.RIGHT_BRACKET,kc.SLASH,
                 TTTT, TTTT,   TTTT,  TTTT,
                 XXXX, words.deleteword,XXXX,XXXX,ctrlLEFT,ctrlRIGHT,XXXX,XXXX,
                 
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                  XXXX,
                   XXXX
    ], 
    [
     ks.EXLM, ks.AT,    ks.HASH,  ks.DLR ,  ks.PERC,  ks.CIRC,  ks.AMPR,  ks.ASTR,  ks.LPRN , ks.RPRN ,
     TTTT, TTTT,  TTTT,  TTTT,  TTTT,  kc.LEFT,  kc.DOWN,  kc.UP,    kc.RIGHT, ks.DQUO,
     TTTT, ks.TILD, TTTT,  TTTT,  TTTT,  ks.UNDS , ks.PLUS,  ks.LCBR,  ks.RCBR , ks.PIPE,
                                  TTTT, TTTT,   TTTT,  TTTT,
                  XXXX, words.deleteword,XXXX,XXXX,ctrlLEFT,ctrlRIGHT,XXXX,XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                 XXXX,
                  XXXX,
                   XXXX
  ]
  ]
}
