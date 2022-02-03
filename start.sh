if [[ -n $CONFIG_URL ]]; then
	wget -q $CONFIG_URL -O config.env
fi

if [[ -n $TOKEN_PICKLE_URL ]]; then
	wget -q $TOKEN_PICKLE_URL -O token.pickle
fi

if [[ -n $ACCOUNTS_ZIP_URL ]]; then
	wget -q $ACCOUNTS_ZIP_URL -O accounts.zip
	unzip -q -o accounts.zip
	rm accounts.zip
fi

MirrorX
