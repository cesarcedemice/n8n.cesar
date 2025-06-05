FROM n8nio/n8n:latest

# Copia tus nodos personalizados
COPY ./packages /data/packages

# Si tienes otros archivos o configuraciones, añádelos aquí
# (por ejemplo, si tu paquete requiere assets extra)

# Da permisos a los archivos
RUN chown -R node:node /data && chmod -R 775 /data

# Cambia el user a node para evitar errores de permisos
USER node

# Expón el puerto
EXPOSE 5678

# Comando default
CMD ["n8n"]
