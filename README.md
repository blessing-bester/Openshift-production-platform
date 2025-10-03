# OpenShift Production Platform

<!-- Badges -->
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![OpenShift](https://img.shields.io/badge/openshift-4.x-red)
![GitOps](https://img.shields.io/badge/gitops-argocd-blue)
![CI/CD](https://img.shields.io/badge/tekton-pipelines-orange)
![Maintained](https://img.shields.io/badge/maintained-yes-green)
![CI](https://github.com/yourusername/openshift-production-platform/actions/workflows/ci.yml/badge.svg)

---

## 📖 Overview
This repository provides a **production-ready OpenShift platform** design using **GitOps with ArgoCD**, **Tekton CI/CD pipelines**, and **comprehensive monitoring** with Prometheus, Grafana, and Alertmanager.  

It is designed to showcase **99.95% uptime architecture** principles, automation-first deployment, and cloud-native observability.  

**Problem:** Many OpenShift/Kubernetes environments lack a consistent, automated GitOps-driven workflow and reliable monitoring setup.  

**Solution:** This project provides a **modular reference implementation** with reusable manifests, pipelines, and monitoring configurations — deployable on **OpenShift CRC (local dev)** or **Red Hat OpenShift Sandbox (cloud)**.  

---

## ✨ Features
- ✅ **GitOps with ArgoCD** → Manage apps declaratively and sync changes automatically.  
- ✅ **Tekton Pipelines** → CI/CD automation (build, test, deploy workflows).  
- ✅ **Observability Stack** → Prometheus metrics, Grafana dashboards, Alertmanager alerts.  
- ✅ **Sample Applications** → Demo microservices for testing GitOps + pipelines.  
- ✅ **Security & RBAC** → Least privilege RBAC for developers vs operators.  
- ✅ **99.95% Uptime Design** → Documentation on HA setup and scaling principles.  

---

## 🏗️ Architecture

![Architecture Diagram](./docs/architecture.png)

**Flow:**  
1. Developer pushes code → GitHub  
2. Tekton builds & tests → pushes image to OpenShift registry  
3. ArgoCD syncs manifests from GitHub → deploys to OpenShift  
4. Monitoring stack observes system health → alerts on downtime  

---

## 🚀 Quick Start

### 🔹 Prerequisites
- [OpenShift CRC](https://developers.redhat.com/products/codeready-containers/overview) **or** [OpenShift Sandbox](https://developers.redhat.com/developer-sandbox)  
- `oc` CLI (v4.x)  (Instructions to install are in the documentation)
- `kubectl` (optional)  
- GitHub / Gitlab account (for repo + Actions)  

### 🔹 Installation

Clone this repo:
```bash
git clone https://github.com/blessing-bester/Openshift-production-platform.git
cd Openshift-production-platform

