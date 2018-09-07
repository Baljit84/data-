## Fused Net

Fused feature can be Computed by providing optical flow features and RGB data to the following net

https://drive.google.com/open?id=1GMdYVYEdvF6daePq7Cu3UdbrugNp8lIZ

Its lua file is attached named nettot.lua

In this two types of data can be forwarded to net using (net:forward(input1, input2)), This will generate the fused output which can further be passed to Region proposal network(RPN) and RPN features can be given as input to our created NoCs. 

## NoCs

### We have provided various trained NoCs as follows:

NoC trained with normal RGB intensity RPN features.

https://drive.google.com/open?id=1EnvSx4B3pNhdOoDO_KubVYfJjfqGqx9p 

NoC trained with blur RPN features. https://drive.google.com/open?id=10t_33MNNWHuevLHlxm7RoXSp6MdeNkwg

NoC trained with multimodal RGB RPN features. https://drive.google.com/open?id=1wjup5i4irYWXGyVtnNq7Igp0DRqKRs3d

NoC trained with multimodal blur RPN features. https://drive.google.com/open?id=1MzgllH1jVKNiJxFx-IwQ8ID-O21Vf-eC

### We have provided lua file for creating different architectures of the networks.

0C3fc means network with no convolutional layer and 3 fully connected layers.

1C3fc means network with 1 convolutional layer and 3 fully connected layers.

1M1 means network with 1 convolutional layer, 1 max pool layer then again 1 convolutional layer and 3 fully connected layer.

## DATA SETS

For training data set was divided into three parts. We have provided different features of these datasets:

Data set of blur RPN features is available in 3 parts.

https://drive.google.com/open?id=1R-pxz3iGWADe9OWlUMl_zcZt9OWscUgg 

https://drive.google.com/open?id=13tESsw2Fxd5XBlEOhaAzlJKPpBnM-Nei 

https://drive.google.com/open?id=1OjGJDAtHn4PrB_QlBdTy00NNal-zyZl5

Data set of multimodal blur RPN features is available in 3 parts. 

https://drive.google.com/open?id=1wgBmIT8N6I4b5sNWeWOI7SmvT3c9A8KV 

https://drive.google.com/open?id=1wgBmIT8N6I4b5sNWeWOI7SmvT3c9A8KV 

https://drive.google.com/open?id=1FABqXLvG__jFe7F-D27drxJiL4eCEpCM

Data set of multimodal RGB RPN features is available in 3 parts. 

https://drive.google.com/open?id=11kUR_5A3H4TVn0iIZoEyPSl4QtCbeNjf 

https://drive.google.com/open?id=1TbEuPb0Iq0poPhtABP7SLpM9FeTZbRpJ 

https://drive.google.com/open?id=1TbEuPb0Iq0poPhtABP7SLpM9FeTZbRpJ
