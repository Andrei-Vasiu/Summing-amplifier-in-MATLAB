	In this project, we have created an interactive interface that provides users with a wide range of options for exploring and understanding concepts related to summing amplifiers. Within this project, we find: displaying the circuit on the screen, the ability to modify resistors, choosing the desired input signal, as well as inputting custom values.
	The main_ampsum script defines variables and creates a menu in the MATLAB graphical user interface. The menu has two options that open documentation and presentation files. Additionally, the script calls a function named  calcul_ampsum with certain arguments.
	The calcul_ampsum function creates a MATLAB graphical user interface (GUI) to compute and display various aspects of a summing amplifier. The GUI includes an image of a circuit, controls for editing resistor and frequency values, as well as a menu to select the type of signal. Depending on the selected signal type, signal values are generated and the output of the summing amplifier is calculated. Additionally, input and output signals are displayed on separate plots. If the selected signal is not a constant (DC) signal, the slew rate of the output signal is also calculated and displayed.



