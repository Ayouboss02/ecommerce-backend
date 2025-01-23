# Backedn - ecommerce-project-microservices

## Description
Ce dépôt contient le backend de la plateforme d'achat mobile, construit avec une architecture de microservices. Chaque service utilise **.NET** comme framework principal, est dockerisé, et communique via un **Event Bus** (Kafka). L'API Gateway est implémentée avec **YARP** pour le routage et l'équilibrage de charge.

### Microservices inclus :
- **Identity Microservice** : Gestion des utilisateurs (inscription, connexion, etc.).
- **Catalog Microservice** : Gestion des produits et catalogues.
- **Ordering Microservice** : Traitement des commandes.
- **Basket Microservice** : Gestion du panier (utilise Redis comme cache).
- **API Gateway** : Implémentée avec **YARP**, elle centralise les points d'accès et gère les routes vers les microservices.

---

## Prérequis
- **Docker** et **Docker Compose**
- Kafka (Event Bus)
- Redis (pour le panier)
- SQL Server (base de données)
- .NET SDK (si vous travaillez hors Docker)

---

## Installation

1. **Clonez le dépôt :**
   ```bash
   git clone https://github.com/votre-utilisateur/backend-repo.git
   cd backend-repo
2. **Construire et démarrer les conteneurs Docker :**
   ```bash
   docker-compose up --build
3. **Vérifiez les services :**
- **API Gateway :** http://localhost:5000
- **Kafka :** http://localhost:9092
---
## Technologies
- **.NET** : Framework principal des microservices.
- **YARP** (Yet Another Reverse Proxy) : API Gateway pour le routage et l'équilibrage de charge.
- **Docker :** Conteneurisation des services.
- **Kafka :** Event Bus pour la communication asynchrone.
- **Redis :** Cache pour le microservice panier.
- **SQL Server :** Base de données relationnelle pour les microservices.


   
