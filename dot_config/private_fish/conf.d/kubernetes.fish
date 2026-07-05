alias k 'kubectl'
alias kkui 'kubectl kui'
alias kcurl 'kubectl run --image=curlimages/curl --rm -it --image-pull-policy=IfNotPresent --restart=Never curly -- curl'
alias kbusybox 'kubectl run --image=busybox --rm -it --image-pull-policy=IfNotPresent --restart=Never busybox --'

function tklog
    kubectl -n tekton-pipelines logs (kubectl -n tekton-pipelines get pods -l app=tekton-pipelines-controller -o name)
end

if type -q kubectl
    complete --command k --wraps kubectl
    complete --command kkui --wraps kubectl
end
