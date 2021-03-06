require 'torch'
--require 'cutorch'
--require('cunn')
--require('cudnn')
require ('nn')
require('md5')
require('image')
require 'optim'
require 'loadcaffe'
net1 = loadcaffe.load('deploy.prototxt', 'vgg16.caffemodel')
--print(net1)
w4=nn.Linear(25088,4096)
w6=nn.Linear(4096,4096)
w33=net1:get(33)
w36=net1:get(36)
w4:clone(w33,'weight','bias','gradWeight','gradBias')
w6:clone(w36,'weight','bias','gradWeight','gradBias')
net = nn.Sequential()
net:add(nn.ReLU()) 
net:add(nn.SpatialConvolution(512, 512, 3, 3, 1, 1,1,1))
net:add(nn.ReLU())  
net:add(nn.SpatialMaxPooling(3, 3, 1, 1, 1, 1))
net:add(nn.SpatialConvolution(512, 512, 3, 3, 1, 1,1,1)) -- 3 input image channels, 6 output channels, 5x5 convolution kernel
net:add(nn.ReLU())  
net:add(nn.View(512*7*7))
net:add(w4)
net:add(nn.ReLU())   
net:add(w6)
net:add(nn.ReLU())  
net:add(nn.Linear(4096,16))
--net:add(nn.LogSoftMax())  
net:float()
torch.save('prenet3.net',net)
