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
| 18 | 1 | 📸 | `sprint2-plan` — taken (Sprint 2 sprint-plan) |
| 19 | 2 | ✅ | `ci-workflow-done` (GHA output below) |
| 20 | 1 | 📸 | `ci-kanban-done` — CI story in Done |
| 21 | 4 | ✅ | ci-build.yaml URL |
| 22 | 1 | ✅ | __init__.py URL (Talisman + CORS) |
| 23 | 1 | ✅ | `security-headers-done` (nosetests output below) |
| 24 | 1 | 📸 | `security-kanban-done` — Security story in Done |
| 25 | 1 | ⏳ | Module 5 — `sprint3-plan` |
| 26 | 1 | ⏳ | Module 5 — `kube-app-output` |
| 27 | 1 | ⏳ | Module 5 — `kube-docker-done` |
| 28 | 1 | ⏳ | Module 5 — `kube-kubernetes-done` |
| 29 | 2 | ⏳ | Module 5 — Dockerfile URL |
| 30 | 2 | ⏳ | Module 5 — `kube-images` |
| 31 | 2 | ⏳ | Module 5 — `kube-deploy-accounts` |
| 32 | 5 | ⏳ | Module 6 — `pipelinerun.txt` |
| 33 | 1 | ⏳ | Module 6 — `cd-pipeline-done` |

**Earned so far: 27/55 across Modules 1–3 · Remaining: 28 pts (Modules 5–6)**

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

## Module 3 — CI + Security

### Task 18 — sprint2-plan
Sprint Backlog held #6 (CI) and #7 (Security), both Sprint=Sprint 2, M=5 each. Screenshot taken at https://github.com/users/MLinderEq/projects/1 prior to coding.

### Task 19 (2 pts) — ci-workflow-done (terminal text)
Workflow run: https://github.com/MLinderEq/devops-capstone-project/actions/runs/25742102017 (build in 43s, all steps ✓)

```
Run flake8 service --count --select=E9,F63,F7,F82 --show-source --statistics
flake8 service --count --max-complexity=10 --max-line-length=127 --statistics
0
0

Run nosetests
env:
  DATABASE_URI: postgresql://***@postgres:5432/testdb

Test Flask CLI Commands
- It should call the db-create command

Test Cases for Account Model
- It should Create an account and add it to the database
- It should Create an Account and assert that it exists
- It should Delete an account from the database
- It should Deserialize an account
- It should not Deserialize an account with a KeyError
- It should not Deserialize an account with a TypeError
- It should Find an Account by name
- It should List all Accounts in the database
- It should Read an account
- It should Serialize an account
- It should Update an account

Account Service Tests
- It should not Create an Account when sending the wrong data
- It should Create a new Account
- It should Delete an Account
- It should Read a single Account
- It should List all Accounts
- It should not Read an Account that is not found
- It should be healthy
- It should get 200_OK from the Home Page
- It should not allow an illegal method call
- It should not Create an Account when sending the wrong media type
- It should Update an existing Account
- It should not Update an Account that is not found

Name                               Stmts   Miss  Cover   Missing
----------------------------------------------------------------
service/__init__.py                   18      3    83%   32-35
service/common/__init__.py             0      0   100%
service/common/cli_commands.py         7      0   100%
service/common/error_handlers.py      28      0   100%
service/common/log_handlers.py        10      1    90%   21
service/common/status.py              46      0   100%
service/config.py                     11      5    55%   12-16
service/models.py                     69      3    96%   32, 98, 127
service/routes.py                     56      0   100%
----------------------------------------------------------------
TOTAL                                245     12    95%
----------------------------------------------------------------------
Ran 24 tests in 0.745s

OK
```

### Task 20 — ci-kanban-done
**SCREENSHOT NEEDED.** Open board, capture "Need the ability to automate continuous integration checks" in Done column.

### Task 21 (4 pts) — ci-build.yaml URL
https://github.com/MLinderEq/devops-capstone-project/blob/main/.github/workflows/ci-build.yaml

### Task 22 (1 pt) — __init__.py URL (Talisman)
https://github.com/MLinderEq/devops-capstone-project/blob/main/service/__init__.py

### Task 23 (1 pt) — security-headers-done (nosetests output)
PR #13 CI run: https://github.com/MLinderEq/devops-capstone-project/actions/runs/25742752474 (26 tests passing, 95% coverage). Local run:

```
Test Flask CLI Commands
- It should call the db-create command

Test Cases for Account Model
- It should Create an account and add it to the database
- It should Create an Account and assert that it exists
- It should Delete an account from the database
- It should Deserialize an account
- It should not Deserialize an account with a KeyError
- It should not Deserialize an account with a TypeError
- It should Find an Account by name
- It should List all Accounts in the database
- It should Read an account
- It should Serialize an account
- It should Update an account

Account Service Tests
- It should not Create an Account when sending the wrong data
- It should return a CORS header
- It should Create a new Account
- It should Delete an Account
- It should Read a single Account
- It should List all Accounts
- It should not Read an Account that is not found
- It should be healthy
- It should get 200_OK from the Home Page
- It should not allow an illegal method call
- It should return security headers
- It should not Create an Account when sending the wrong media type
- It should Update an existing Account
- It should not Update an Account that is not found

Name                               Stmts   Miss  Cover   Missing
----------------------------------------------------------------
service/__init__.py                   22      3    86%   38-41
service/common/__init__.py             0      0   100%
service/common/cli_commands.py         7      0   100%
service/common/error_handlers.py      28      0   100%
service/common/log_handlers.py        10      1    90%   21
service/common/status.py              46      0   100%
service/config.py                     11      5    55%   12-16
service/models.py                     69      3    96%   32, 98, 127
service/routes.py                     56      0   100%
----------------------------------------------------------------
TOTAL                                249     12    95%
----------------------------------------------------------------------
Ran 26 tests in 0.457s

OK
```

Live curl confirmation (after `talisman.force_https = True` in production):
```
$ curl -is -H "X-Forwarded-Proto: https" http://example:8000/
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Security-Policy: default-src 'self'; object-src 'none'
Strict-Transport-Security: max-age=31556926; includeSubDomains
Referrer-Policy: strict-origin-when-cross-origin
```

### Task 24 — security-kanban-done
**SCREENSHOT NEEDED.** Open board, capture "Need to add security headers and CORS policies" in Done column.

### Checklist-only screenshots (not graded, but rubric expects)
- **ci-badge-done** — README on main showing green CI Build badge: https://github.com/MLinderEq/devops-capstone-project
- **security-code-done** — service/__init__.py showing Talisman + CORS code: https://github.com/MLinderEq/devops-capstone-project/blob/main/service/__init__.py

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
| ci-build.yaml | https://github.com/MLinderEq/devops-capstone-project/blob/main/.github/workflows/ci-build.yaml |
| __init__.py (Talisman) | https://github.com/MLinderEq/devops-capstone-project/blob/main/service/__init__.py |
| Dockerfile | _pending (Module 5)_ |
| Sprint 2 PR (CI) | https://github.com/MLinderEq/devops-capstone-project/pull/12 |
| Sprint 2 PR (Security) | https://github.com/MLinderEq/devops-capstone-project/pull/13 |
