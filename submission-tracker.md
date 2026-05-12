# DevOps Capstone — Submission Tracker

Tracks answers to all 33 graded tasks across the 6 modules. Status legend: ✅ done · 📸 screenshot needed · ⏳ pending future module.

| Task | Pts | Status | Artifact |
|---:|---:|:--|:--|
| 1  | 2 | ✅ | README URL |
| 2  | 1 | ✅ | user-story.md URL |
| 3  | 1 | ✅ | `planning-userstories-done.jpeg` (taken stage 1) |
| 4  | 1 | ✅ | `planning-productbacklog-done.jpeg` (taken stage 2) |
| 5  | 1 | ✅ | `planning-labels-done.jpeg` (taken stage 2) |
| 6  | 1 | ✅ | `planning-kanban-done.jpeg` (taken stage 3) |
| 7  | 1 | ✅ | setup.cfg URL |
| 8  | 1 | 📸 | `rest-techdebt-done` — story #1 in Done |
| 9  | 1 | 📸 | `read-accounts` — story #2 in Done |
| 10 | 1 | 📸 | `list-accounts` — story #3 in Done |
| 11 | 1 | 📸 | `update-accounts` — story #4 in Done |
| 12 | 1 | 📸 | `delete-accounts` — story #5 in Done |
| 13 | 2 | ✅ | `rest-create-done` (curl output below) |
| 14 | 2 | ✅ | `rest-list-done` (curl output below) |
| 15 | 2 | ✅ | `rest-read-done` (curl output below) |
| 16 | 2 | ✅ | `rest-update-done` (curl output below) |
| 17 | 2 | ✅ | `rest-delete-done` (curl output below) |
| 18 | 1 | ⏳ | Module 3 — Sprint 2 plan screenshot |
| 19 | 2 | ⏳ | Module 3 — `ci-workflow-done` GHA output |
| 20 | 1 | ⏳ | Module 3 — `ci-kanban-done` |
| 21 | 4 | ⏳ | Module 3 — `ci-build.yaml` URL |
| 22 | 1 | ⏳ | Module 4 — `__init__.py` Talisman URL |
| 23 | 1 | ⏳ | Module 4 — `security-headers-done` |
| 24 | 1 | ⏳ | Module 4 — `security-kanban-done` |
| 25 | 1 | ⏳ | Module 5 — `sprint3-plan` |
| 26 | 1 | ⏳ | Module 5 — `kube-app-output` |
| 27 | 1 | ⏳ | Module 5 — `kube-docker-done` |
| 28 | 1 | ⏳ | Module 5 — `kube-kubernetes-done` |
| 29 | 2 | ⏳ | Module 5 — Dockerfile URL |
| 30 | 2 | ⏳ | Module 5 — `kube-images` |
| 31 | 2 | ⏳ | Module 5 — `kube-deploy-accounts` |
| 32 | 5 | ⏳ | Module 6 — `pipelinerun.txt` |
| 33 | 1 | ⏳ | Module 6 — `cd-pipeline-done` |

**Earned so far: 19/55 in completed modules · Remaining: 36 pts**

---

## Module 1 — Agile Planning

### Task 1 (2 pts) — README URL
https://github.com/MLinderEq/devops-capstone-project/blob/main/README.md

> Note: the build-status badge in the README points to `.github/workflows/ci.yml`. It will display "no status" until Module 3 (Task 21) wires up the CI workflow. Re-screenshot a successful build then if the rubric requires a green badge.

### Task 2 (1 pt) — user-story.md URL
https://github.com/MLinderEq/devops-capstone-project/blob/main/user-story.md

### Task 3–6 — Kanban screenshots
Saved separately as `.jpeg` files locally — not in this repo.

### Task 7 (1 pt) — setup.cfg URL
https://github.com/MLinderEq/devops-capstone-project/blob/main/setup.cfg

---

## Module 2 — TDD CRUD Service

### Tasks 8–12 — Screenshots still needed
All five stories are already in the **Done** column on the kanban: https://github.com/users/MLinderEq/projects/1

**Take one screenshot of the Done column** showing all 5 cards, save it five times with these filenames:

| File | Card to highlight |
|---|---|
| `rest-techdebt-done.png` | Setting up the development environment |
| `read-accounts.png` | Read an account from the service |
| `list-accounts.png` | List all accounts in the service |
| `update-accounts.png` | Update an account in the service |
| `delete-accounts.png` | Delete an account from the service |

(Rubric typically accepts the same image renamed; or filter the board view by issue and screenshot each.)

