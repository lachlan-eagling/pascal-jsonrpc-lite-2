//
// Author: Dmitriy S. Sinyavskiy, 2016
// 

//{$DEFINE DUNIT_CONSOLE_MODE}

program testjsonrpclite;

{%File '..\source\utils\FastMM4Options.inc'}

uses
  FastMM4,
  SysUtils,
  TestFramework,
  TestExtensions,
  GUITestRunner,
  TextTestRunner,
  testjsonrpc in '..\test\testjsonrpc.pas',
  testjsonrpcerrors in '..\test\testjsonrpcerrors.pas',
  ujsonrpc2 in '..\source\ujsonrpc2.pas';

{$IFDEF DUNIT_CONSOLE_MODE}
  {$APPTYPE CONSOLE}
{$ELSE}
  {$R *.RES}
{$ENDIF}

begin
{$IFDEF DUNIT_CONSOLE_MODE}
  if not FindCmdLineSwitch('Graphic', ['-','/'], True) then
    TextTestRunner.RunRegisteredTests(rxbHaltOnFailures)
  else
{$ENDIF}
    GUITestRunner.RunRegisteredTests;
end.
