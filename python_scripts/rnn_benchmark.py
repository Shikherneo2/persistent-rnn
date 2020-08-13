import time
import torch
import numpy as np

torch.backends.cudnn.enabled = False

rnn_size = 640
batch_size = 40
time_steps = 30
iterations = 10
gg = 2*rnn_size*rnn_size*batch_size*time_steps

inputs = torch.rand( batch_size, time_steps, rnn_size )

print( inputs.size() )

rnn = torch.nn.RNN( input_size=rnn_size, nonlinearity="relu", hidden_size=rnn_size, num_layers=1, bias=True, bidirectional=False )

start = time.time()

for i in range( iterations ):
    b = rnn( inputs )

end = time.time()

print( 1e6*(end-start)/20  )

totalFlops = iterations * gg
teraflops = totalFlops / ((end-start) * 1.0e12)
print(teraflops)