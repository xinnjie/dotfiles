alias tf 'terraform'

if type -q terraform
    complete --command tf --wraps terraform
end