### Task 13 (2 pts) — rest-create-done
```
$ curl -i -X POST http://127.0.0.1:8000/accounts \
    -H "Content-Type: application/json" \
    -d '{"name":"Jane Doe","email":"jane@example.com","address":"1 Test Way","phone_number":"555-1234"}'

HTTP/1.1 201 CREATED
Server: Werkzeug/2.1.2 Python/3.9.6
Date: Tue, 12 May 2026 14:30:59 GMT
Content-Type: application/json
Content-Length: 130
Location: http://127.0.0.1:8000/accounts/1
Connection: close

{"address":"1 Test Way","date_joined":"2026-05-12","email":"jane@example.com","id":1,"name":"Jane Doe","phone_number":"555-1234"}
```

### Task 14 (2 pts) — rest-list-done
```
$ curl -i -X GET http://127.0.0.1:8000/accounts

HTTP/1.1 200 OK
Server: Werkzeug/2.1.2 Python/3.9.6
Date: Tue, 12 May 2026 14:30:59 GMT
Content-Type: application/json
Content-Length: 132
Connection: close

[{"address":"1 Test Way","date_joined":"2026-05-12","email":"jane@example.com","id":1,"name":"Jane Doe","phone_number":"555-1234"}]
```

### Task 15 (2 pts) — rest-read-done
```
$ curl -i -X GET http://127.0.0.1:8000/accounts/1

HTTP/1.1 200 OK
Server: Werkzeug/2.1.2 Python/3.9.6
Date: Tue, 12 May 2026 14:30:59 GMT
Content-Type: application/json
Content-Length: 130
Connection: close

{"address":"1 Test Way","date_joined":"2026-05-12","email":"jane@example.com","id":1,"name":"Jane Doe","phone_number":"555-1234"}
```

### Task 16 (2 pts) — rest-update-done
```
$ curl -i -X PUT http://127.0.0.1:8000/accounts/1 \
    -H "Content-Type: application/json" \
    -d '{"name":"Jane Updated","email":"jane@example.com","address":"99 New Rd","phone_number":"555-9999"}'

HTTP/1.1 200 OK
Server: Werkzeug/2.1.2 Python/3.9.6
Date: Tue, 12 May 2026 14:30:59 GMT
Content-Type: application/json
Content-Length: 133
Connection: close

{"address":"99 New Rd","date_joined":"2026-05-12","email":"jane@example.com","id":1,"name":"Jane Updated","phone_number":"555-9999"}
```

### Task 17 (2 pts) — rest-delete-done
```
$ curl -i -X DELETE http://127.0.0.1:8000/accounts/1

HTTP/1.1 204 NO CONTENT
Server: Werkzeug/2.1.2 Python/3.9.6
Date: Tue, 12 May 2026 14:30:59 GMT
Content-Type: text/html; charset=utf-8
Connection: close
```

---

## Module 3 — CI (pending)
- Task 18: add 2 stories to Sprint Backlog (CI + Security from current Product Backlog); screenshot `sprint2-plan.png`
- Task 19: terminal output of `nosetests` from GitHub Actions run, saved as `ci-workflow-done`
- Task 20: move CI story to Done; screenshot `ci-kanban-done.png`
- Task 21: public URL of `.github/workflows/ci-build.yaml` (or `ci.yml`)

## Module 4 — Security (pending)
- Task 22: public URL of `service/__init__.py` with Talisman init
- Task 23: nosetests output proving headers + CORS pass, saved as `security-headers-done`
- Task 24: move Security story to Done; screenshot `security-kanban-done.png`

## Module 5 — Container & Kubernetes (pending)
- Task 25: add 3 stories to Sprint 3 (Docker + K8s + CD); screenshot `sprint3-plan.png`
- Task 26: JSON from the deployed app on port 8080, saved as `kube-app-output`
- Task 27: move Docker story to Done; screenshot `kube-docker-done.png`
- Task 28: move K8s deploy story to Done; screenshot `kube-kubernetes-done.png`
- Task 29: public URL of `Dockerfile`
- Task 30: `docker images` output, saved as `kube-images`
- Task 31: `kubectl get all` output, saved as `kube-deploy-accounts`

## Module 6 — CD pipeline (pending)
- Task 32: full Tekton `pipelinerun` log, saved as `pipelinerun.txt`
- Task 33: move CD story to Done; screenshot `cd-pipeline-done.png`

---

## Quick reference — Public URLs (final)

| File | URL |
|---|---|
| README.md | https://github.com/MLinderEq/devops-capstone-project/blob/main/README.md |
| user-story.md | https://github.com/MLinderEq/devops-capstone-project/blob/main/user-story.md |
| setup.cfg | https://github.com/MLinderEq/devops-capstone-project/blob/main/setup.cfg |
| Kanban board | https://github.com/users/MLinderEq/projects/1 |
| Sprint 1 PR | https://github.com/MLinderEq/devops-capstone-project/pull/11 |
| ci-build.yaml | _pending (Module 3)_ |
| __init__.py (Talisman) | _pending (Module 4)_ |
| Dockerfile | _pending (Module 5)_ |
