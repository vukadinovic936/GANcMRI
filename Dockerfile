FROM tensorflow/tensorflow:1.14.0-gpu-py3
RUN pip install jupyter

WORKDIR /data
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]