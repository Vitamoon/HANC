# HANC
*Work in progress. Please refer to the readme.txt file included in the package for instructions. Here it also is for your convenience:*


Hello and thanks for doing your part in saving the environment!
Please read through the entirety of this document before use.
This is version 1.0.0.0 of HANC Package by Kaelan Yim.
This software is still in a testing phase and may contain bugs.

To use this program you must agree to the terms and conditions,
located at the bottom of this file.

If you have any questions, contact me at kaelan@hanc.tech
To report a bug, please raise an issue on the GitHub page:
(I'm getting an organization URL sorted out so use here for now)


MANIFEST
---
If you're missing one of these, either you have a modified copy (uh-oh)
or an older version. Either way, please download the newest release.

readme.txt - this file!
folder named "Scripts"
AutoHotkey v1.1.34.03
Prime95 v30.9.1-beta
Elmor THUSB v1.0.0.0
FurMark v1.30.0.0
Folding@home v7.6.21
FoldingElmorCLICKME.lnk
FoldingQuadroCLICKME.lnk
OfflineElmorCLICKME.lnk
OfflineQuadroCLICKME.lnk


INSTRUCTIONS
---
Put the "CLICK ME" files on your desktop or pin to your Start Menu or wherever else is convenient for you.
Put the HANC folder in the directory C:\Users\%USERNAME%\Documents so everything works. See release notes for a picture of how it should be.

Quadro version is for any Aquacomputer fan control device (such as Quadro and Octo) and you need to configure Aquasuite to log to the AmbientTemperature.xml file provided in the Quadro folder. I recommend setting the logging interval to 60 seconds.
Elmor version is for a special board which Elmor is helping me develop, the software for it is bundled with this download. The item isn't available to purchase nor would I be able to send you one anytime soon, so you can safely ignore it for now.

The scripts are currently set to run for 600 minutes (10 hours). It's designed to run overnight.
If you run into any problems, hit the Terminate button then spam F4 to force quit the scripts.

If you don't already have AutoHotkey installed, you need to associate the .ahk file type with the bundled AutoHotkey executable, specifically AutoHotkeyU64.exe. You also need to install FurMark.

Note: Currently I am unable to find a way to set F@H to run at power level "Full" using the command line. You'll need to manually set it to run at Full every time the script is run, which can be done by right clicking the F@H icon in the system tray (Bottom right of the screen. You may need to open up the overflow menu. I suggest dragging the icon out for future ease of use.) and selecting "Full". Medium, the default, is capped at 75% of the maximum processor usage.


DISCLAIMER
---
Copyright © 2022 Kaelan Yim

THIS PROGRAM AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY
OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR
FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL ANY OF THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES, CLAIM,
OR OTHER LIABILITY OF ANY KIND WHATSOEVER, INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, LOSS OF
USE, DATA, OR PROFITS, OR BUSINESS INTERRUPTION, WHETHER OR NOT
ADVISED OF THE POSSIBILITY OF DAMAGE, HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
TORT (INCLUDING NEGLICENCE OR OTHERWISE), ARISING IN ANY WAY OUT
OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
