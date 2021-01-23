For simplicity's sake I only drew one pod per app on a single node - in reality there could be numerous.

How internet traffic is handled is also a bit unclear in the image. From what I understood a cluster has an apiserver which handles requests and in turn communicates with pods' own proxies which redirect to containers.
