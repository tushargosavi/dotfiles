# My configuration files

## nvim

### Additional software requirements

```
pip3 install pynvim
pip2 install pynvim
```

```bash
nvim +PlugInstall +UpdateRemotePlugins +qall
```

or open nvim, and issue following commands.

	:PlugInstall
	:UpdateRemotePlugins


Check helth of installation using :checkhealth and resolve any issues, you can ignore ruby and node part.

Install COC plugins
```
:CocInstall coc-json
:CocInstall coc-tsserver
:CocInstall coc-rls
```

Install Language server for c
```
apt install ccls
```


