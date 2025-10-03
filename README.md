# Openshift-production-platform


<!-- Badges -->
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Terraform](https://img.shields.io/badge/openshift-v1.5-red)
![Maintained](https://img.shields.io/badge/maintained-yes-green)

<!-- Project Description -->
## 📖 Overview
This repository provides a production-ready OpenShift platform design using GitOps with ArgoCD, Tekton CI/CD pipelines, and comprehensive monitoring with Prometheus, Grafana, and Alertmanager.
It is designed to showcase 99.95% uptime architecture principles, automation-first deployment, and cloud-native observability.

**Problem:** Many OpenShift/Kubernetes environments lack a consistent, automated GitOps-driven workflow and reliable monitoring setup

**Solution:** This project provides a modular reference implementation with reusable manifests, pipelines, and monitoring configurations — deployable on OpenShift CRC (local dev) - Can be used in production environments also.

## ✨ Features

- ✅ GitOps with ArgoCD → Manage apps declaratively and sync changes automatically
- ✅ Tekton Pipelines → CI/CD automation (build, test, deploy workflows).
- ✅ Observability Stack → Prometheus metrics, Grafana dashboards, Alertmanager alerts.
- ✅ Sample Applications → Demo microservices for testing GitOps + pipelines.
- ✅ Security & RBAC → Least privilege RBAC for developers vs operators.
- ✅ 99.95% Uptime Design → Documentation on HA setup and scaling principles.
  
## 🏗️ Architecture

![Architecture Diagram](./docs/architecture.png)

[Brief explanation of the architecture]

## 🚀 Quick Start

### Prerequisites
- OpenShift CRC or OpenShift Sandbox (Script and instructions to install provided in the documentation.)
- oc CLI (v4.x) (Instructions to install provided in the documentation)
- GitHub / Gitlab  account (for repo + Actions)

### Installation
```bash
# Clone the repository
git clone https://github.com/blessing-bester/Openshift-production-platform.git
cd Openshift-production-platfrom

# Deploy ArgoCD:
oc apply -f manifests/argocd/

# Deploy Tekton Pipelines:
oc apply -f manifests/tekton/

# Deploy Monitoring:
oc apply -f manifests/monitoring/

# Deploy your applications:
oc apply -f manifests/sample-apps/

### Installation
This repo includes a GitHub Action (.github/workflows/ci.yml) that:
 1. Validates all YAML manifests
 2. Builds and pushes the sample app container image to GHCR
 3. Runs lint/security scans on Kubernetes configs

![CI](https://github.com/yourusername/openshift-production-platform/actions/workflows/ci.yml/badge.svg)

### 🤝 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you’d like to change.

### 📜 License
MIT License – free to use and modify.
