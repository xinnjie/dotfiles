# listening 提供当前监听着的端口
function listening
    switch (count $argv)
        case 0
            sudo lsof -iTCP -sTCP:LISTEN -n -P
        case 1
            sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $argv[1]
        case '*'
            echo 'Usage: listening [pattern]'
            return 2
    end
end
