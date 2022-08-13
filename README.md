# Cell-DEVS-Virus-Spread-In-Lung-Tissue

The model was tested and runs on lubuntu linux using the 'cd++' binary found in the root of the repo.

## File Organization

- /Scenario_1/ [*This folder contains the files needed to run the model with a weak immune system and low penetration.*]
    - /model.ma [*Atomic model file that is used to run the model*]
    - /model.val [*Value file to set initial values of cells*]
    - /run.sh [*Bash script file to run the simulation using cd++ and save the log*]
    - /cytokine.pal [*Palette file used to set colors for the cytokine port*]
    - /epithelial.pal [*Palette file used to set colors for the epithelial port*]
    - /immune.pal [*Palette file used to set colors for immune port*]
    - /virus.pal [*Palette file used to set colors for the virus port*]
- /Scenario_2/ [*This folder contains the files needed to run the model with high immunity and low viral penetration.*]
    - /model.ma [*Atomic model file that is used to run the model*]
    - /model.val [*Value file to set initial values of cells*]
    - /run.sh [*Bash script file to run the simulation using cd++ and save the log*]
    - /cytokine.pal [*Palette file used to set colors for the cytokine port*]
    - /epithelial.pal [*Palette file used to set colors for the epithelial port*]
    - /immune.pal [*Palette file used to set colors for immune port*]
    - /virus.pal [*Palette file used to set colors for the virus port*]
- /Scenario_3/ [*This folder contains the files needed to run the model with high immunity and high viral penetration.*]
    - /model.ma [*Atomic model file that is used to run the model*]
    - /model.val [*Value file to set initial values of cells*]
    - /run.sh [*Bash script file to run the simulation using cd++ and save the log*]
    - /cytokine.pal [*Palette file used to set colors for the cytokine port*]
    - /epithelial.pal [*Palette file used to set colors for the epithelial port*]
    - /immune.pal [*Palette file used to set colors for immune port*]
    - /virus.pal [*Palette file used to set colors for the virus port*]
- /cd++ [*cd++ binary to run the simualations*]
- /Report.docx [*The full report for the model including the conceptual model and the simulation results in 'doc' format*]
- /Quantification.py [*Python file that is used for quantification from log file*]
- /README.md

## Steps to Run

**Note:** Each of the three models are run separately.

1. Navigate to the folder of the model you would like to run. (e.g. '/Scenario_1/')
2. Rename the '.log' file if you would like to save the past results.
3. Start a terminal in the folder and run the script file.

    Type: `./run.sh`
4. The script will run and will save the results in a '.log' file before exiting.

## Steps to Visualize

1. Simulate the model or use the '.log' file already found in the repo.
2. Go to the CD++ Web Viewer found at http://cell-devs.sce.carleton.ca/intranet/webviewer/
3. Upload the '.log', '.ma', '.pal', '.val' files, and select the 'Load simulation' button.
5. Choose the model's port you want to be visualized.
6. The simulation will be visualized and you can use the media buttons to control playback.