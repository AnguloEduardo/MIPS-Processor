//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "C:/Xilinx/14.7/ISE_DS/EDK/bin/nt;C:/Xilinx/14.7/ISE_DS/EDK/lib/nt;C:/Xilinx/14.7/ISE_DS/ISE/bin/nt;C:/Xilinx/14.7/ISE_DS/ISE/lib/nt;C:/Xilinx/14.7/ISE_DS/common/bin/nt;C:/Xilinx/14.7/ISE_DS/common/lib/nt;C:/Xilinx/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "C:/Xilinx/14.7/ISE_DS/EDK/bin/nt;C:/Xilinx/14.7/ISE_DS/EDK/lib/nt;C:/Xilinx/14.7/ISE_DS/ISE/bin/nt;C:/Xilinx/14.7/ISE_DS/ISE/lib/nt;C:/Xilinx/14.7/ISE_DS/common/bin/nt;C:/Xilinx/14.7/ISE_DS/common/lib/nt;C:/Xilinx/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "ngdbuild",
         "-intstyle ise -p xc6slx16csg324-3 -dd _ngo -uc \"ALU.ucf\" \"ALU.edf\"" );
ISEStep( "map",
         "-intstyle pa -w -r 4 -ol high \"ALU.ngd\"" );
ISEStep( "par",
         "-intstyle pa \"ALU.ncd\" -w \"ALU_routed.ncd\" -ol high" );
ISEStep( "trce",
         "-intstyle ise -o \"ALU.twr\" -v 3 -l 30 -nodatasheet -fastpaths \"ALU_routed.ncd\" \"ALU.pcf\"" );
ISEStep( "xdl",
         "-secure -ncd2xdl -nopips \"ALU_routed.ncd\" \"ALU_routed.xdl\"" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
