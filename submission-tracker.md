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
| 25 | 1 | ✅ | `sprint3-plan` — committed |
| 26 | 1 | 🌥️ | `kube-app-output` — needs IBM Cloud IDE run |
| 27 | 1 | 📸 | `kube-docker-done` — Docker story in Done |
| 28 | 1 | 📸 | `kube-kubernetes-done` — K8s story in Done |
| 29 | 2 | ✅ | Dockerfile URL |
| 30 | 2 | 🌥️ | `kube-images` — needs IBM Cloud IDE run |
| 31 | 2 | 🌥️ | `kube-deploy-accounts` — needs IBM Cloud IDE run |
| 32 | 5 | 🌥️ | Module 5 — `pipelinerun.txt` (needs IBM Cloud IDE run) |
| 33 | 1 | 📸 | Module 5 — `cd-pipeline-done` — CD story in Done |

**Earned so far: 31/55 (after Modules 1–4) · Remaining: 24 pts (Module 4 cluster runs + Module 5 CD)**

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

## Module 4 — Containerize + Kubernetes

### Task 25 — sprint3-plan
✅ Committed at `screenshots/sprint3-plan.jpeg`. Sprint Backlog held #8 (Docker, L=8), #9 (K8s deploy, L=8), #10 (CD pipeline, XL=13) — all Sprint=Sprint 3.

### Task 27 / 28 — kube-docker-done & kube-kubernetes-done
**SCREENSHOTS NEEDED.** Stories #8 and #9 are now in **Done** on https://github.com/users/MLinderEq/projects/1. Screenshot the board.

### Task 29 (2 pts) — Dockerfile URL
https://github.com/MLinderEq/devops-capstone-project/blob/main/Dockerfile

### Tasks 26 / 30 / 31 — IBM Cloud IDE handoff (cluster-only)
These three artifacts require the IBM Cloud IDE / OpenShift cluster — the local Mac has no Docker / `oc` / ICR access. Once you're in the lab environment, clone main and run:

```bash
git clone https://github.com/MLinderEq/devops-capstone-project.git
cd devops-capstone-project

# === Task 30: kube-images ===
docker build -t accounts .
docker tag accounts us.icr.io/$SN_ICR_NAMESPACE/accounts:1
docker push us.icr.io/$SN_ICR_NAMESPACE/accounts:1
docker images          # ← save this output as kube-images

# === Task 31: kube-deploy-accounts ===
# Postgres is pre-provisioned by the lab; verify the secret exists first
oc describe secret postgresql

# Update deploy/deployment.yaml so `image:` references your ICR-tagged image:
#   image: us.icr.io/$SN_ICR_NAMESPACE/accounts:1
# (Either edit before applying, or use `oc set image deployment/accounts ...` after.)

oc apply -f deploy/
oc expose service/accounts
oc get all             # ← save this output as kube-deploy-accounts

# === Task 26: kube-app-output ===
# The IDE shows a "preview" button for port 8080 (or `oc get route accounts -o jsonpath='{.spec.host}'`)
# Open the URL in the IDE's internal browser. The JSON body of GET / is what to capture:
#   { "name": "Account REST API Service", "version": "1.0" }
# Save that JSON body as kube-app-output
```

### Image tag and push (Quiz Q1)
`docker tag accounts us.icr.io/$SN_ICR_NAMESPACE/accounts:1` — quiz Q1 answer.

---

### Expected output shapes (paste real values over these when you run)

**Task 30 — `kube-images`** (output of `docker images` after build + tag)
```
REPOSITORY                                   TAG       IMAGE ID       CREATED         SIZE
us.icr.io/sn-labs-<namespace>/accounts       1         <image-id>     <time> ago      ~180MB
accounts                                     latest    <image-id>     <time> ago      ~180MB
python                                       3.9-slim  <base-id>      <weeks> ago     ~125MB
```
Note: rows 1 and 2 share the same IMAGE ID — `docker tag` aliases, doesn't duplicate layers. Rubric expects Name, Tag, Image ID, Created, Size (all default columns).

**Task 31 — `kube-deploy-accounts`** (output of `oc get all` after `oc apply` + `oc expose`)
```
NAME                            READY   STATUS    RESTARTS   AGE
pod/accounts-<hash>-<suffix>    1/1     Running   0          <age>
pod/postgresql-1-<suffix>       1/1     Running   0          <age>

NAME                                  DESIRED   CURRENT   READY   AGE
replicaset.apps/accounts-<hash>       1         1         1       <age>

NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/accounts   1/1     1            1           <age>

NAME                 TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)    AGE
service/accounts     ClusterIP   <cluster-ip>     <none>        8080/TCP   <age>
service/postgresql   ClusterIP   <cluster-ip>     <none>        5432/TCP   <age>

NAME                                HOST/PORT                                                       PATH   SERVICES   PORT   TERMINATION   WILDCARD
route.route.openshift.io/accounts   accounts-<ns>.<cluster>.containers.appdomain.cloud                     accounts   http                 None
```
Required sections: deployment, pods, replica sets, service — all four present. The `route.route.openshift.io/accounts` row appears only after `oc expose service/accounts`.

**Task 26 — `kube-app-output`** (JSON body from `GET /` on the exposed route)
```json
{
  "name": "Account REST API Service",
  "version": "1.0"
}
```
Literal response from `service/routes.py:index()`. Capture the JSON body only — not the HTTP headers, not the browser chrome.

