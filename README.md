# Desafío #7: Laboratorio de AWS Academy con Terraform

Este repositorio contiene la infraestructura como código (IaC) para recrear el Laboratorio 2 del Módulo 5 de AWS Academy utilizando Terraform.

## Objetivo
El objetivo es desplegar una VPC, una subred, un grupo de seguridad y una instancia EC2 con un servidor web simple, utilizando Terraform para automatizar todo el proceso.

## Requisitos
* Tener una cuenta de AWS Academy activa y el laboratorio del Módulo 5, Laboratorio 2 iniciado para obtener las credenciales temporales.
* Tener Terraform instalado en tu entorno local.
* Reemplazar las variables de Access Key, Secret Key y Session Token en el archivo `provider.tf` con las credenciales del laboratorio.

## Pasos para la ejecución
1.  **Clonar el repositorio:**
    ```bash
    git clone [https://github.com/sindresorhus/del](https://github.com/sindresorhus/del)
    cd [nombre del repositorio]
    ```
2.  **Inicializar Terraform:** Este comando descarga los plugins necesarios para AWS.
    ```bash
    terraform init
    ```
3.  **Planificar la infraestructura:** Este comando muestra un plan de los recursos que se van a crear sin aplicarlos.
    ```bash
    terraform plan
    ```
4.  **Aplicar la infraestructura:** Este comando crea los recursos en tu cuenta de AWS. Escribe `yes` para confirmar.
    ```bash
    terraform apply
    ```
5.  **Verificar la IP pública:** Al finalizar `terraform apply`, la IP pública de la instancia EC2 se mostrará en la terminal. Usa esa IP en tu navegador para ver la página web.
6.  **Destruir la infraestructura:** Cuando termines, puedes eliminar todos los recursos creados con el siguiente comando.
    ```bash
    terraform destroy
    ```

## Capturas de pantalla
* **Captura del sitio web en funcionamiento:** [Agregar la imagen aquí, por ejemplo: `assets/sitio-web.png`]
* **Captura del registro de progreso exitoso en AWS Academy:** [Agregar la imagen aquí, por ejemplo: `assets/aws-academy-progreso.png`]