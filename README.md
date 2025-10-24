# Pretix

This is STAIR's Docker Compose setup for Pretix, an open-source ticketing solution.

## Environment Variables

This setup uses environment variables for sensitive information. Please create a `.env` file based on the provided `.env.template` and fill in the required values.
Rename `.env.template` to `.env` and set the following variables:

-   `PRETIX_EMAIL_HOST`: Your email server host (e.g., mail.cyon.ch)
-   `PRETIX_EMAIL`: The email address used for sending emails (e.g., noreply@stair.ch)
-   `PRETIX_EMAIL_PASSWORD`: The password for the email account
-   `POSTGRES_USER`: The PostgreSQL user (any)
-   `POSTGRES_PASSWORD`: The PostgreSQL password (any)

Make sure to keep this file secure and do not commit it to version control.

## Docker Compose

To start the Pretix services, run the following command in the directory containing the `docker-compose.yaml` file:

```bash
docker compose up -d
```

## Customization

This setup includes a custom Dockerfile that installs additional Pretix plugins. You can modify the Dockerfile to include any other plugins you may need.
After modifying the Dockerfile, rebuild the Pretix image with:

```bash
docker compose build pretix
```

or

```bash
docker compose up -d --build pretix
```
