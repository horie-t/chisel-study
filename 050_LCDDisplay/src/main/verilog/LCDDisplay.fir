;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit LCDDisplay : 
  module ILI9341SPI : 
    input clock : Clock
    input reset : UInt<1>
    output io : {lcdSpi : {serialClock : UInt<1>, dataCommand : UInt<1>, chipSelectN : UInt<1>, masterOutSlaveIn : UInt<1>, flip masterInSlaveOut : UInt<1>, resetN : UInt<1>, backLight : UInt<1>}, flip sendData : {flip ready : UInt<1>, valid : UInt<1>, bits : {isData : UInt<1>, value : UInt<8>}}}
    
    reg spiClock : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[LCDDisplay.scala 26:25]
    reg sendValue : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[LCDDisplay.scala 28:26]
    reg sendBitCount : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[LCDDisplay.scala 29:29]
    reg dataCommand : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[LCDDisplay.scala 30:28]
    reg state : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[LCDDisplay.scala 34:22]
    node _T_40 = eq(state, UInt<1>("h00")) @[LCDDisplay.scala 37:14]
    node _T_41 = and(_T_40, io.sendData.valid) @[LCDDisplay.scala 37:28]
    when _T_41 : @[LCDDisplay.scala 37:50]
      state <= UInt<1>("h01") @[LCDDisplay.scala 38:11]
      sendValue <= io.sendData.bits.value @[LCDDisplay.scala 39:15]
      dataCommand <= io.sendData.bits.isData @[LCDDisplay.scala 40:17]
      skip @[LCDDisplay.scala 37:50]
    else : @[LCDDisplay.scala 41:36]
      node _T_42 = eq(state, UInt<1>("h01")) @[LCDDisplay.scala 41:21]
      when _T_42 : @[LCDDisplay.scala 41:36]
        node _T_43 = not(spiClock) @[LCDDisplay.scala 42:17]
        spiClock <= _T_43 @[LCDDisplay.scala 42:14]
        when spiClock : @[LCDDisplay.scala 43:21]
          node _T_44 = bits(sendValue, 6, 0) @[LCDDisplay.scala 44:33]
          node _T_46 = cat(_T_44, UInt<1>("h00")) @[Cat.scala 30:58]
          sendValue <= _T_46 @[LCDDisplay.scala 44:17]
          node _T_48 = add(sendBitCount, UInt<1>("h01")) @[LCDDisplay.scala 45:36]
          node _T_49 = tail(_T_48, 1) @[LCDDisplay.scala 45:36]
          sendBitCount <= _T_49 @[LCDDisplay.scala 45:20]
          node _T_51 = eq(sendBitCount, UInt<3>("h07")) @[LCDDisplay.scala 46:26]
          when _T_51 : @[LCDDisplay.scala 46:35]
            when io.sendData.valid : @[LCDDisplay.scala 47:34]
              sendValue <= io.sendData.bits.value @[LCDDisplay.scala 48:21]
              dataCommand <= io.sendData.bits.isData @[LCDDisplay.scala 49:23]
              skip @[LCDDisplay.scala 47:34]
            else : @[LCDDisplay.scala 50:22]
              state <= UInt<1>("h00") @[LCDDisplay.scala 51:17]
              skip @[LCDDisplay.scala 50:22]
            skip @[LCDDisplay.scala 46:35]
          skip @[LCDDisplay.scala 43:21]
        skip @[LCDDisplay.scala 41:36]
    io.lcdSpi.serialClock <= spiClock @[LCDDisplay.scala 58:25]
    io.lcdSpi.dataCommand <= dataCommand @[LCDDisplay.scala 59:25]
    node _T_52 = neq(state, UInt<1>("h01")) @[LCDDisplay.scala 60:34]
    io.lcdSpi.chipSelectN <= _T_52 @[LCDDisplay.scala 60:25]
    node _T_53 = bits(sendValue, 7, 7) @[LCDDisplay.scala 61:42]
    io.lcdSpi.masterOutSlaveIn <= _T_53 @[LCDDisplay.scala 61:30]
    io.lcdSpi.resetN <= UInt<1>("h01") @[LCDDisplay.scala 63:20]
    io.lcdSpi.backLight <= UInt<1>("h01") @[LCDDisplay.scala 64:23]
    node _T_56 = eq(state, UInt<1>("h00")) @[LCDDisplay.scala 66:31]
    node _T_57 = eq(state, UInt<1>("h01")) @[LCDDisplay.scala 67:12]
    node _T_59 = eq(sendBitCount, UInt<3>("h07")) @[LCDDisplay.scala 67:42]
    node _T_60 = and(_T_57, _T_59) @[LCDDisplay.scala 67:26]
    node _T_61 = and(_T_60, spiClock) @[LCDDisplay.scala 67:50]
    node _T_62 = or(_T_56, _T_61) @[LCDDisplay.scala 66:46]
    io.sendData.ready <= _T_62 @[LCDDisplay.scala 66:21]
    
  module LCDDisplay : 
    input clock : Clock
    input reset : UInt<1>
    output io : {lcdSpi : {serialClock : UInt<1>, dataCommand : UInt<1>, chipSelectN : UInt<1>, masterOutSlaveIn : UInt<1>, flip masterInSlaveOut : UInt<1>, resetN : UInt<1>, backLight : UInt<1>}}
    
    wire colors : UInt<16>[8] @[LCDDisplay.scala 128:23]
    colors[0] <= UInt<16>("h0ffff") @[LCDDisplay.scala 128:23]
    colors[1] <= UInt<11>("h07ff") @[LCDDisplay.scala 128:23]
    colors[2] <= UInt<16>("h0ffe0") @[LCDDisplay.scala 128:23]
    colors[3] <= UInt<11>("h07e0") @[LCDDisplay.scala 128:23]
    colors[4] <= UInt<16>("h0f81f") @[LCDDisplay.scala 128:23]
    colors[5] <= UInt<5>("h01f") @[LCDDisplay.scala 128:23]
    colors[6] <= UInt<16>("h0f800") @[LCDDisplay.scala 128:23]
    colors[7] <= UInt<1>("h00") @[LCDDisplay.scala 128:23]
    wire rom : {isData : UInt<1>, value : UInt<8>}[52] @[LCDDisplay.scala 139:17]
    rom[0].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[0].value <= UInt<8>("h028") @[LCDDisplay.scala 143:19]
    rom[1].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[1].value <= UInt<8>("h0cb") @[LCDDisplay.scala 143:19]
    rom[2].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[2].value <= UInt<8>("h039") @[LCDDisplay.scala 143:19]
    rom[3].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[3].value <= UInt<8>("h02c") @[LCDDisplay.scala 143:19]
    rom[4].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[4].value <= UInt<8>("h00") @[LCDDisplay.scala 143:19]
    rom[5].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[5].value <= UInt<8>("h034") @[LCDDisplay.scala 143:19]
    rom[6].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[6].value <= UInt<8>("h02") @[LCDDisplay.scala 143:19]
    rom[7].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[7].value <= UInt<8>("h0cf") @[LCDDisplay.scala 143:19]
    rom[8].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[8].value <= UInt<8>("h00") @[LCDDisplay.scala 143:19]
    rom[9].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[9].value <= UInt<8>("h081") @[LCDDisplay.scala 143:19]
    rom[10].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[10].value <= UInt<8>("h030") @[LCDDisplay.scala 143:19]
    rom[11].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[11].value <= UInt<8>("h0ed") @[LCDDisplay.scala 143:19]
    rom[12].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[12].value <= UInt<8>("h064") @[LCDDisplay.scala 143:19]
    rom[13].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[13].value <= UInt<8>("h03") @[LCDDisplay.scala 143:19]
    rom[14].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[14].value <= UInt<8>("h012") @[LCDDisplay.scala 143:19]
    rom[15].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[15].value <= UInt<8>("h081") @[LCDDisplay.scala 143:19]
    rom[16].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[16].value <= UInt<8>("h0e8") @[LCDDisplay.scala 143:19]
    rom[17].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[17].value <= UInt<8>("h084") @[LCDDisplay.scala 143:19]
    rom[18].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[18].value <= UInt<8>("h011") @[LCDDisplay.scala 143:19]
    rom[19].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[19].value <= UInt<8>("h07a") @[LCDDisplay.scala 143:19]
    rom[20].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[20].value <= UInt<8>("h0ea") @[LCDDisplay.scala 143:19]
    rom[21].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[21].value <= UInt<8>("h066") @[LCDDisplay.scala 143:19]
    rom[22].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[22].value <= UInt<8>("h00") @[LCDDisplay.scala 143:19]
    rom[23].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[23].value <= UInt<8>("h0f7") @[LCDDisplay.scala 143:19]
    rom[24].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[24].value <= UInt<8>("h020") @[LCDDisplay.scala 143:19]
    rom[25].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[25].value <= UInt<8>("h0c0") @[LCDDisplay.scala 143:19]
    rom[26].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[26].value <= UInt<8>("h021") @[LCDDisplay.scala 143:19]
    rom[27].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[27].value <= UInt<8>("h0c1") @[LCDDisplay.scala 143:19]
    rom[28].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[28].value <= UInt<8>("h010") @[LCDDisplay.scala 143:19]
    rom[29].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[29].value <= UInt<8>("h0c5") @[LCDDisplay.scala 143:19]
    rom[30].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[30].value <= UInt<8>("h031") @[LCDDisplay.scala 143:19]
    rom[31].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[31].value <= UInt<8>("h03c") @[LCDDisplay.scala 143:19]
    rom[32].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[32].value <= UInt<8>("h0c7") @[LCDDisplay.scala 143:19]
    rom[33].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[33].value <= UInt<8>("h0c0") @[LCDDisplay.scala 143:19]
    rom[34].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[34].value <= UInt<8>("h03a") @[LCDDisplay.scala 143:19]
    rom[35].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[35].value <= UInt<8>("h055") @[LCDDisplay.scala 143:19]
    rom[36].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[36].value <= UInt<8>("h0b1") @[LCDDisplay.scala 143:19]
    rom[37].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[37].value <= UInt<8>("h00") @[LCDDisplay.scala 143:19]
    rom[38].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[38].value <= UInt<8>("h01b") @[LCDDisplay.scala 143:19]
    rom[39].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[39].value <= UInt<8>("h051") @[LCDDisplay.scala 143:19]
    rom[40].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[40].value <= UInt<8>("h0ff") @[LCDDisplay.scala 143:19]
    rom[41].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[41].value <= UInt<8>("h026") @[LCDDisplay.scala 143:19]
    rom[42].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[42].value <= UInt<8>("h01") @[LCDDisplay.scala 143:19]
    rom[43].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[43].value <= UInt<8>("h0b7") @[LCDDisplay.scala 143:19]
    rom[44].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[44].value <= UInt<8>("h06") @[LCDDisplay.scala 143:19]
    rom[45].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[45].value <= UInt<8>("h0b6") @[LCDDisplay.scala 143:19]
    rom[46].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[46].value <= UInt<8>("h0a") @[LCDDisplay.scala 143:19]
    rom[47].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[47].value <= UInt<8>("h082") @[LCDDisplay.scala 143:19]
    rom[48].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[48].value <= UInt<8>("h027") @[LCDDisplay.scala 143:19]
    rom[49].isData <= UInt<1>("h01") @[LCDDisplay.scala 142:19]
    rom[49].value <= UInt<8>("h00") @[LCDDisplay.scala 143:19]
    rom[50].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[50].value <= UInt<8>("h029") @[LCDDisplay.scala 143:19]
    rom[51].isData <= UInt<1>("h00") @[LCDDisplay.scala 142:19]
    rom[51].value <= UInt<8>("h02c") @[LCDDisplay.scala 143:19]
    reg programCounter : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[LCDDisplay.scala 145:31]
    reg x : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[LCDDisplay.scala 146:18]
    reg imageHighByte : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[LCDDisplay.scala 147:30]
    reg state : UInt<3>, clock with : (reset => (reset, UInt<3>("h00"))) @[LCDDisplay.scala 150:22]
    inst ili9341Spi of ILI9341SPI @[LCDDisplay.scala 152:26]
    ili9341Spi.clock <= clock
    ili9341Spi.reset <= reset
    ili9341Spi.io.sendData.bits.isData <= UInt<1>("h00") @[LCDDisplay.scala 154:38]
    ili9341Spi.io.sendData.bits.value <= UInt<1>("h00") @[LCDDisplay.scala 155:37]
    ili9341Spi.io.sendData.valid <= UInt<1>("h00") @[LCDDisplay.scala 156:32]
    node _T_213 = dshr(UInt<11>("h07d0"), UInt<5>("h018")) @[LCDDisplay.scala 158:75]
    node _T_214 = bits(_T_213, 0, 0) @[LCDDisplay.scala 158:75]
    reg stateHoldCount : UInt<1>, clock with : (reset => (reset, _T_214)) @[LCDDisplay.scala 158:31]
    wire stateChange : UInt<1>
    stateChange <= UInt<1>("h00")
    node _T_218 = eq(state, UInt<3>("h00")) @[LCDDisplay.scala 160:15]
    node _T_219 = eq(state, UInt<3>("h01")) @[LCDDisplay.scala 160:39]
    node _T_220 = or(_T_218, _T_219) @[LCDDisplay.scala 160:30]
    node _T_221 = eq(state, UInt<3>("h02")) @[LCDDisplay.scala 160:72]
    node _T_222 = or(_T_220, _T_221) @[LCDDisplay.scala 160:63]
    when _T_222 : @[LCDDisplay.scala 160:91]
      node _T_224 = sub(stateHoldCount, UInt<1>("h01")) @[LCDDisplay.scala 161:38]
      node _T_225 = asUInt(_T_224) @[LCDDisplay.scala 161:38]
      node _T_226 = tail(_T_225, 1) @[LCDDisplay.scala 161:38]
      stateHoldCount <= _T_226 @[LCDDisplay.scala 161:20]
      node _T_228 = eq(stateHoldCount, UInt<1>("h00")) @[LCDDisplay.scala 162:35]
      stateChange <= _T_228 @[LCDDisplay.scala 162:17]
      skip @[LCDDisplay.scala 160:91]
    when stateChange : @[LCDDisplay.scala 165:22]
      node _T_229 = eq(state, UInt<3>("h00")) @[LCDDisplay.scala 166:17]
      when _T_229 : @[LCDDisplay.scala 166:33]
        state <= UInt<3>("h01") @[LCDDisplay.scala 167:13]
        stateHoldCount <= UInt<25>("h01312d00") @[LCDDisplay.scala 168:22]
        skip @[LCDDisplay.scala 166:33]
      else : @[LCDDisplay.scala 169:49]
        node _T_231 = eq(state, UInt<3>("h01")) @[LCDDisplay.scala 169:24]
        when _T_231 : @[LCDDisplay.scala 169:49]
          state <= UInt<3>("h02") @[LCDDisplay.scala 170:13]
          stateHoldCount <= UInt<20>("h0f4240") @[LCDDisplay.scala 171:22]
          ili9341Spi.io.sendData.bits.value <= UInt<8>("h011") @[LCDDisplay.scala 173:41]
          ili9341Spi.io.sendData.bits.isData <= UInt<1>("h00") @[LCDDisplay.scala 174:42]
          ili9341Spi.io.sendData.valid <= UInt<1>("h01") @[LCDDisplay.scala 175:36]
          skip @[LCDDisplay.scala 169:49]
        else : @[LCDDisplay.scala 176:43]
          node _T_236 = eq(state, UInt<3>("h02")) @[LCDDisplay.scala 176:24]
          when _T_236 : @[LCDDisplay.scala 176:43]
            state <= UInt<3>("h03") @[LCDDisplay.scala 177:13]
            skip @[LCDDisplay.scala 176:43]
      skip @[LCDDisplay.scala 165:22]
    else : @[LCDDisplay.scala 179:41]
      node _T_237 = eq(state, UInt<3>("h03")) @[LCDDisplay.scala 179:22]
      when _T_237 : @[LCDDisplay.scala 179:41]
        when ili9341Spi.io.sendData.ready : @[LCDDisplay.scala 180:41]
          node _T_239 = lt(programCounter, UInt<6>("h034")) @[LCDDisplay.scala 181:28]
          when _T_239 : @[LCDDisplay.scala 181:52]
            node _T_241 = bits(programCounter, 5, 0)
            ili9341Spi.io.sendData.bits.value <= rom[_T_241].value @[LCDDisplay.scala 182:37]
            ili9341Spi.io.sendData.bits.isData <= rom[_T_241].isData @[LCDDisplay.scala 182:37]
            ili9341Spi.io.sendData.valid <= UInt<1>("h01") @[LCDDisplay.scala 183:38]
            node _T_244 = add(programCounter, UInt<1>("h01")) @[LCDDisplay.scala 185:42]
            node _T_245 = tail(_T_244, 1) @[LCDDisplay.scala 185:42]
            programCounter <= _T_245 @[LCDDisplay.scala 185:24]
            skip @[LCDDisplay.scala 181:52]
          else : @[LCDDisplay.scala 186:9]
            state <= UInt<3>("h04") @[LCDDisplay.scala 187:15]
            skip @[LCDDisplay.scala 186:9]
          skip @[LCDDisplay.scala 180:41]
        skip @[LCDDisplay.scala 179:41]
      else : @[LCDDisplay.scala 190:37]
        node _T_246 = eq(state, UInt<3>("h04")) @[LCDDisplay.scala 190:22]
        when _T_246 : @[LCDDisplay.scala 190:37]
          when ili9341Spi.io.sendData.ready : @[LCDDisplay.scala 191:41]
            node _T_248 = div(x, UInt<5>("h01e")) @[LCDDisplay.scala 192:28]
            node _T_250 = bits(_T_248, 2, 0)
            node _T_251 = not(imageHighByte) @[LCDDisplay.scala 193:24]
            imageHighByte <= _T_251 @[LCDDisplay.scala 193:21]
            node _T_253 = eq(imageHighByte, UInt<1>("h00")) @[LCDDisplay.scala 194:13]
            when _T_253 : @[LCDDisplay.scala 194:29]
              node _T_255 = eq(x, UInt<8>("h0ef")) @[LCDDisplay.scala 195:17]
              when _T_255 : @[LCDDisplay.scala 195:28]
                x <= UInt<1>("h00") @[LCDDisplay.scala 196:13]
                skip @[LCDDisplay.scala 195:28]
              else : @[LCDDisplay.scala 197:22]
                node _T_258 = add(x, UInt<1>("h01")) @[LCDDisplay.scala 198:18]
                node _T_259 = tail(_T_258, 1) @[LCDDisplay.scala 198:18]
                x <= _T_259 @[LCDDisplay.scala 198:13]
                skip @[LCDDisplay.scala 197:22]
              skip @[LCDDisplay.scala 194:29]
            node _T_260 = bits(colors[_T_250], 15, 8) @[LCDDisplay.scala 201:68]
            node _T_261 = bits(colors[_T_250], 7, 0) @[LCDDisplay.scala 201:82]
            node _T_262 = mux(imageHighByte, _T_260, _T_261) @[LCDDisplay.scala 201:47]
            ili9341Spi.io.sendData.bits.value <= _T_262 @[LCDDisplay.scala 201:41]
            ili9341Spi.io.sendData.bits.isData <= UInt<1>("h01") @[LCDDisplay.scala 202:42]
            ili9341Spi.io.sendData.valid <= UInt<1>("h01") @[LCDDisplay.scala 203:36]
            skip @[LCDDisplay.scala 191:41]
          skip @[LCDDisplay.scala 190:37]
    io.lcdSpi.backLight <= ili9341Spi.io.lcdSpi.backLight @[LCDDisplay.scala 207:13]
    io.lcdSpi.resetN <= ili9341Spi.io.lcdSpi.resetN @[LCDDisplay.scala 207:13]
    ili9341Spi.io.lcdSpi.masterInSlaveOut <= io.lcdSpi.masterInSlaveOut @[LCDDisplay.scala 207:13]
    io.lcdSpi.masterOutSlaveIn <= ili9341Spi.io.lcdSpi.masterOutSlaveIn @[LCDDisplay.scala 207:13]
    io.lcdSpi.chipSelectN <= ili9341Spi.io.lcdSpi.chipSelectN @[LCDDisplay.scala 207:13]
    io.lcdSpi.dataCommand <= ili9341Spi.io.lcdSpi.dataCommand @[LCDDisplay.scala 207:13]
    io.lcdSpi.serialClock <= ili9341Spi.io.lcdSpi.serialClock @[LCDDisplay.scala 207:13]
    node _T_265 = eq(state, UInt<3>("h00")) @[LCDDisplay.scala 208:15]
    when _T_265 : @[LCDDisplay.scala 208:31]
      io.lcdSpi.resetN <= UInt<1>("h00") @[LCDDisplay.scala 209:22]
      skip @[LCDDisplay.scala 208:31]
    
