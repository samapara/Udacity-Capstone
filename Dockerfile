#Use python 3.7.3 docker image
FROM python:3.7.3-stretch

#Set working directory
WORKDIR /app

#Copy the files
COPY . routes.py /app/

#Run Install Deps command
#To produce lint error do not add --no-cache-dir
RUN pip --no-cache-dir install -r requirements.txt

#Expose the port
EXPOSE 80

#Run Command
CMD ["python", "routes.py"]
