# RL-Robot-Control
Implementations of popular reinforcement learning algorithms evaluated on continuous control tasks from OpenAI's Gym

We include the following algorithms 

-   Trust Region Policy Optimization (TRPO) 
-   Deep Deterministic Policy Gradient (DDPG) 
-   Actor Critic using Kronecker-Factored Trust Region (ACKTR)
-   Proximal Policy Optimization (PPO) 

The `run_experiments` script trains each of these algorithms on various Gym environments including:
-   Reacher-v2
-   InvertedPendulum-v2 
-   Walker2d-v2 
-   Humanoid-v2  
-   HalfCheetah-v2  
-   InvertedDoublePendulum-v2 

To train a single algorithm:   
`python -m baselines.run --alg=ddpg --env=Reacher-v2 --num_timesteps=10e6 --save_path=/path/for/weights --log_path=/path/to/log/rewards`

The `learning_plots.ipynb` notebook visualizes the reward over time for each of our experiments   
The `evaluation.ipynb` notebook contains evaluation code and results for each experiment   
We calculate the average reward returned from the top 20 episodes of training as well as the first episode for which the mean reward over the N<sup></sup>th to the (N+10)<sup>th</sup> episodes crosses a certain threshold   

