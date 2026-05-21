# Sistema Legacy de Facturación - CI/CD

## Descripción de la Arquitectura
Este proyecto implementa un pipeline completo de Integración y Despliegue Continuo (CI/CD) alojado en AWS:
* **CI (Integración Continua):** Implementado con GitHub Actions. En cada "push", un entorno virtual descarga el código y ejecuta las pruebas de Node.js para asegurar que la aplicación esté libre de errores.
* **CD (Despliegue Continuo):** Infraestructura como Código (IaC) automatizada con Terraform. Utiliza módulos para la red (Security Groups) y cómputo (Instancia EC2 con Amazon Linux 2023). GitHub Actions se conecta a AWS, despliega la infraestructura, instala dependencias (Node, Git, PM2) y arranca el servidor en segundo plano automáticamente.

## Enlace de Producción (Validación en Vivo)
La aplicación se encuentra desplegada y respondiendo en la siguiente URL:
👉 **http://54.84.231.197:3000**
