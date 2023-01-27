<img align="left" src="https://github.com/PepeBigotes/improvedduckduino/blob/master/duckduinologo.png" width=125px height=125px>
<h1 align="center">Improved DuckDuino</h1>
<h3 align="center">Improved version of the duckduino tool</h3>


<h2>About</h2>

This is a fork of the DuckDuino tool, which is used to modify the firmware of an Arduino Uno board to make it act like a RubberDucky.  
Check out [the original version of the DuckDuino tool](https://github.com/Lacerda53/duckduino).  
<h3>This improved version counts with:</h3>

- Simplified `script.sh`.
- Some extra functions in the template script, including:   
 `ARROW()` , `ARROWS()` , `TABS()` , `FKeys()` , `ALT_F()` , `CTRL_KEY()`  
- Fixed `WINDOWS()` to work with null input.  
- Easy to use `dependencies.sh`, `autoremove.sh` and `updateduckduino.sh` scripts.  
<h2>Installation</h2>

First, clone the repository.  
```bash
git clone https://github.com/PepeBigotes/improvedduckduino
```  
After that head over to the downloaded files.
```bash
cd improvedduckduino
```
And execute the `dependencies.sh` script.
```bash
chmod +x dependencies.sh && ./dependencies.sh
```  
Now you can use the `script.sh` located in the `ArduinoUNO_HID` directory.  
Keep in mind that you need a prepared `.ino` script to create a payload.
```bash
cd ArduinoUNO_HID 
```
```bash
chmod +x script.sh && ./script.sh
```

