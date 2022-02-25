# design-space-exploration-matrix-convolution-operation

The abstract of the paper is as follows:

Convolution is an important operation in neural networks which, in recent years, received significant attention from the researchers thanks to its ability to handle complex tasks such as image processing, computer vision in an efficient manner. In general, the convolution operation in neural networks considers two matrices as inputs: an image matrix representing an image and a kernel matrix required for necessary image processing operation and performs several multiplications and addition operations among the elements of image and kernel matrices. Realizing a circuit structure for matrix–matrix convolution is straightforward as each multiplication is realized by a multiplier, whereas an addition is carried out by an adder. However, the corresponding circuits result in large area, high power consumption and long delay because of the large number of multiplications and additions that are involved in the matrix–matrix convolution operations.

While, the existing approaches focus on the accelerations of this computationally intensive tasks, they often do not guarantee minimality of area, power and delay. But we show that there exists design aspects through which the circuit structures for convolution operations can be realized with less area, power and delay. To do this, we consider the kernel definitions during the design of the circuit structures since the kernel matrices are often (pre)-determined based on the desired applications. Motivated by this, we first explore the design space of the convolution operation by introducing an alternative design scheme for realizing the respective operation between two matrices keeping the image processing/neural network applications in mind. Experimental evaluations confirm the potential benefits of the proposed design scheme and demonstrate that the reductions in the area and power by approximately 88%
and critical path delay by approximately 31% can be achieved using the proposed design scheme. In addition, the FPGA implementations of the proposed scheme also show that the reductions of approximately 93% and 54% in the number of LUTs and in the number of pins, respectively, can be achieved. Compared to prior works, the proposed scheme allows higher parallelism with minimum LUT utilization.

The full paper can be found in this link 

https://www.worldscientific.com/doi/abs/10.1142/S0218126621502881

citation for the paper is as follows:

@article{behera2021design,
  title={Design Space Exploration of Matrix--Matrix Convolution Operation},
  author={Behera, Piyalee and Deb, Arighna},
  journal={Journal of Circuits, Systems and Computers},
  pages={2150288},
  year={2021},
  publisher={World Scientific}
}
