# Use the specified base image
FROM pytorch/pytorch:2.5.0-cuda12.1-cudnn9-runtime

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.5.0+cu121.html
RUN pip install torch_geometric
