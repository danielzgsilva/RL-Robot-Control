#!/bin/bash


conda activate rl_env
cd ~/Documents/baselines

timesteps=1000000
models_path=~/Documents/robotics_project/models
logs_path=~/Documents/robotics_project/logs

for env in Reacher-v2 InvertedPendulum-v2 Walker2d-v2 Humanoid-v2 HalfCheetah-v2 InvertedDoublePendulum-v2
do 
	for alg in ddpg ppo2 her trpo_mpi acktr
	do
		python -m baselines.run --alg=$alg --env=$env --num_timesteps=$timesteps --save_path=$models_path/$env/$alg --log_path=$logs_path/$env/$alg
	done

done

cd ~/Documents/robotics_project
