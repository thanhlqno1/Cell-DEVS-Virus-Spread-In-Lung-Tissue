
import re
lines = []
# read file
with open('log.log', 'r') as fp:
    # read an store all lines into list
    lines = fp.readlines()

with open('ok.log', 'w') as fp:
    for number, line in enumerate(lines):
        if (re.findall(r'(\d+:\d+:\d+:\d+:\d+)', line)[0]) not in ['00:00:00:000:0','00:00:00:001:0'] :
            fp.write(line)
file1 = open('log.log', 'r')
Lines = file1.readlines()

count = 0
# Strips the newline character
healthy = 0
infected = 0
produce = 0
nproduce = 0
dead = 0
virion = 0
cytokine = 0
immune = 0
virus = 0
cell = {}
timeline = '00:00:00:001:0'
time = { timeline : [0,0,0,0,0,0,0,0,0]}
first = '00:00:00:001:0'
second = '00:00:00:001:0'
for line in Lines:
    count += 1
    # print("Line{}: {}".format(count, line.strip()))
    timeline = (re.findall(r'(\d+:\d+:\d+:\d+:\d+)', line)[0])
    if timeline == '00:00:00:001:0':
        if 'out_state' in re.findall(r'(out_state)', line) and '2' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line) :
            index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
            if index not in cell.keys():
                cell[index] = [1, 0, 0, 0, 0]
            if re.findall(r'out_state /\s+(\d+)', line)[0] == '1':
                cell[index][0] = 1
                healthy += 1
            if re.findall(r'out_state /\s+(\d+)', line)[0] == '2':
                cell[index][0] = 2
                infected += 1
            if re.findall(r'out_state /\s+(\d+)', line)[0] == '3':
                cell[index][0] = 3
                produce += 1
            if re.findall(r'out_state /\s+(\d+)', line)[0] == '4':
                cell[index][0] = 4
                nproduce += 1
            if re.findall(r'out_state /\s+(\d+)', line)[0] == '0':
                cell[index][0] = 0
                dead += 1
        if 'out_virion' in re.findall(r'(out_virion)', line) and '2' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
            num_virion = int(re.findall(r'out_virion /\s+(\d+)', line)[0])
            virion +=num_virion
            cell [index][1] = num_virion

        if 'out_cytokine_secreting' in re.findall(r'(out_cytokine_secreting)', line) and '3' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
            index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
            num_cytokine = int(re.findall(r'out_cytokine_secreting /\s+(\d+)', line)[0])
            cytokine += num_cytokine
            cell[index] = [0, 0, num_cytokine, 0, 0]

        if 'out_state' in re.findall(r'(out_state)', line) and '4' in re.findall( r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
            index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
            num_immune = int(re.findall(r'out_state /\s+(\d+)', line)[0])
            immune += num_immune
            cell[index] = [0, 0, 0, num_immune, 0]

        if 'out_virus /' in re.findall(r'(out_virus /)', line) and '1' in re.findall( r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
            index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
            num_virus = int(re.findall(r'out_virus /\s+(\d+)', line)[0])
            virus += num_virus
            cell[index] = [0, 0, 0, 0, num_virus]

time[first] = [dead,healthy,infected,produce,nproduce,virion,cytokine,immune,virus]
print(cell)
file1 = open('ok.log', 'r')
Lines = file1.readlines()
print(time[first])
for line in Lines:
    timeline = (re.findall(r'(\d+:\d+:\d+:\d+:\d+)', line)[0])
    if timeline != second:

        first = second
        # print(timeline)
        # print(time[first])
        second = timeline
        time[second] = time[first].copy()


    if 'out_state' in re.findall(r'(out_state)', line) and '2' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line) :
        index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
        if re.findall(r'out_state /\s+(\d+)', line)[0] == '1':
            time[second][int(cell[index][0])] -= 1
            time[second][1] += 1
            cell[index][0] = 1
            print(cell[index])
        if re.findall(r'out_state /\s+(\d+)', line)[0] == '2':
            time[second][int(cell[index][0])] -= 1
            time[second][2] += 1
            cell[index][0] = 2
        if re.findall(r'out_state /\s+(\d+)', line)[0] == '3':
            time[second][int(cell[index][0])] -= 1
            time[second][3] += 1
            cell[index][0] = 3
        if re.findall(r'out_state /\s+(\d+)', line)[0] == '4':
            time[second][int(cell[index][0])] -= 1
            time[second][4] += 1
            cell[index][0] = 4
        if re.findall(r'out_state /\s+(\d+)', line)[0] == '0':
            time[second][int(cell[index][0])] -= 1
            time[second][0] += 1
            cell[index][0] = 0
    if 'out_virion' in re.findall(r'(out_virion)', line) and '2' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
        index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
        num_virion = int(re.findall(r'out_virion /\s+(\d+)', line)[0])
        time[second][5] += num_virion
        time[second][5] -= cell[index][1]
        cell[index][1] = num_virion

    if 'out_cytokine_secreting' in re.findall(r'(out_cytokine_secreting)', line) and '3' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
        index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
        num_cytokine = int(re.findall(r'out_cytokine_secreting /\s+[-]*(\d+)', line)[0])
        time[second][6] += num_cytokine
        time[second][6] -= cell[index][2]
        cell[index][2] = num_cytokine

    if 'out_state' in re.findall(r'(out_state)', line) and '4' in re.findall( r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
        index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
        num_immune = int(re.findall(r'out_state /\s+[-]*(\d+)', line)[0])
        time[second][7] += num_immune
        time[second][7] -= cell[index][3]
        cell[index][3] = num_immune

    if 'out_virus /' in re.findall(r'(out_virus /)', line) and '1' in re.findall(r'/ cellular[(]\d+,\d+,(\d+)[)][(]\d+', line):
        index = re.findall(r'/ cellular[(]\d+,\d+,\d+[)][(](\d+)', line)[0]
        num_virus = int(re.findall(r'out_virus /\s+[-]*(\d+)', line)[0])
        time[second][8] += num_virus
        time[second][8] -= cell[index][4]
        cell[index][4] = num_virus



print(healthy)
print(infected)
print(produce)
print(virion)
healthy = []
infected = []
produce = []
nproduce = []
dead = []
virion = []
cytokine = []
virus = []
immune = []

time1 = []
#
for key, value in time.items() :
    healthy.append(value[1])
    infected.append(value[2])
    produce.append(value[3])
    nproduce.append(value[4])
    dead.append(value[0])
    virion.append(value[5])
    ms = int(re.findall(r'\d+:\d+:\d+:(\d+):\d+', key)[0])
    s = int(re.findall(r'\d+:\d+:(\d+):\d+:\d+', key)[0])
    min = int(re.findall(r'\d+:(\d+):\d+:\d+:\d+', key)[0])
    hour = int(re.findall(r'(\d+):\d+:\d+:\d+:\d+', key)[0])
    result_min = (hour*60 + min + (s + (ms - 1)/1000)/60) * 60
    time1.append(result_min)
    cytokine.append(value[6])
    immune.append(value[7])
    virus.append((value[8]))

# #
# #
# #
# #

import pandas as pd

df = pd.DataFrame(list(zip(time1, healthy,infected,produce,nproduce,dead,virion,cytokine,immune,virus)),
			columns =['Time', 'healthy','infected','secreting','n-secreting','dead','virion','cytokine','immune','virus' ])
print(df)

df.to_csv('out.csv')
#/////////////////////////////


import matplotlib.pyplot as plt
import pandas as pd
df = pd.read_csv('high2.csv',
                 index_col='Time',
                 parse_dates=True)

print(df.head(10))
plt.figure(figsize=(16, 8), dpi=150)


plot1 = plt.figure(1)
# df['Time'].plot(label='Time', color='orange')
df['healthy'].plot(label='Healthy')
df['infected'].plot(label='Infected')
df['secreting'].plot(label='Secreting')
df['n-secreting'].plot(label='Non-secreting ')
df['dead'].plot(label='Dead')

# adding title to the plot
plt.title("Quantification of Epithelial Cell State")
#
# adding Label to the x-axis
plt.xlabel('Time (minutes)')
plt.ylabel("Cell's number")
# adding legend to the curve
plt.legend()

plot2 = plt.figure(2)

df['virion'].plot(label='Virion')

plt.title('Quantification for the number of Virions produced')
#
# adding Label to the x-axis
plt.xlabel('Time (minutes)')
plt.ylabel("Virions")
# adding legend to the curve
plt.legend()

plot3 = plt.figure(3)

df['cytokine'].plot(label="Cytokine's concentration")

plt.title('Quantification for the cytokine')
#
# adding Label to the x-axis
plt.xlabel('Time (minutes)')
plt.ylabel("Cytokine's concentration")
# adding legend to the curve
plt.legend()

plot4 = plt.figure(4)

df['virus'].plot(label='Virus')

plt.title('Quantification for the virus in extracellular environment')
#
# adding Label to the x-axis
plt.xlabel('Time (minutes)')
plt.ylabel("Virus's number")
# adding legend to the curve
plt.legend()

plot5 = plt.figure(5)

df['immune'].plot(label='Active Immune Cell')

plt.title('Quantification for the active immune cell')
#
# adding Label to the x-axis
plt.xlabel("Time (minutes)")
plt.ylabel("Active Cell's number")
# adding legend to the curve
plt.legend()

plt.show()
