# Sistema Flask con Load Balancer

Sistema simple con 2 servidores Flask y balanceador de carga NGINX.

## 🚀 Ejecución rápida

```bash
docker-compose up --build
```

## 🔗 URLs

- **Load Balancer**: http://localhost:8080

## 📋 Estructura

```
mapa/
├── docker-compose.yml
├── nginx.conf
├── servidor1/
│   ├── Dockerfile
│   ├── app.py
│   ├── requirements.txt
│   └── templates/
└── servidor2/
    ├── Dockerfile
    ├── app.py
    ├── requirements.txt
    └── templates/
```

## ⚙️ Componentes

- **NGINX**: Load balancer en puerto 8080
- **Servidor1**: Flask mapa blanco y negro (puerto 5001)
- **Servidor2**: Flask mapa a color (puerto 5002)
- **Base de datos**: MySQL en contenedor "contenedorEC"
- **phpMyAdmin**: Gestión BD (puerto 8081)


## 📊 API

**Ambos servidores utilizaron Mapbox**
- Para el mapa visualizado y para ubicar el lugar en dicho mapa. 
