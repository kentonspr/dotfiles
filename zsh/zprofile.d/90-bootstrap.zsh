# Run scripts in $HOME/.bootstrap.d that are executable.
# Changes scripts to non executable after run.
if [ -e $HOME/.bootstrap.d ]; then
    for i in $(find ${HOME}/.bootstrap.d -type f -executable -name '*.sh'|sort); do
        echo "$(date) - Executing ${i}" >> $HOME/.bootstrap.d/shell-script.log

        ${i} >> ${HOME}/.bootstrap.d/shell-script.log 2>&1
        chmod 644 ${i}

        echo "$(date) - END of ${i}\n" >> $HOME/.bootstrap.d/shell-script.log
    done
fi
