## Getting to know MinIO

1. Install MinIO server. You can install it directly or pull and run a minio Docker image.

    A) Pull and run a Docker image. You need Docker installed (you will also need it for the second part of the lab):

    ```bash
    docker run -p 9000:9000 -p 9001:9001 quay.io/minio/minio server /data --console-address ":9001"
    ```

    You should see something like this:

    ```bash
    WARNING: Detected default credentials 'minioadmin:minioadmin', we recommend that you change these values with 'MINIO_ROOT_USER' and 'MINIO_ROOT_PASSWORD' environment variables
    MinIO Object Storage Server
    Copyright: 2015-2022 MinIO, Inc.
    License: GNU AGPLv3 <https://www.gnu.org/licenses/agpl-3.0.html>
    Version: RELEASE.2022-12-07T00-56-37Z (go1.19.3 linux/amd64)

    Status:         1 Online, 0 Offline. 
    API: http://172.17.0.2:9000  http://127.0.0.1:9000 
    Console: http://172.17.0.2:9001 http://127.0.0.1:9001 

    Documentation: https://min.io/docs/minio/linux/index.html
    ```

    B) If you have issues with Docker, you can install MinIO directly as described in the user guide, depending on your OS: https://min.io/download#. After the installation, you should see this kind of output:

    ```bash
    Copyright: 2015-2022 MinIO, Inc.
    License: GNU AGPLv3 <https://www.gnu.org/licenses/agpl-3.0.html>
    Version: RELEASE.2022-12-02T19-19-22Z (go1.19.3 linux/amd64)

    Status:         1 Online, 0 Offline. 
    API: http://192.168.1.33:9000  http://172.17.0.1:9000  http://127.0.0.1:9000         
    RootUser: admin 
    RootPass: password 
    Console: http://192.168.1.33:9001 http://172.17.0.1:9001 http://127.0.0.1:9001     
    RootUser: admin 
    RootPass: password 

    Command-line: https://min.io/docs/minio/linux/reference/minio-mc.html#quickstart
    $ mc alias set myminio http://192.168.1.33:9000 admin password
    ```

2. Opent one of the links above, provided by MinIO: `http://127.0.0.1:9000`. It will get you to the UI.

3. Type in the user name and password.
   A) If you are running Docker image, check for default credentials in the text ('minioadmin', 'minioadmin').
   B) If you installed it, then you will see the username and password in your terminal.

4. Create a bucket and upload some files.

5. Explore different functionalities of MinIO:
    - Click on one object and see how you can:
        - share the object link and define the expiration of the link
        - define policies and attach them to the users or groups
        - object lifacycle
        - ...

## Run data platformbuilt on MinIO

6. Now, you set up an object storage in the local drive. Run a data platform on it by cloning the [repo](https://github.com/njanakiev/trino-minio-docker) and running the services with `docker-compose`.

7. Open `docker-compose.yml` file and check out all the services. Answer the same questions as in previous lab.










