Based on the work of Kaiyang Zhou
# F-SCP
# An Automatic Prompt Generation Method for Specific Classes based on Visual Language Pre-training Models


## Introduction
This is an pytorch implementation of 《F-SCP: An Automatic Prompt Generation Method for Specific Classes based on Visual Language Pre-training Models》. 
In this paper, we propose a novel automatic prompt generation method called F-SCP (Filter-based Specific Class Prompt), which distinguishes itself from the CoOp-UC (Unified Context)
model and the CoOp-CSC model. Our approach focuses on prompt generation for low-accuracy classes and similar classes. We add the Filter and
SCP modules to the prompt generation architecture. The Filter module selects the poorly classified classes, and then reproduces the prompts through
the SCP (Specific Class Prompt) module to replace the prompts of specific
classes. </br>

![Illustrating the architecture of the proposed F-SCP](/F2.png)
![The flow of the Filter module and the SCP module.](/F3.png)
## Main Results
![F-SCP vs COOP](/F-SCP_vs_CoOp.png)
### Results on six datasets
|    | Caltech-101 | DTD |  EuroSAT | Flower102 | Oxfordpets | Food101 |
|--------------------|------------|---------|--------|-------|-------|--------|--------|--------|-------|
| CLIP | 86.1 | 42.6 | 38.2 | 66.1 | 86.2 | 77.8 |
| CoOp-UC | 91.7 | 63.2 | 81.8 | 94.4 | 86.9 | 74.8 |
| CoOp-CSC | 90.3 | 63.1 | 82.8 | 96.0 | 79.7 | 70.4 |
| F-SCP | 92.0 | 65.2 | 85.8 | 96.2 | 87.6 | 76.3 |


### Results on COCO test-dev2017 with detector having human AP of 60.9 on COCO test-dev2017 dataset
| Arch               | Input size | #Params | GFLOPs |    AP | Ap .5 | AP .75 | AP (M) | AP (L) |    AR |
|--------------------|------------|---------|--------|-------|-------|--------|--------|--------|-------|
| **HM2PN_w32** |    384x288 | 28.4M   |   15.9 | 0.767 | 0.950 |  0.842 |  0.736 |  0.803 | 0.784 |
| **HM2PN_w48** |    384x288 | 63.5M   |   32.8 | 0.771 | 0.950 |  0.848 |  0.743 |  0.810 | 0.798 |
| **HM2PN_w48+UDP** |    384x288 | 63.7M   |   32.4 | 0.779 | 0.952 |  0.850 |  0.753 |  0.818 | 0.805 |


## Quick start
Please refer to [CoOp](https://github.com/KaiyangZhou/CoOp)

