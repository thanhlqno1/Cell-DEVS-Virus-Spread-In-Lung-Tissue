#!/bin/bash
sudo mkdir results
sudo ../cd++ -m"model.ma" -l"results/simulation.log" 
sudo cp results/simulation.log01 ./simulation.log
sudo rm -r results
