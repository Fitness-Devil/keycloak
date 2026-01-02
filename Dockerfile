# Keycloak with Fitness Devil Custom Theme
FROM quay.io/keycloak/keycloak:26.0

# Copy custom theme from repository into image
COPY keycloak-theme/login /opt/keycloak/themes/fitness-devil/login/

# Set permissions
USER root
RUN chown -R keycloak:keycloak /opt/keycloak/themes/fitness-devil
USER keycloak

# Build Keycloak (optimized for production)
RUN /opt/keycloak/bin/kc.sh build

# Set default command
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
