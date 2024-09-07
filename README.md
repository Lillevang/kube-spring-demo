# Kube-Spring-Demo

## Overview

This repo is a step-by-step guide to creating a production-ready Kubeernetes setup using a Spring Boot application. This demo showcases the complete journey from local development to cloud deployment using Buildpacks, Knative, ArgoCD, and Istio.

## Project Structure

The project is divided into multiple branches, each representing a stage in the setup:

- **main**: The final, complete setup.
- **spring-boot-app**: Basic Spring Boot projkect with live reload.
- **buildpacks**: Containerization of the Spring Boot app using buildpacks
- **knative-deployment**: Deploying the Spring Boot app as a Knative service.
- **argo-cd**: GitOps using ArgoCD.
- **istio-integration**: Adding the service to Istio mesh.
- **external-db**: connecting to an external database.

## Getting Started

Clone the repo and check ou the branch you want to explore:

```bash
git clone <repo-url>
cd <repo-directory>
git checkout <branch-name>
```

## Technologies Used

- Spring Boot
- Buildpacks
- ArgoCD
- Istio
- Kubernetes

## Roadmap

- [ ] Initial Spring Boot Setup
- [ ] Containerization with Buildpacks
- [ ] Knative deployment
- [ ] GitOps using ArgoCD
- [ ] Istio Integration
- [ ] External DB connectivity

## License

[MIT License](LICENSE).