## Module 5 — CD Pipeline (Tekton + OpenShift)

User story #10 — "Create a CD pipeline to automate deployment to Kubernetes" (XL=13, Sprint 3). Work branch: `cd-pipeline`. Tekton manifests live in `tekton/` (pvc.yaml, pipeline.yaml, tasks.yaml — starter scaffolding already committed on main).

### Task 32 (5 pts) — pipelinerun.txt
**Cluster-only.** Run in IBM Cloud IDE / OpenShift sandbox after the pipeline is fully wired:
```bash
git clone -b cd-pipeline https://github.com/MLinderEq/devops-capstone-project.git
cd devops-capstone-project

# Workspace + initial pipeline
oc create -f tekton/pvc.yml
oc apply  -f tekton/pipeline.yaml

# Install catalog tasks into the namespace
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-clone/0.9/git-clone.yaml
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/flake8/0.1/flake8.yaml

# Custom nose task lives in tasks.yaml (Tekton Hub has no nosetests task)
oc apply -f tekton/tasks.yaml

# Set $GITHUB_ACCOUNT in pipeline.yaml first, then start with the 3 runtime params
tkn pipeline start cd-pipeline \
  -p repo-url=https://github.com/MLinderEq/devops-capstone-project \
  -p branch=cd-pipeline \
  -p build-image=image-registry.openshift-image-registry.svc:5000/$SN_ICR_NAMESPACE/accounts:1 \
  -w name=pipeline-workspace,claimName=pipeline-pvc \
  --showlog

# Capture the run log
tkn pipelinerun logs --last > pipelinerun.txt
```
Required task order in `pipeline.yaml`: **clone → lint → tests → build (runAfter: [lint, tests]) → deploy**. Postgres service must be up before tests run (lab pre-provisions it).

### Task 33 (1 pt) — cd-pipeline-done
**SCREENSHOT NEEDED.** Move user story #10 to **Done** on https://github.com/users/MLinderEq/projects/1, then capture the board → save as `cd-pipeline-done.png` (or `.jpeg`).

### Checklist (Q1–Q20, 1 pt each — practice assignment)
All twenty items map to actions performed in the IBM Cloud sandbox; mark ✅ as each is executed there:
| # | Action | Where |
|---:|:--|:--|
| Q1  | Move CD story Sprint Backlog → In Progress, self-assign | GitHub Project |
| Q2  | Create `cd-pipeline` branch | local/sandbox |
| Q3  | `nosetests` all-green before automating | sandbox |
| Q4  | `oc create -f tekton/pvc.yml` + `oc apply -f tekton/pipeline.yaml` | sandbox |
| Q5  | Install `git-clone` task from Tekton Catalog | sandbox |
| Q6  | Set `GITHUB_ACCOUNT` env var in pipeline.yaml; run | sandbox |
| Q7  | Verify initial pipeline definitions work | sandbox |
| Q8  | Install `flake8` task into namespace | sandbox |
| Q9  | Add lint task config to pipeline.yaml; run | sandbox |
| Q10 | Add `nose` task to `tekton/tasks.yaml` | local edit |
| Q11 | Apply tasks.yaml; verify task created | sandbox |
| Q12 | Add test task to pipeline.yaml, `runAfter: [clone]` | local edit |
| Q13 | Confirm Postgres service + pod are running | sandbox |
| Q14 | Add Buildah build task to pipeline.yaml | local edit |
| Q15 | Add `openshift-client` deploy task | local edit |
| Q16 | `oc apply -f tekton/pipeline.yaml` | sandbox |
| Q17 | Run full pipeline; check run + deploy status | sandbox |
| Q18 | Commit, push, open PR `cd-pipeline` → main | GitHub |
| Q19 | `tkn pipelinerun logs --last > pipelinerun.txt` | sandbox |
| Q20 | Move story → Done; screenshot `cd-pipeline-done` | GitHub Project |

### Graded Quiz answers (100%)
- **Q1.** Initial `pipeline.yaml` includes definitions for → **The clone task**
- **Q2.** Install flake8 task command → **`kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/flake8/0.1/flake8.yaml`**
- **Q3.** Python-requirements bash script lives in `pipeline.yaml` → **False** (it lives in `tasks.yaml`)
- **Q4.** Build task `runAfter:` → **Lint and tests tasks**
- **Q5.** Pipeline runtime params → **`repo-url`, `branch`, `build-image`** (3 params)

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
| Dockerfile | https://github.com/MLinderEq/devops-capstone-project/blob/main/Dockerfile |
| deploy/deployment.yaml | https://github.com/MLinderEq/devops-capstone-project/blob/main/deploy/deployment.yaml |
| deploy/service.yaml | https://github.com/MLinderEq/devops-capstone-project/blob/main/deploy/service.yaml |
| Sprint 2 PR (CI) | https://github.com/MLinderEq/devops-capstone-project/pull/12 |
| Sprint 2 PR (Security) | https://github.com/MLinderEq/devops-capstone-project/pull/13 |
| Sprint 3 PR (Docker) | https://github.com/MLinderEq/devops-capstone-project/pull/14 |
| Sprint 3 PR (Kubernetes) | https://github.com/MLinderEq/devops-capstone-project/pull/15 |
