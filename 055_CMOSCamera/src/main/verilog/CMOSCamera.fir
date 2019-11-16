;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit CMOSCamera : 
  module CMOSCamera : 
    input clock : Clock
    input reset : UInt<1>
    output io : {lcdSpi : {serialClock : UInt<1>, dataCommand : UInt<1>, chipSelectN : UInt<1>, masterOutSlaveIn : UInt<1>, flip masterInSlaveOut : UInt<1>, resetN : UInt<1>, backLight : UInt<1>}, cmosCam : {systemClock : UInt<1>, flip verticalSync : UInt<1>, flip horizontalRef : UInt<1>, flip pixelclock : UInt<1>, flip pixcelData : UInt<8>, sccbClock : UInt<1>, sccbData : UInt<1>, resetN : UInt<1>, powerDown : UInt<1>}}
    
    io.lcdSpi.serialClock <= UInt<1>("h01") @[CMOSCamera.scala 36:25]
    io.lcdSpi.dataCommand <= UInt<1>("h01") @[CMOSCamera.scala 37:25]
    io.lcdSpi.chipSelectN <= UInt<1>("h01") @[CMOSCamera.scala 38:25]
    io.lcdSpi.masterOutSlaveIn <= UInt<1>("h01") @[CMOSCamera.scala 39:30]
    io.lcdSpi.resetN <= UInt<1>("h01") @[CMOSCamera.scala 40:20]
    io.lcdSpi.backLight <= UInt<1>("h01") @[CMOSCamera.scala 41:23]
    io.cmosCam.systemClock <= UInt<1>("h01") @[CMOSCamera.scala 43:26]
    io.cmosCam.sccbClock <= UInt<1>("h01") @[CMOSCamera.scala 44:24]
    io.cmosCam.sccbData <= UInt<1>("h01") @[CMOSCamera.scala 45:23]
    io.cmosCam.resetN <= UInt<1>("h01") @[CMOSCamera.scala 46:21]
    io.cmosCam.powerDown <= UInt<1>("h00") @[CMOSCamera.scala 47:24]
    
