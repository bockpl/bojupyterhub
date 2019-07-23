# bojupyterhub
Kontener JupyterHub z warstwą autoryzacyjną i obliczeniową BO.

Przykład uruchomienia:
docker run -dt --rm --name bocompute-devel -h $(hostname -f) --shm-size=1g --device /dev/fuse -v /opt/software/Ansys/19.2:/srv -v /etc/aliases:/etc/aliases -v /etc/msmtprc:/etc/msmtprc --privileged -p 6445:6445 -p 8000:8000 --net cluster_network --ip $(echo 10.0.0.$(hostname -i | cut -d "." -f4)) bockpl/bojupyterhub