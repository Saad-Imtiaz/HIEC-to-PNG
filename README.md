# HEIC to PNG Converter

This repository contains a script `start.bat`, which automates the process of converting HEIC images to PNG format using ImageMagick.

## Description

The `start.bat` script scans a folder for HEIC images and generates a batch file with commands to convert these images to the PNG format using ImageMagick. Users can run the generated batch file to perform the conversion.

## Prerequisites

Before you can use the script, you need to have ImageMagick installed on your system. ImageMagick is a powerful image manipulation tool that supports various formats, including HEIC.

### Downloading and Installing ImageMagick

1. **Download ImageMagick**: Visit the [official ImageMagick download page](https://imagemagick.org/script/download.php).
   
2. **Choose the Right Version**: Make sure to download the version compatible with your operating system. For Windows users, there are both installable and portable versions available.

3. **Install ImageMagick**: Follow the installation instructions. During installation, ensure that you check the option to 'Add application directory to your system path' for ease of use.

## Usage

1. **Clone or Download This Repository**: Download the script from this repository to your local machine.

2. **Place the Script in the Desired Directory**: Copy `start.bat` to the directory where your HEIC images are stored.

3. **Run the Script**: Double-click on `start.bat` or run it from the command prompt. The script will generate a new batch file `ConvertHEICToPNGCommands.bat` in the same directory.

4. **Execute the Conversion**: Run `HEICToPNG.bat` to convert all HEIC files in the folder to PNG format.

## Contributing

Contributions to improve the script or suggestions for additional features are welcome. Please feel free to fork the repository and submit pull requests.

## License

This script is released under the MIT License. See the [LICENSE](LICENSE) file for more details.
