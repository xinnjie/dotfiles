alias argo 'argocd --argocd-context tencent-port-forward --port-forward --port-forward-namespace argocd'

if type -q argocd
    complete --command argo --wraps argocd
end
